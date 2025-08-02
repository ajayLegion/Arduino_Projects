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


-- Insert records into big_market table
INSERT INTO big_market VALUES ('111', 'Geetha', 7019231, 'geetha.b@reva.edu.in', 'peenya', 'bangalore', 560057);
INSERT INTO big_market VALUES ('2', 'HEM', 23719231, 'hem@reva.edu.in', 'khalli', 'bangalore', 560035); 
INSERT INTO big_market VALUES ('3', 'nagesh', 23719231, 'nagi@reva.edu.in', 'khalli', 'bangalore', 560035);
INSERT INTO big_market VALUES ('4', 'akki', 23732731, 'akki@reva.edu.in', 'khalli', 'bangalore', 560035);
INSERT INTO big_market VALUES ('5', 'vinay', 87732731, 'vinu@reva.edu.in', 'khalli', 'bangalore', 560035);
INSERT INTO big_market VALUES ('6', 'shankar', 87732731, 'shankar@reva.edu.in', 'khalli', 'bangalore', 560035);
INSERT INTO big_market VALUES ('7', 'kali', 56732731, 'kal@reva.edu.in', 'dhalli', 'bangalore', 560067);
INSERT INTO big_market VALUES ('8', 'chetan', 70982731, 'chethu@reva.edu.in', 'dhalli', 'bangalore', 560067);
INSERT INTO big_market VALUES ('9', 'giri', 90882731, 'giri@reva.edu.in', 'dhalli', 'bangalore', 560057);
INSERT INTO big_market VALUES ('10', 'lat', 90882731, 'lat@reva.edu.in', 'dhalli', 'bangalore', 560057);
INSERT INTO big_market VALUES ('11', 'gowrish', 99882731, 'gowri@reva.edu.in', 'dhalli', 'bangalore', 560057);
INSERT INTO big_market VALUES ('12', 'suri', 99882731, 'suri@reva.edu.in', 'dhalli', 'bangalore', 560057);
INSERT INTO big_market VALUES ('13', 'kat', 99800831, 'kat@reva.edu.in', 'dhalli', 'bangalore', 560057);
INSERT INTO big_market VALUES ('14', 'shalini', 99776831, 'shalini@reva.edu.in', 'mhalli', 'bangalore', 560057);


SELECT * FROM big_market;
