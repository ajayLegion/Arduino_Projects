-- Create the database
CREATE DATABASE REVA;

-- Use the database
USE REVA;

-- Create the supplier table
CREATE TABLE supplier (
    SUPPLIER_ID VARCHAR(20),
    SUPPLIER_NAME VARCHAR(20) NOT NULL,
    PRODUCTS VARCHAR(20) NOT NULL,
    QUANTITY VARCHAR(20) NOT NULL,
    ADDRESS VARCHAR(20),
    CITY VARCHAR(20),
    PHONE_NO INTEGER NOT NULL,
    PINCODE VARCHAR(20),
    PRIMARY KEY (SUPPLIER_ID)
);

-- Insert records into the supplier table
INSERT INTO supplier VALUES ("111", "amar", "pen", "20", "peenya", "bangalore", 12345678, "560057");
INSERT INTO supplier VALUES ("222", "akbar", "pencil", "20", "peenya", "bangalore", 12345678, "560057");
INSERT INTO supplier VALUES ("333", "anthnony", "pencil", "20", "peenya", "bangalore", 12345688, "560057");
INSERT INTO supplier VALUES ("444", "mahi", "eraser", "25", "jharkand", "bengal", 12675688, "650078");
INSERT INTO supplier VALUES ("555", "manya", "book", "25", "jharkand", "bengal", 12699988, "650078");
INSERT INTO supplier VALUES ("666", "manyata", "sharpner", "25", "hebbal", "bangalore", 99699988, "650078");
INSERT INTO supplier VALUES ("888", "jennifer", "sharpner", "25", "hebbal", "bangalore", 89699988, "789098");
INSERT INTO supplier VALUES ("999", "joyes", "chart", "25", "agra", "delhi", 89688548, "324098");
INSERT INTO supplier VALUES ("000", "suchitra", "pen pencil", "25", "agra", "delhi", 89666548, "324099");
INSERT INTO supplier VALUES ("1111", "hemcheth", "choclate", "25", "bidadi", "mandya", 9654321, "234199");

-- Select all records from the supplier table
SELECT * FROM supplier;
