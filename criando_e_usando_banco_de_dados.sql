show databases;

use test;

CREATE DATABASE menagerie;

show tables;

use menagerie;

CREATE TABLE pet (
	name VARCHAR(40), 
    owner VARCHAR(40),
	species VARCHAR(20), 
    sex CHAR(1), 
    birth DATE, 
    death DATE
);

show databases;

describe pet;

INSERT INTO pet
VALUES ('Bowser', 'Tchoco', 'dog', 'm', '2002-06-28', NULL);

select * from pet;

SET SQL_SAFE_UPDATES = 0;

UPDATE pet SET birth = '1989-08-31' WHERE name = 'Bowser';