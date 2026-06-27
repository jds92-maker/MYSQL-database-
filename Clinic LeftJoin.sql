SELECT 
Clinic.ClinicName, 
COUNT(Appointment.AppointmentID) AS TotalAppointments
FROM Clinic
LEFT JOIN Appointment ON Clinic.ClinicID = Appointment.ClinicID
GROUP BY Clinic.ClinicName
ORDER BY TotalAppointments DESC; 