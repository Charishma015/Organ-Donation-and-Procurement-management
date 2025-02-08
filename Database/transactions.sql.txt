-- Start a transaction for inserting a new donor
START TRANSACTION;

INSERT INTO donor (DONOR_ID, USER_ID, ORGAN_DONATED, REASONS_FOR_DONATION)
VALUES (101, 1, 'Kidney', 'Altruistic donation');

COMMIT;
