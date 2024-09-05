const express = require("express");
const dotenv = require("dotenv");
const cors = require("cors");
const {authRoutes} = require("./router/authRouter");
const { zipLogs } = require("./scheduler");
const { join, dirname } = require("path");


dotenv.config();
// Create Express app
const app = express();

// Middlewares
app.use(cors());
app.use(express.json());

// Serve Static files
app.use(express.static(join(__dirname, "build")));

app.get("*", (req, res, next) => {
  // If the request is for an API route, skip serving the React HTML file
  if (req.url.startsWith("/api")) {
    return next();
  }

  // Otherwise, serve the React HTML file
  res.sendFile(join(__dirname, "build", "index.html"));
});

// REST API Routes
app.use("/api/lab", authRoutes);

// PORT
const PORT = process.env.PORT || 8888;

// Run server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
zipLogs();

// run listen