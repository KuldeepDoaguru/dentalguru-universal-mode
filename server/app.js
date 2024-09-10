const express = require("express");
const dotenv = require("dotenv");
const cors = require("cors");
const cron = require('node-cron');
const path = require("path");
const { join } = require("path");

// Load environment variables
dotenv.config();

// Import routes and cron tasks
const receptionist_Routes = require("./routes/receptionist_Routes");
const { sendEmails, sendSMS, sendWhatsappTextOnly } = require("./cron/sendAppointmentEmails");
const { zipLogs } = require("./scheduler");

// Initialize Express app
const app = express();

// Middleware
app.use(cors());
app.use(express.json());

// Static files
app.use(express.static(join(__dirname, "build")));
app.use("/prescription", express.static(path.join(__dirname, "prescription")));

// Routes
app.get("/", (req, res) => {
  res.send("<h1>Welcome to Dental Guru app</h1>");
});

app.use('/api/v1/receptionist', receptionist_Routes);

app.get("*", (req, res, next) => {
  // Serve React HTML file for non-API routes
  if (!req.url.startsWith("/api")) {
    return res.sendFile(join(__dirname, "build", "index.html"));
  }
  next();
});

// Schedule the cron job to send appointment emails at 8:00 AM every day
cron.schedule('0 8 * * *', () => {
  console.log('Sending emails for appointments scheduled for today...');
  sendEmails();
  sendSMS();
  sendWhatsappTextOnly();
}, {
  scheduled: true,
  timezone: process.env.TimeZone
});

// Schedule the cron job to zip logs at midnight every day
cron.schedule("0 0 * * *", () => {
  zipLogs();
});

// Error handling (optional but recommended)
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something went wrong!');
});

// Start the server
const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
