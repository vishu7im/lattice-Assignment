const validatePatientRegistration = (req, res, next) => {
  const { psychiatrist_id, name, address, email, phoneNumber, password } =
    req.body;

  const patientPhoto = req.file;

  let errors = [];

  // psychiatrist id
  if (!psychiatrist_id) errors.push("psychiatrist is required.");

  // name
  if (!name) errors.push("Name is required.");

  // address
  if (!address || address.length < 10)
    errors.push("Address must be at least 10 characters long.");

  // email
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!email || !emailRegex.test(email))
    errors.push("A valid email address is required.");

  // phone
  const phoneRegex = /^\+\d{10,}$/;
  if (phoneNumber && !phoneRegex.test(phoneNumber))
    errors.push("Phone number must be at least 10 digits plus country code.");

  // pwd regex
  const passwordRegex =
    /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d!@#$%^&*(),.?":{}|<>]{8,15}$/;

  if (!password || !passwordRegex.test(password))
    errors.push(
      "Password must be 8-15 characters long, include an uppercase letter, a lowercase letter, and a number."
    );

  // profile pic
  if (!patientPhoto) errors.push("Patient photo is required.");

  if (errors.length > 0) {
    return res.status(400).json({ errors });
  }
  next();
};

module.exports = { validatePatientRegistration };
