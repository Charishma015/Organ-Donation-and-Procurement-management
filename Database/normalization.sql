-- BCNF Normalization: Separating phone numbers into another table
CREATE TABLE user_phone (
    USER_ID INT,
    PHONE_NUMBER VARCHAR(15),
    PRIMARY KEY (USER_ID, PHONE_NUMBER),
    FOREIGN KEY (USER_ID) REFERENCES user_information(USER_ID)
);
