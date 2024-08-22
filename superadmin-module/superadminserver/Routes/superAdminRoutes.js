const express = require("express");
const multer = require("multer");
const fs = require("fs");
const path = require("path");
const {
  EnrollEmployee,
  EditEmployeeDetails,
  getEmployeeData,
  superAdminLoginUser,
  sendOtp,
  verifyOtp,
  getBranch,
  makeAppointents,
  appointmentData,
  getAvailableEmp,
  addTreatment,
  getTreatmentList,
  updateTreatmentDetails,
  getPatientDetailsByBranch,
  purchaseInventory,
  getPurInventoryByBranch,
  addEmployeeComplain,
  getEmployeeComplainByBranch,
  updateAppointData,
  deleteAppointData,
  getEmployeeDataByBranch,
  getEmployeeDataByBranchAndId,
  resetPassword,
  sendOtpForLogin,
  getDentalDataByTpid,
  prescriptionOnMail,
  sendWhatsapp,
  sendSMS,
} = require("../controllers/superAdminController");
const {
  makeBills,
  getBillsByBranch,
  deleteBills,
  getPurchaseBillByBranch,
  getPurchaseInvByPurId,
  updatePurInvoice,
  deletePurInvoice,
  editEmployeeDetails,
  getPatientDataByBranchAndId,
  getPatientBillByBranchAndId,
  getAppointmentByBranchAndId,
  examinDetailsByPatId,
  getPaymentDetailsByPatId,
  getPrescriptionDetailsById,
  insertTimelineEvent,
  getPatientTimeline,
  addLab,
  updateBranchDetails,
  updateBillDetailsByBillId,
  getBillBYBillId,
  downloadBillRecById,
  downloadEarnReportByTime,
  downloadExpenseReportByTime,
  downloadAppointReportByTime,
  downloadBillingReportByTime,
  downloadStaffReport,
} = require("../controllers/BillSectionController");
const {
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
} = require("../controllers/attendanceController");
const {
  getTreatSuggest,
  getTreatmentViaUhid,
  getExaminationViaUhid,
  getPrescriptionViaUhid,
  getPatientBillUHID,
  getLeaveList,
  approveLeave,
  getLabList,
  updateLabDetails,
  labDelete,
  addLabTest,
  getLabTest,
  updateLabTestDetails,
  labTestDelete,
  getPatientLabTest,
  getPatientLabTestCompleted,
  getPatientLabTestByPatientId,
  getLabData,
  downloadLabReportByTime,
  downloadOPDReportByTime,
  getProcedureList,
  getTreatmentViaId,
  getSittingBill,
  getLabDetails,
  getSittingBillDueBySittingId,
  getPrescriptionList,
  getTreatPackageData,
  getAppointmentsWithPatientDetailsById,
  getTreatmentDataList,
  getTreatPrescriptionByAppointIdList,
} = require("../controllers/superTreatController");
// const multer = require("multer");
const authenticate = require("../middleware/authMiddleware.js");

const router = express.Router();

const profilePicturestorage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "empProfilePicture/");
  },
  filename: function (req, file, cb) {
    const uniqueSuffix = Date.now();
    cb(null, uniqueSuffix + file.originalname);
  },
});

const profilePictureupload = multer({ storage: profilePicturestorage });
router.post(
  "/enroll-employee",
  profilePictureupload.single("empProfilePicture"),
  authenticate,
  EnrollEmployee
);
router.put("/EditEmployeeDetails/:emp_id", authenticate, EditEmployeeDetails);
router.get("/getEmployeeDetails/:branch/:empId", getEmployeeDataByBranchAndId);
router.get(
  "/getEmployeeDataByBranch/:branch",
  authenticate,
  getEmployeeDataByBranch
);
router.post("/adminLoginUser", superAdminLoginUser);
router.post("/sendOtp", sendOtp);
router.post("/verifyOtp", verifyOtp);
router.get("/getBranch", getBranch);
router.post("/makeAppointents", authenticate, makeAppointents);
router.get("/getAppointmentData/:branch", authenticate, appointmentData);
router.get("/getAvailableEmp/:branch", authenticate, getAvailableEmp);
router.post("/addTreatment", authenticate, addTreatment);
router.get("/getTreatmentList", authenticate, getTreatmentList);
router.put("/updateTreatmentDetails/:id", authenticate, updateTreatmentDetails);
router.get(
  "/getPatientDetailsByBranch/:branch",
  authenticate,
  getPatientDetailsByBranch
);

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "reciept_doc/");
  },
  filename: function (req, file, cb) {
    const uniqueSuffix = Date.now();
    cb(null, uniqueSuffix + file.originalname);
  },
});

