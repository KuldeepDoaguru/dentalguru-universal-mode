const express = "express";
const dotenv = require("dotenv");
const bcrypt = require("bcrypt");
const nodemailer = require("nodemailer");
const JWT = require("jsonwebtoken");
const { db } = require("../dbConnect/connect");
const fs = require("fs");
const path = require("path");
const { log } = require("console");
const moment = require("moment-timezone");

dotenv.config();

const PORT = process.env.PORT;

const getAttendanceDetails = (req, res) => {
  try {
    const branch = req.params.branch;
    const selectQuery = `SELECT
    employee_ID,
    emp_name,
    employee_designation,
    branch,
    DATE_FORMAT(date, '%b %d') AS attendance_date,
    MAX(CASE WHEN allday_shift_login_time IS NOT NULL THEN TIME_FORMAT(allday_shift_login_time, '%H:%i:%s') ELSE null END) AS allday_shift_login_time,
    MAX(CASE WHEN allday_shift_logout_time IS NOT NULL THEN TIME_FORMAT(allday_shift_logout_time, '%H:%i:%s') ELSE null END) AS allday_shift_logout_time,
    MAX(CASE WHEN morning_shift_login_time IS NOT NULL THEN TIME_FORMAT(morning_shift_login_time, '%H:%i:%s') ELSE null END) AS morning_shift_login_time,
    MAX(CASE WHEN morning_shift_logout_time IS NOT NULL THEN TIME_FORMAT(morning_shift_logout_time, '%H:%i:%s') ELSE null END) AS morning_shift_logout_time,
    MAX(CASE WHEN evening_shift_login_time IS NOT NULL THEN TIME_FORMAT(evening_shift_login_time, '%H:%i:%s') ELSE null END) AS evening_shift_login_time,
    MAX(CASE WHEN evening_shift_logout_time IS NOT NULL THEN TIME_FORMAT(evening_shift_logout_time, '%H:%i:%s') ELSE null END) AS evening_shift_logout_time,
    GROUP_CONCAT(DISTINCT attendance_id ORDER BY attendance_id SEPARATOR ',') AS attendance_ids,
    GROUP_CONCAT(DISTINCT availability ORDER BY attendance_id SEPARATOR ',') AS availabilities
FROM employee_attendance
GROUP BY employee_ID, DATE_FORMAT(date, '%b %d')
ORDER BY date
`;
    db.query(selectQuery, branch, (err, results) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(results);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: "Internal Server Error" });
  }
};

const downloadAttendanceReportByTime = (req, res) => {
  try {
    const branch = req.params.branch;
    const { fromDate, toDate } = req.body;
    const selectQuery =
      "SELECT * FROM employee_attendance WHERE branch = ? AND date >= ? AND date <= ?";
    db.query(selectQuery, [branch, fromDate, toDate], (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: "Internal server error" });
  }
};

const getBranchDetailsByBranch = (req, res) => {
  try {
    const branch = req.params.branch;
    const selectQuery = "SELECT * FROM branches WHERE branch_name = ?";
    db.query(selectQuery, branch, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: "Internal server error" });
  }
};

const updateBranchCalenderSetting = (req, res) => {
  try {
    const branch = req.params.branch;
    const { open_time, close_time, appoint_slot_duration } = req.body;
    const selectQuery = "SELECT * FROM branches WHERE branch_name = ?";
    db.query(selectQuery, branch, (err, result) => {
      if (err) {
        return res.status(400).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        const updateFields = [];
        const updateValues = [];

        if (open_time) {
          updateFields.push("open_time = ?");
          updateValues.push(open_time);
        }

        if (close_time) {
          updateFields.push("close_time = ?");
          updateValues.push(close_time);
        }

        if (appoint_slot_duration) {
          updateFields.push("appoint_slot_duration = ?");
          updateValues.push(appoint_slot_duration);
        }

        const updateQuery = `UPDATE branches SET ${updateFields.join(
          ", "
        )} WHERE branch_name = ?`;

        db.query(updateQuery, [...updateValues, branch], (err, result) => {
          if (err) {
            return res.status(500).json({
              success: false,
              message: "Failed to update details",
            });
          } else {
            return res.status(200).json({
              success: true,
              message: "Branch Details updated successfully",
            });
          }
        });
      } else {
        return res.status(404).json({
          success: false,
          message: "Branch not found",
        });
      }
    });
  } catch (error) {
    console.log(error);
    res.status(400).json({ success: false, message: error.message });
  }
};

