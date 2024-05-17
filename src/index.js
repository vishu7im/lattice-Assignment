const express = require("express");
const bodyParser = require("body-parser");
const multer = require("multer");
const cors = require("cors");
require("dotenv").config();

const {
  validatePatientRegistration,
} = require("./middleware/patient.validation");
const patient = require("./controllers/api.patients");
const psychiatrists = require("./controllers/api.psychiatrists");

const app = express();

app.use(cors());

app.use(bodyParser.json());

const storage = multer.memoryStorage();
const upload = multer({ storage });

app.post(
  "/api/v1/patients",
  upload.single("patientPhoto"),
  validatePatientRegistration,
  patient
);

app.get("/api/v1/psychiatrists/:hospitalId", psychiatrists);

const PORT = process.env.PORT || 8080;

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

// tech stack
// express
// mysql

// endpoint
// /api/v1/patients
// /api/v1/psychiatrists/:hospitalId

// postman link
// https://www.postman.com/joint-operations-physicist-95714252/workspace/lattice/request/19732799-ca9d86d1-b049-45c3-9e66-512a4c801019?tab=overview
