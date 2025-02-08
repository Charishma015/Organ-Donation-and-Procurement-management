-- Retrieve all patients who require a kidney
SELECT * FROM patient WHERE ORGAN_REQUIRED = 'Kidney';

-- Join patients with their user information
SELECT p.PATIENT_ID, u.NAME, p.ORGAN_REQUIRED
FROM patient p
JOIN user_information u ON p.USER_ID = u.USER_ID;

-- View for active donors
CREATE VIEW active_donors AS
SELECT d.DONOR_ID, u.NAME, d.ORGAN_DONATED
FROM donor d
JOIN user_information u ON d.USER_ID = u.USER_ID;

-- Trigger to prevent duplicate phone numbers
DELIMITER //
CREATE TRIGGER prevent_duplicate_phone
BEFORE INSERT ON user_information
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM user_information WHERE PHONE_NUMBER = NEW.PHONE_NUMBER) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Phone number already exists';
    END IF;
END;
//
DELIMITER ;
