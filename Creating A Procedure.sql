DELIMITER //

CREATE PROCEDURE GetPatientMeds(IN p_FirstName VARCHAR(50), IN p_LastName VARCHAR(50))
BEGIN
    SELECT 
        p.FirstName, p.LastName, a.AppointmentDate, m.MedicationName, pr.Dosage
    FROM 
        Patient p
    JOIN 
        Appointment a ON p.PatientID = a.PatientID
    JOIN 
        Prescription pr ON a.AppointmentID = pr.AppointmentID
    JOIN 
        Medication m ON pr.MedicationID = m.MedicationID
    WHERE 
        p.FirstName = p_FirstName AND p.LastName = p_LastName;
END //

DELIMITER ;