INSERT INTO user_information (USER_ID, NAME, DATE_OF_BIRTH, PHONE_NUMBER, MEDICAL_INSURANCE, MEDICAL_HISTORY, ADDRESS)
VALUES
(1, 'John Doe', '1990-05-15', '+1234567890', 'Yes', 'No major issues', '123 Main St'),
(2, 'Jane Smith', '1985-08-22', '+1987654321', 'No', 'Allergic to pollen', '456 Oak St');

INSERT INTO patient (PATIENT_ID, USER_ID, ORGAN_REQUIRED, REASONS_FOR_PROCUREMENT)
VALUES (101, 1, 'Kidney', 'Chronic kidney disease');

INSERT INTO donor (DONOR_ID, USER_ID, ORGAN_DONATED, REASONS_FOR_DONATION)
VALUES (201, 2, 'Liver', 'Family donation');