const upload = multer({ storage: storage });
router.post(
  "/purchaseInventory",
  upload.single("reciept_doc"),
  authenticate,
  purchaseInventory
);
router.get(
  "/getPurInventoryByBranch/:branch",
  authenticate,
  getPurInventoryByBranch
);
router.post("/addEmployeeComplain", authenticate, addEmployeeComplain);
router.get(
  "/getEmployeeComplainByBranch/:branch",
  authenticate,
  getEmployeeComplainByBranch
);
router.put("/updateAppointData/:id", authenticate, updateAppointData);
router.delete("/deleteAppointData/:id", authenticate, deleteAppointData);
router.put("/resetPassword", resetPassword);

// ************************************************************************************************
//bill and inventory routes
router.post("/makeBills", authenticate, makeBills);
router.get("/getBillsByBranch/:branch", authenticate, getBillsByBranch);
router.delete("/deleteBills/:id", authenticate, deleteBills);
router.get(
  "/getPurchaseInvByPurId/:branch/:id",
  authenticate,
  getPurchaseInvByPurId
);
router.put(
  "/updatePurInvoice/:branch/:id",
  upload.single("reciept_doc"),
  authenticate,
  updatePurInvoice
);

router.delete("/deletePurInvoice/:branch/:id", authenticate, deletePurInvoice);
router.put(
  "/editEmployeeDetails/:branch/:empID",
  profilePictureupload.single("empProfilePicture"),
  authenticate,
  editEmployeeDetails
);

router.get("/getPatientDataByBranchAndId/:pid", getPatientDataByBranchAndId);
router.get(
  "/getAppointmentsWithPatientDetailsById/:tpid",
  authenticate,
  getAppointmentsWithPatientDetailsById
);

router.get(
  "/getPatientBillByBranchAndId/:branch/:pid",
  authenticate,
  getPatientBillByBranchAndId
);
router.get(
  "/getAppointmentByBranchAndId/:pid",
  authenticate,
  getAppointmentByBranchAndId
);

router.get("/examinDetailsByPatId/:pid", authenticate, examinDetailsByPatId);
router.get(
  "/getPaymentDetailsByPatId/:pid",
  authenticate,
  getPaymentDetailsByPatId
);
router.get(
  "/getPrescriptionDetailsById/:pid",
  authenticate,
  getPrescriptionDetailsById
);
router.post("/insertTimelineEvent", authenticate, insertTimelineEvent);
router.get("/getPatientTimeline/:pid", authenticate, getPatientTimeline);
router.post("/addLab", authenticate, addLab);

const storagebranchHeadFootImg = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "branchHeadFootImg/");
  },
  filename: function (req, file, cb) {
    const uniqueSuffix = Date.now();
    cb(null, uniqueSuffix + file.originalname);
  },
});

const uploadbranchImg = multer({ storage: storagebranchHeadFootImg });
router.put(
  "/updateBranchDetails/:bid",
  uploadbranchImg.fields([
    { name: "head_img", maxCount: 1 },
    { name: "foot_img", maxCount: 1 },
  ]),
  authenticate,
  updateBranchDetails
);
router.put(
  "/updateBillDetailsByBillId/:bid",
  authenticate,
  updateBillDetailsByBillId
);
router.get("/getBillBYBillId/:bid", authenticate, getBillBYBillId);
router.get("/downloadBillRecById/:file", authenticate, downloadBillRecById);
router.post(
  "/downloadEarnReportByTime/:branch",
  authenticate,
  downloadEarnReportByTime
);
router.post(
  "/downloadExpenseReportByTime/:branch",
  authenticate,
  downloadExpenseReportByTime
);
router.post(
  "/downloadAppointReportByTime/:branch",
  authenticate,
  downloadAppointReportByTime
);
router.post(
  "/downloadBillingReportByTime/:branch",
  authenticate,
  downloadBillingReportByTime
);

router.post("/downloadStaffReport/:branch", authenticate, downloadStaffReport);

//**************************************************************************************************** */
//Attendance routes

router.get("/getAttendanceDetails/:branch", authenticate, getAttendanceDetails);
router.post(
  "/downloadAttendanceReportByTime/:branch",
  authenticate,
  downloadAttendanceReportByTime
);
router.get(
  "/getBranchDetailsByBranch/:branch",
  authenticate,
  getBranchDetailsByBranch
);
router.put(
  "/updateBranchCalenderSetting/:branch",
  authenticate,
  updateBranchCalenderSetting
);
router.put(
  "/updateDoctorPaymentAllowSetting/:branch",
  authenticate,
  updateDoctorPaymentAllowSetting
);
router.post("/addBlockDays", authenticate, addBlockDays);
router.get("/getHolidays/:branch", authenticate, getHolidays);
router.put("/updateHolidays/:hid", authenticate, updateHolidays);
router.delete("/deleteHolidays/:hid", authenticate, deleteHolidays);
router.post("/addDrugs", authenticate, addDrugs);
router.get("/getDrugs/:branch", authenticate, getDrugs);
router.put("/updateDrugDetails/:did", authenticate, updateDrugDetails);
router.delete("/deleteDrug/:did", authenticate, deleteDrug);
router.post("/addPrescription", authenticate, addPrescription);
router.get("/getPrescription/:branch", authenticate, getPrescription);
router.put(
  "/updatePrescriptionDetails/:prid",
  authenticate,
  updatePrescriptionDetails
);
router.get("/getPrescriptionById/:prid", authenticate, getPrescriptionById);
router.delete("/deletePrescription/:prid", authenticate, deletePrescription);
router.delete("/deleteTreatment/:tid", authenticate, deleteTreatment);
router.post("/addNotifyCommunication", authenticate, addNotifyCommunication);
router.get("/getNotifyList", authenticate, getNotifyList);
router.put(
  "/updateNotifyTagsDetails/:ntid",
  authenticate,
  updateNotifyTagsDetails
);
router.delete("/deleteNotifyTags/:ntid", authenticate, deleteNotifyTags);
router.post("/addSuperAdminNotify", authenticate, addSuperAdminNotify);
router.get("/getSuperAdminNotify", authenticate, getSuperAdminNotify);
router.put("/markRead/:snid", authenticate, markRead);
router.get("/getComplainById/:cid", authenticate, getComplainById);
router.put("/updateComplaints/:cid", authenticate, updateComplaints);
router.post(
  "/downloadEmployeeComplaintReport/:branch",
  authenticate,
  downloadEmployeeComplaintReport
);

