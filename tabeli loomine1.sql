SQL SERVER MANAGER STUDIO

--ab loomine

CREATE DATABASE KonjajevLOGITpv22;

USE KonjajevLOGITpv22;
--tabeli loomine
CREATE TABLE opilane(
id int Primary Key identity(1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
address TEXT,
sisseastumis_kp date
);
--primary key - primaarne võti mis annab unikaalsus
--identity(1,1) - määrab igaühine oma numbri
SELECT * FROM opilane;
--andmete lisamine
INSERT INTO opilane(eesnimi,perenimi,isikukood,address,sisseastumis_kp)
VALUES(
'DHCp', 'DNS', '19216811515', 'SSH', '2023-08-16');
SELECT * FROM opilane;
-----------------------
CREATE TABLE Language
(
ID int NOT NULL PRIMARY KEY,
Code char(3) NOT NULL,
Language varchar(50) NOT NULL,
IsOfficial bit,
Percentage decimal(5, 2)
); 

--tabeli admete lisamine
select * FROM Language;
INSERT INTO Language(ID, Code, Language, IsOfficial, Percentage, Capital)
VALUES (100, 'EST', 'Eesti', 1, 80.5);


--Tabeli struktuur muutmine
ALTER TABLE	Language ADD Capital varchar(20)
--Veergu kustutamine
ALTER TABLE	Language DROP COLUMN Capital;

--
INSERT INTO Language(ID, Code, Language, IsOfficial, Percentage, Capital)
VALUES (101, 'FIN', 'Soome', 1, 96.5, 'Helsinki');

--uuendamine
UPDATE Language SET Capital='Tallinn'
WHERE ID=100;
--tabeli kustutamine
DROP TABLE Language;