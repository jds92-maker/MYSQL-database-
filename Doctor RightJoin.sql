SELECT 
Doctor.DoctorName,
Doctor.Speciality,
Appointment.AppointmentDate
FROM
Appointment
RIGHT JOIN
Doctor ON Appointment.DoctorID = Doctor.DoctorID
WHERE
Appointment.AppointmentID IS NULL;