//**************************************************************************************************** */
//Treatment routes
router.get("/getTreatSuggest/:branch", authenticate, getTreatSuggest);
router.get(
  "/getTreatmentViaUhid/:branch/:uhid",
  authenticate,
  getTreatmentViaUhid
);
router.get(
  "/getExaminationViaUhid/:branch/:uhid",
  authenticate,
  getExaminationViaUhid
);
router.get(
  "/getPrescriptionViaUhid/:branch/:uhid",
  authenticate,
  getPrescriptionViaUhid
);
router.get(
  "/get-patientBill-data/:patientUHID",
  authenticate,
  getPatientBillUHID
);
router.get("/getLeaveList", authenticate, getLeaveList);
router.put("/approveLeave/:lid", authenticate, approveLeave);
router.get("/getLabList", authenticate, getLabList);
router.put("/updateLabDetails/:lid", authenticate, updateLabDetails);
router.delete("/labDelete/:lid", authenticate, labDelete);
router.post("/addLabTest", authenticate, addLabTest);
router.get("/getLabTest", authenticate, getLabTest);
router.put("/updateLabTestDetails/:ltid", authenticate, updateLabTestDetails);
router.delete("/labTestDelete/:ltid", authenticate, labTestDelete);
router.get("/getPatientLabTest", authenticate, getPatientLabTest);
router.get(
  "/getPatientLabTestCompleted",
  authenticate,
  getPatientLabTestCompleted
);
router.get(
  "/getPatientLabTestByPatientId/:pid",
  authenticate,
  getPatientLabTestByPatientId
);
router.get("/getLabData/:branch", authenticate, getLabData);
router.post(
  "/downloadLabReportByTime/:branch",
  authenticate,
  downloadLabReportByTime
);
router.post(
  "/downloadOPDReportByTime/:branch",
  authenticate,
  downloadOPDReportByTime
);
router.get("/getProcedureList", authenticate, getProcedureList);
router.get("/getTreatmentViaId/:tid", authenticate, getTreatmentViaId);
router.post("/sendOtpForLogin", sendOtpForLogin);
router.post("/addInsuranceCompany/:branch", authenticate, addInsuranceCompany);
router.get("/getInsuranceList/:branch", authenticate, getInsuranceList);
router.put(
  "/updateInsuranceDetails/:ins/:branch",
  authenticate,
  updateInsuranceDetails
);
router.delete("/deleteInsurance/:ins/:branch", authenticate, deleteInsurance);
router.get("/getSittingBill/:branch", authenticate, getSittingBill);
router.get("/getLabDetails/:tpid", authenticate, getLabDetails);
router.get(
  "/getSittingBillbyId/:branch/:sbid/:tpid/:treatment",
  authenticate,
  getSittingBillDueBySittingId
);
router.get(
  "/getDentalDataByTpid/:tpid/:branch",
  authenticate,
  getDentalDataByTpid
);
const prestorage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "prescription/"); // Define destination folder
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + path.extname(file.originalname));
  },
});

const preUpload = multer({ storage: prestorage });
router.post(
  "/prescriptionOnMail",
  preUpload.single("file"),
  authenticate,
  prescriptionOnMail
);

router.post("/sendWhatsapp", preUpload.single("mediaFile"), sendWhatsapp);
router.post("/sendSMS", authenticate, sendSMS);
router.get("/getPrescriptionList/:branch", getPrescriptionList);
router.get("/getTreatPackageData/:tpid/:branch", getTreatPackageData);
router.get("/getTreatmentDataList/:tpid/:branch", getTreatmentDataList);
router.get(
  "/getTreatPrescriptionByAppointIdList/:tpid",
  getTreatPrescriptionByAppointIdList
);

module.exports = router;
