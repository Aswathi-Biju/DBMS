-- CREATE TABLE BANK (
--     bankcode VARCHAR(3) PRIMARY KEY,
--     bankname VARCHAR(50) NOT NULL,
--     headoffice VARCHAR(50),
--     branches INT CHECK (branches > 0)
-- );
-- INSERT INTO BANK VALUES ('SBI', 'State Bank of India', 'Mumbai', 72);
-- INSERT INTO BANK VALUES ('HDF', 'HDFC Bank', 'Mumbai', 60);
-- INSERT INTO BANK VALUES ('ICI', 'ICICI Bank', 'Mumbai', 55);
-- INSERT INTO BANK VALUES ('PNB', 'Punjab National Bank', 'New Delhi', 14);
-- INSERT INTO BANK VALUES ('CAN', 'Canara Bank', 'Bangalore', 39);
-- INSERT INTO BANK VALUES ('SIB', 'South Indian Bank', 'Ernakulam', 27);
-- CREATE TABLE BRANCH (
--     branchid INT PRIMARY KEY,
--     branchname VARCHAR(50) DEFAULT 'New Delhi',
--     bankid VARCHAR(3),
--     FOREIGN KEY (bankid) REFERENCES BANK(bankcode)
-- );
-- INSERT INTO BRANCH VALUES (1, 'Kottayam', 'SBI');
-- INSERT INTO BRANCH VALUES (2, 'Ernakulam', 'HDF');
-- INSERT INTO BRANCH VALUES (3, 'Chennai', 'ICI');
-- INSERT INTO BRANCH VALUES (4, 'Delhi', 'PNB');
-- INSERT INTO BRANCH VALUES (5, 'Bangalore', 'CAN');
-- INSERT INTO BRANCH (branchid, bankid) VALUES (6, 'SBI');
-- ……………………..
-- CREATE VIEW bank_head_office AS
-- SELECT *
-- FROM BANK
-- WHERE headoffice = 'Mumbai';
-- …………………………………….
-- CREATE VIEW bank_branch AS
-- SELECT B.*
-- FROM BANK B
-- JOIN BRANCH BR ON B.bankcode = BR.bankid
-- WHERE BR.branchname = 'Kottayam';
 
 
-- Ensure at least one row in BRANCH has branchname = 'Kottayam'
-- SELECT * FROM bank_branch;

 
-- CREATE VIEW banks_more_than_50 AS
-- SELECT *
-- FROM BANK
-- WHERE branches > 50;

-- CREATE VIEW bank_branch_details AS
-- SELECT B.bankname, BR.branchname
-- FROM BANK B
-- JOIN BRANCH BR ON B.bankcode = BR.bankid;

-- CREATE VIEW banks_outside_ernakulam AS
-- SELECT *
-- FROM BANK
-- WHERE headoffice <> 'Ernakulam';
-- The condition <> 'Ernakulam' means not equal to Ernakulam
-- SELECT * FROM banks_outside_ernakulam;