const addBlockDays = (req, res) => {
  try {
    const {
      branch_name,
      holiday_name,
      holiday_date,
      holiday_start_time,
      holiday_end_time,
      notes,
    } = req.body;
    const selectQuery = "SELECT * FROM holidays WHERE holiday_date = ?";
    db.query(selectQuery, holiday_date, (err, result) => {
      if (err) {
        return res.status(400).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        return res.status(400).send("Holiday already exists");
      } else {
        const insertQuery =
          "INSERT INTO holidays (branch_name, holiday_name, holiday_date, holiday_start_time, holiday_end_time, notes) VALUES (?,?,?,?,?,?)";
        db.query(
          insertQuery,
          [
            branch_name,
            holiday_name,
            holiday_date,
            holiday_start_time,
            holiday_end_time,
            notes,
          ],
          (err, result) => {
            if (err) {
              return res
                .status(400)
                .json({ success: false, message: err.message });
            }
            return res.status(200).send(result);
          }
        );
      }
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const getHolidays = (req, res) => {
  try {
    const branch = req.params.branch;
    const selectQuery = "SELECT * FROM holidays WHERE branch_name = ?";
    db.query(selectQuery, branch, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const updateHolidays = (req, res) => {
  try {
    const hid = req.params.hid;
    const {
      holiday_name,
      holiday_date,
      holiday_start_time,
      holiday_end_time,
      notes,
    } = req.body;
    const selectQuery = "SELECT * FROM holidays WHERE holiday_id = ?";
    db.query(selectQuery, hid, (err, result) => {
      if (err) {
        res.status(500).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        const updateFields = [];
        const updateValues = [];

        if (holiday_name) {
          updateFields.push("holiday_name = ?");
          updateValues.push(holiday_name);
        }

        if (holiday_date) {
          updateFields.push("holiday_date = ?");
          updateValues.push(holiday_date);
        }

        if (holiday_start_time) {
          updateFields.push("holiday_start_time = ?");
          updateValues.push(holiday_start_time);
        }

        if (holiday_end_time) {
          updateFields.push("holiday_end_time = ?");
          updateValues.push(holiday_end_time);
        }

        if (notes) {
          updateFields.push("notes = ?");
          updateValues.push(notes);
        }

        const updateQuery = `UPDATE holidays SET ${updateFields.join(
          ", "
        )} WHERE holiday_id = ?`;

        db.query(updateQuery, [...updateValues, hid], (err, result) => {
          if (err) {
            return res.status(500).json({
              success: false,
              message: "Failed to update details",
            });
          } else {
            return res.status(200).json({
              success: true,
              message: "Holiday Details updated successfully",
            });
          }
        });
      } else {
        return res.status(404).json({
          success: false,
          message: "holiday ID not found",
        });
      }
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const deleteHolidays = (req, res) => {
  try {
    const hid = req.params.hid;
    const deleteQuery = "DELETE FROM holidays WHERE holiday_id = ?";
    db.query(deleteQuery, hid, (err, result) => {
      if (err) {
        return res.status(400).json({ success: false, message: err.message });
      }
      return res
        .status(200)
        .json({ success: true, message: "Holiday deleted successfully" });
    });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ success: false, message: error.message });
  }
};

const addDrugs = (req, res) => {
  try {
    const {
      HSN_code,
      item_code,
      drug_name,
      drug_strength,
      instruction,
      branch_name,
    } = req.body;
    const selectQuery = "SELECT * FROM drugs WHERE item_code = ?";
    db.query(selectQuery, item_code, (err, result) => {
      if (err) {
        return res.status(400).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        return res.status(400).send("drugs already exists");
      } else {
        const insertQuery =
          "INSERT INTO drugs (HSN_code, item_code, drug_name, drug_strength, instruction, branch_name) VALUES (?,?,?,?,?,?)";
        db.query(
          insertQuery,
          [
            HSN_code,
            item_code,
            drug_name,
            drug_strength,
            instruction,
            branch_name,
          ],
          (err, result) => {
            if (err) {
              return res
                .status(400)
                .json({ success: false, message: err.message });
            }
            return res.status(200).send(result);
          }
        );
      }
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const getDrugs = (req, res) => {
  try {
    const branch = req.params.branch;
    const selectQuery = "SELECT * FROM drugs WHERE branch_name = ?";
    db.query(selectQuery, branch, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const updateDrugDetails = (req, res) => {
  try {
    const did = req.params.did;
    const { HSN_code, item_code, drug_name, drug_strength, instruction } =
      req.body;
    const selectQuery = "SELECT * FROM drugs WHERE drug_id = ?";
    db.query(selectQuery, did, (err, result) => {
      if (err) {
        res.status(500).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        const updateFields = [];
        const updateValues = [];

        if (HSN_code) {
          updateFields.push("HSN_code = ?");
          updateValues.push(HSN_code);
        }

        if (item_code) {
          updateFields.push("item_code = ?");
          updateValues.push(item_code);
        }

        if (drug_name) {
          updateFields.push("drug_name = ?");
          updateValues.push(drug_name);
        }

        if (drug_strength) {
          updateFields.push("drug_strength = ?");
          updateValues.push(drug_strength);
        }

        if (instruction) {
          updateFields.push("instruction = ?");
          updateValues.push(instruction);
        }

        const updateQuery = `UPDATE drugs SET ${updateFields.join(
          ", "
        )} WHERE drug_id = ?`;

        db.query(updateQuery, [...updateValues, did], (err, result) => {
          if (err) {
            return res.status(500).json({
              success: false,
              message: "Failed to update details",
            });
          } else {
            return res.status(200).json({
              success: true,
              message: "Drug Details updated successfully",
            });
          }
        });
      } else {
        return res.status(404).json({
          success: false,
          message: "Drug ID not found",
        });
      }
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const deleteDrug = (req, res) => {
  try {
    const did = req.params.did;
    const deleteQuery = "DELETE FROM drugs WHERE drug_id = ?";
    db.query(deleteQuery, did, (err, result) => {
      if (err) {
        return res.status(400).json({ success: false, message: err.message });
      }
      return res
        .status(200)
        .json({ success: true, message: "drug deleted successfully" });
    });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ success: false, message: error.message });
  }
};

const getPrescription = (req, res) => {
  try {
    const branch = req.params.branch;
    const selectQuery =
      "SELECT * FROM clinic_prescription WHERE branch_name = ?";
    db.query(selectQuery, branch, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const addPrescription = (req, res) => {
  try {
    const { branch_name, medicine_name, dosage, frequency, duration, notes } =
      req.body;
    const selectQuery =
      "SELECT * FROM clinic_prescription WHERE medicine_name = ?";
    db.query(selectQuery, medicine_name, (err, result) => {
      if (err) {
        return res.status(400).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        return res.status(400).send("medicine already exists");
      } else {
        const insertQuery =
          "INSERT INTO clinic_prescription (branch_name, medicine_name, dosage, frequency, duration, notes) VALUES (?,?,?,?,?,?)";
        db.query(
          insertQuery,
          [branch_name, medicine_name, dosage, frequency, duration, notes],
          (err, result) => {
            if (err) {
              return res
                .status(400)
                .json({ success: false, message: err.message });
            }
            return res.status(200).send(result);
          }
        );
      }
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const updatePrescriptionDetails = (req, res) => {
  try {
    const prid = req.params.prid;
    const { medicine_name, dosage, frequency, duration, notes } = req.body;
    const selectQuery = "SELECT * FROM clinic_prescription WHERE pr_id = ?";
    db.query(selectQuery, prid, (err, result) => {
      if (err) {
        res.status(500).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        const updateFields = [];
        const updateValues = [];

        if (medicine_name) {
          updateFields.push("medicine_name = ?");
          updateValues.push(medicine_name);
        }

        if (dosage) {
          updateFields.push("dosage = ?");
          updateValues.push(dosage);
        }

        if (frequency) {
          updateFields.push("frequency = ?");
          updateValues.push(frequency);
        }

        if (duration) {
          updateFields.push("duration = ?");
          updateValues.push(duration);
        }

        if (notes) {
          updateFields.push("notes = ?");
          updateValues.push(notes);
        }

        const updateQuery = `UPDATE clinic_prescription SET ${updateFields.join(
          ", "
        )} WHERE pr_id = ?`;

        db.query(updateQuery, [...updateValues, prid], (err, result) => {
          if (err) {
            return res.status(500).json({
              success: false,
              message: "Failed to update details",
            });
          } else {
            return res.status(200).json({
              success: true,
              message: "Prescription Details updated successfully",
            });
          }
        });
      } else {
        return res.status(404).json({
          success: false,
          message: "Drug ID not found",
        });
      }
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const getPrescriptionById = (req, res) => {
  try {
    const prid = req.params.prid;

    const selectQuery = "SELECT * FROM clinic_prescription WHERE pr_id = ?";
    db.query(selectQuery, prid, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const deletePrescription = (req, res) => {
  try {
    const prid = req.params.prid;
    const deleteQuery = "DELETE FROM clinic_prescription WHERE pr_id = ?";
    db.query(deleteQuery, prid, (err, result) => {
      if (err) {
        return res.status(400).json({ success: false, message: err.message });
      }
      return res
        .status(200)
        .json({ success: true, message: "prescription deleted successfully" });
    });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ success: false, message: error.message });
  }
};

const deleteTreatment = (req, res) => {
  try {
    const tid = req.params.tid;
    const deleteQuery = "DELETE FROM treatment_list WHERE treatment_id = ?";
    db.query(deleteQuery, tid, (err, result) => {
      if (err) {
        return res.status(400).json({ success: false, message: err.message });
      }
      return res
        .status(200)
        .json({ success: true, message: "Treatment deleted successfully" });
    });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ success: false, message: error.message });
  }
};

const addNotifyCommunication = (req, res) => {
  try {
    const { notification_tag, notification_msg, sms, email, whatsapp } =
      req.body;
    const selectQuery =
      "SELECT * FROM appointment_notification WHERE notification_tag = ?";
    db.query(selectQuery, notification_tag, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        return res.status(400).send("this notification already exists");
      } else {
        const insertQuery =
          "INSERT INTO appointment_notification (notification_tag, notification_msg, sms, email, whatsapp) VALUES (?,?,?,?,?)";
        db.query(
          insertQuery,
          [notification_tag, notification_msg, sms, email, whatsapp],
          (err, result) => {
            if (err) {
              return res
                .status(400)
                .json({ success: false, message: err.message });
            }
            return res.status(200).send(result);
          }
        );
      }
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const getNotifyList = (req, res) => {
  try {
    const selectQuery = "SELECT * FROM appointment_notification";
    db.query(selectQuery, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const updateNotifyTagsDetails = (req, res) => {
  try {
    const ntid = req.params.ntid;
    const { notification_tag, notification_msg, sms, email, whatsapp } =
      req.body;
    const selectQuery =
      "SELECT * FROM appointment_notification WHERE notify_id = ?";
    db.query(selectQuery, ntid, (err, result) => {
      if (err) {
        res.status(500).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        const updateFields = [];
        const updateValues = [];

        if (notification_tag) {
          updateFields.push("notification_tag = ?");
          updateValues.push(notification_tag);
        }

        if (notification_msg) {
          updateFields.push("notification_msg = ?");
          updateValues.push(notification_msg);
        }

        if (sms) {
          updateFields.push("sms = ?");
          updateValues.push(sms);
        }

        if (email) {
          updateFields.push("email = ?");
          updateValues.push(email);
        }

        if (whatsapp) {
          updateFields.push("whatsapp = ?");
          updateValues.push(whatsapp);
        }

        const updateQuery = `UPDATE appointment_notification SET ${updateFields.join(
          ", "
        )} WHERE notify_id = ?`;

        db.query(updateQuery, [...updateValues, ntid], (err, result) => {
          if (err) {
            return res.status(500).json({
              success: false,
              message: "Failed to update details",
            });
          } else {
            return res.status(200).json({
              success: true,
              message: "Notification Tags Details updated successfully",
            });
          }
        });
      } else {
        return res.status(404).json({
          success: false,
          message: "ID not found",
        });
      }
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const deleteNotifyTags = (req, res) => {
  try {
    const ntid = req.params.ntid;
    const deleteQuery =
      "DELETE FROM appointment_notification WHERE notify_id = ?";
    db.query(deleteQuery, ntid, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const addSuperAdminNotify = (req, res) => {
  try {
    const { title, branch, event_msg, open, status } = req.body;
    const insertQuery =
      "INSERT INTO employee_timeline (title, branch_name, event_msg,	open,	status) VALUES (?,?,?,?, ?)";
    db.query(
      insertQuery,
      [title, branch, event_msg, open, status],
      (err, result) => {
        if (err) {
          res.status(400).json({ success: false, message: err.message });
        }
        res.status(200).send(result);
      }
    );
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const getSuperAdminNotify = (req, res) => {
  try {
    const selectQuery = "SELECT * FROM employee_timeline";
    db.query(selectQuery, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const markRead = (req, res) => {
  try {
    const snid = req.params.snid;
    const read = "read";
    const selectQuery = "SELECT * FROM employee_timeline WHERE event_id = ?";
    db.query(selectQuery, snid, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        const updateQuery =
          "UPDATE employee_timeline SET status=? WHERE event_id = ?";
        db.query(updateQuery, [read, snid], (err, result) => {
          if (err) {
            res.status(400).json({ success: false, message: err.message });
          }
          res.status(200).send(result);
        });
      } else {
        return res.status(404).json({
          success: false,
          message: "ID not found",
        });
      }
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const getComplainById = (req, res) => {
  try {
    const cid = req.params.cid;
    const selectQuery =
      "SELECT * FROM employee_complaints WHERE complain_id = ?";
    db.query(selectQuery, cid, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const updateComplaints = (req, res) => {
  try {
    const cid = req.params.cid;
    const { status, solved_on } = req.body;
    const selectQuery =
      "SELECT * FROM employee_complaints WHERE complain_id = ?";
    db.query(selectQuery, cid, (err, result) => {
      if (err) {
        return res.status(400).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        const updateFields = [];
        const updateValues = [];

        if (status) {
          updateFields.push("status = ?");
          updateValues.push(status);
        }

        if (solved_on) {
          updateFields.push("solved_on = ?");
          updateValues.push(solved_on);
        }

        const updateQuery = `UPDATE employee_complaints SET ${updateFields.join(
          ", "
        )} WHERE complain_id = ?`;

        db.query(updateQuery, [...updateValues, cid], (err, result) => {
          if (err) {
            return res.status(500).json({
              success: false,
              message: "Failed to update details",
            });
          } else {
            return res.status(200).json({
              success: true,
              message: "Complain updated successfully",
            });
          }
        });
      } else {
        return res.status(404).json({
          success: false,
          message: "ID not found",
        });
      }
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: error.message });
  }
};

const downloadEmployeeComplaintReport = (req, res) => {
  try {
    const branch = req.params.branch;
    const selectQuery =
      "SELECT * FROM employee_complaints WHERE branch_name = ?";
    db.query(selectQuery, branch, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ success: false, message: "Internal server error" });
  }
};

const updateDoctorPaymentAllowSetting = (req, res) => {
  try {
    const branch = req.params.branch;
    const {
      doctor_payment,
      allow_insurance,
      sharewhatsapp,
      sharemail,
      sharesms,
      currencyName,
      currencySymbol,
      curTimezone,
    } = req.body;
    const selectQuery = "SELECT * FROM branches WHERE branch_name = ?";
    db.query(selectQuery, branch, (err, result) => {
      if (err) {
        return res.status(400).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        const updateFields = [];
        const updateValues = [];

        if (doctor_payment) {
          updateFields.push("doctor_payment = ?");
          updateValues.push(doctor_payment);
        }

        if (allow_insurance) {
          updateFields.push("allow_insurance = ?");
          updateValues.push(allow_insurance);
        }

        if (sharewhatsapp) {
          updateFields.push("sharewhatsapp = ?");
          updateValues.push(sharewhatsapp);
        }

        if (sharemail) {
          updateFields.push("sharemail = ?");
          updateValues.push(sharemail);
        }

        if (sharesms) {
          updateFields.push("sharesms = ?");
          updateValues.push(sharesms);
        }

        if (currencyName) {
          updateFields.push("branch_currency = ?");
          updateValues.push(currencyName);
        }

        if (currencySymbol) {
          updateFields.push("currency_symbol = ?");
          updateValues.push(currencySymbol);
        }

        if (curTimezone) {
          updateFields.push("timezone = ?");
          updateValues.push(curTimezone);
        }

        const updateQuery = `UPDATE branches SET ${updateFields.join(
          ", "
        )} WHERE branch_name = ?`;

        db.query(updateQuery, [...updateValues, branch], (err, result) => {
          if (err) {
            return res.status(500).json({
              success: false,
              message: "Failed to update details",
            });
          } else {
            return res.status(200).json({
              success: true,
              message: "Branch Details updated successfully",
            });
          }
        });
      } else {
        return res.status(404).json({
          success: false,
          message: "Branch not found",
        });
      }
    });
  } catch (error) {
    console.log(error);
    res.status(400).json({ success: false, message: error.message });
  }
};

const addInsuranceCompany = (req, res) => {
  const dateTime = moment().tz("Asia/Kolkata").format("DD-MM-YYYY HH:mm:ss");
  try {
    const branch = req.params.branch;
    const { companyname, category, status } = req.body;
    const selectQuery =
      "SELECT * FROM insurance_company WHERE branch_name = ? AND companyname = ?";
    db.query(selectQuery, [branch, companyname], (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        res.status(400).json({
          success: false,
          message: "insurance company already exists",
        });
      } else {
        const insertQuery =
          "INSERT INTO insurance_company (branch_name, companyname, category, status, added_date) VALUES (?,?,?,?, ?)";
        const insertParams = [branch, companyname, category, status, dateTime];
        db.query(insertQuery, insertParams, (err, result) => {
          if (err) {
            res.status(400).json({ success: false, message: err.message });
          }
          res
            .status(200)
            .json({ success: true, message: "data added successfully" });
        });
      }
    });
  } catch (error) {
    res.status(500).json({ success: false, message: "internal server error" });
  }
};

const getInsuranceList = (req, res) => {
  try {
    const branch = req.params.branch;
    const selectQuery = "SELECT * FROM insurance_company WHERE branch_name = ?";
    db.query(selectQuery, branch, (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      res.status(200).send(result);
    });
  } catch (error) {
    res.status(500).json({ success: false, message: "internal server error" });
  }
};

const updateInsuranceDetails = (req, res) => {
  try {
    const ins = req.params.ins;
    const branch = req.params.branch;
    const { companyname, category, status } = req.body;
    const selectQuery =
      "SELECT * FROM insurance_company WHERE ins_id = ? AND branch_name = ?";
    db.query(selectQuery, [ins, branch], (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        const updateFields = [];
        const updateValues = [];

        if (companyname) {
          updateFields.push("companyname = ?");
          updateValues.push(companyname);
        }

        if (category) {
          updateFields.push("category = ?");
          updateValues.push(category);
        }

        if (status) {
          updateFields.push("status = ?");
          updateValues.push(status);
        }

        const updateQuery = `UPDATE insurance_company SET ${updateFields.join(
          ", "
        )} WHERE ins_id = ? AND branch_name = ?`;

        db.query(updateQuery, [...updateValues, ins, branch], (err, result) => {
          if (err) {
            return res.status(500).json({
              success: false,
              message: "Failed to update details",
            });
          } else {
            return res.status(200).json({
              success: true,
              message: "Branch Details updated successfully",
            });
          }
        });
      } else {
        res.status(400).json({ success: false, message: err.message });
      }
    });
  } catch (error) {
    res.status(500).json({ success: false, message: "internal server error" });
  }
};

const deleteInsurance = (req, res) => {
  try {
    const ins = req.params.ins;
    const branch = req.params.branch;
    const selectQuery =
      "SELECT * FROM insurance_company WHERE ins_id = ? AND branch_name = ?";
    db.query(selectQuery, [ins, branch], (err, result) => {
      if (err) {
        res.status(400).json({ success: false, message: err.message });
      }
      if (result && result.length > 0) {
        const deleteQuery =
          "DELETE FROM insurance_company WHERE ins_id = ? AND branch_name = ?";
        db.query(deleteQuery, [ins, branch], (err, result) => {
          if (err) {
            res.status(400).json({ success: false, message: err.message });
          }
          res
            .status(200)
            .json({ success: true, message: "Successfully deleted" });
        });
      } else {
        res
          .status(400)
          .json({ success: false, message: "insurance not found" });
      }
    });
  } catch (error) {
    res.status(500).json({ success: false, message: "internal server error" });
  }
};

module.exports = {
  getAttendanceDetails,
  downloadAttendanceReportByTime,
  getBranchDetailsByBranch,
  updateBranchCalenderSetting,
  addBlockDays,
  getHolidays,
  updateHolidays,
  deleteHolidays,
  addDrugs,
  getDrugs,
  updateDrugDetails,
  deleteDrug,
  addPrescription,
  getPrescription,
  updatePrescriptionDetails,
  getPrescriptionById,
  deletePrescription,
  deleteTreatment,
  addNotifyCommunication,
  getNotifyList,
  updateNotifyTagsDetails,
  deleteNotifyTags,
  addSuperAdminNotify,
  getSuperAdminNotify,
  markRead,
  getComplainById,
  updateComplaints,
  downloadEmployeeComplaintReport,
  updateDoctorPaymentAllowSetting,
  addInsuranceCompany,
  getInsuranceList,
  updateInsuranceDetails,
  deleteInsurance,
};
