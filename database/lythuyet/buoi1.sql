-- XOA DATABASE NEU TON TAI
DROP DATABASE IF EXISTS lesson_01;

-- HIEN THI DANH SACH DATABASE
SHOW DATABASES;

-- CHON DATABASE MUON THAO TAC
USE lesson_01;

-- Tao database 
CREATE DATABASE lesson_01;
-- KIEU DU LIEU
-- kieu so nguyen: 
-- TINYINT  : 1 BYTE
-- SMALLINT : 2 BYTE
-- MEDIUM   : 3 BYTE
-- INT      : 4 BYTE
-- BIGINT   : 8 BYTE
-- kieu so thuc:
-- FLOAT    : 4 BYTE
-- DOUBLE   : 8 BYTE
-- chuoi(xau ky tu):
-- CHAR
-- VARCHAR
-- thoi gian:
-- DATE     : yyyy-MM-dd
-- TIME     : hh:mm:ss
-- DATETIME : yyyy-MM-dd hh:mm:ss
-- Logic:
-- BOOLEAN (TRUE OR FALSE)
-- Enum: cac gia tri huu han
-- ENUM("MALE" , "FEMALE")
-- TAO TABLE

-- XOA BANG NEU TON TAI
DROP TABLE IF EXISTS customer;

-- HIEN THI DANH SACH TABLE
SHOW TABLES;

CREATE TABLE customer(
   id INT UNSIGNED,
   name VARCHAR(50),
   brithdate DATE,
   gender ENUM("MALE", "FEMALE"),
   active BOOLEAN 

);
-- MO TA TABLE
DESCRIBE customer;
