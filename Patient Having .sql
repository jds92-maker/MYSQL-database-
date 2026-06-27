SELECT
Patient.FirstName, 
Patient.LastName,
COUNT(Prescription.MedicationID) AS NumberOfPrescriptions
FROM
Patient
JOIN
Appointment ON Patient.PatientID = Appointment.PatientID
JOIN
Prescription ON Appointment.AppointmentID = Prescription.AppointmentID
GROUP BY
Patient.PatientID, Patient.FirstName, Patient.LastName
HAVING
COUNT(Prescription.MedicationID) > 1;