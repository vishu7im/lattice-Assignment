const { DB } = require("../DB/db.connection");

const psychiatrists = async (req, res) => {
  const { hospitalId } = req.params;

  try {
    const [hospitalResult] = await DB.execute(
      "SELECT name FROM hospitals WHERE id = ?",
      [hospitalId]
    );
    const hospital = hospitalResult[0];
    if (!hospital) {
      return res.status(404).json({ error: "Hospital not found." });
    }

    const [psychiatristsResult] = await DB.execute(
      "SELECT id, name FROM psychiatrists WHERE hospital_id = ?",
      [hospitalId]
    );
    const psychiatrists = psychiatristsResult;

    const psychiatristDetails = await Promise.all(
      psychiatrists.map(async (psychiatrist) => {
        const [patientCountResult] = await DB.execute(
          "SELECT COUNT(*) AS count FROM patients WHERE psychiatrist_id = ?",
          [psychiatrist.id]
        );
        return {
          id: psychiatrist.id,
          name: psychiatrist.name,
          patientsCount: patientCountResult[0].count,
        };
      })
    );

    const totalPatientsCount = psychiatristDetails.reduce(
      (sum, psychiatrist) => sum + psychiatrist.patientsCount,
      0
    );

    res.json({
      hospitalName: hospital.name,
      totalPsychiatristCount: psychiatrists.length,
      totalPatientsCount: totalPatientsCount,
      psychiatristDetails: psychiatristDetails,
    });
  } catch (error) {
    res.status(500).json({ error: "Error fetching psychiatrists details." });
  }
};

module.exports = psychiatrists;
