const { DB } = require("../DB/db.connection");

const patient = async (req, res) => {
  const { name, address, email, phoneNumber, password, psychiatrist_id } =
    req.body;
  const patientPhoto = req.file;

  try {
    const [result] = await DB.execute(
      "INSERT INTO patients (name, address, email, phone_number, password, patient_photo, psychiatrist_id) VALUES (?, ?, ?, ?, ?, ?, ?)",
      [
        name,
        address,
        email,
        phoneNumber,
        password,
        patientPhoto.buffer,
        psychiatrist_id,
      ]
    );
    res.status(201).json({
      id: result.insertId,
      name,
      address,
      email,
      phoneNumber,
      psychiatrist_id,
    });
  } catch (error) {
    res.status(500).json({ error: "Error saving patient data." });
  }
};

module.exports = patient;
