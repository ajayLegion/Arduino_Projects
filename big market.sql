CREATE DATABASE REVA;

USE REVA;


CREATE TABLE big_market (
    CUSTOMER_ID VARCHAR(20),
    CUSTOMER_NAME VARCHAR(20) NOT NULL,
    PHONE_NO INTEGER NOT NULL,
    EMAIL VARCHAR(20),
    ADDRESS VARCHAR(20),
    CITY VARCHAR(20),
    PINCODE INTEGER,
    PRIMARY KEY (CUSTOMER_ID)
);


INSERT INTO big_market VALUES ('1', 'Geetha', 7019231, 'geetha.blreva.edu.in', 'peenya', 'bangalore', 560057);
INSERT INTO big_market VALUES ('2', 'HEM', 23719231, 'hem@reva.edu.in', 'khalli', 'bangalore', 560035);
INSERT INTO big_market VALUES ('3', 'nagesh', 23719231, 'nagi@reva.edu.in', 'khalli', 'bangalore', 560035);


SELECT * FROM big_market;
