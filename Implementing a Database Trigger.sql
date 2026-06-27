DELIMITER //

CREATE TRIGGER PreventPastAppointments
BEFORE INSERT ON Appointment
FOR EACH ROW
BEGIN
	IF NEW.AppointmentDate < CURDATE() THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Date Integrity Error: Cannot book an appointment in the past.';
	END IF; 
END //

DELIMITER ; 