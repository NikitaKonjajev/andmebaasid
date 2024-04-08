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
--kuva kõik mis on tabelis
SELECT * FROM opilane;
--andmete lisamine
INSERT INTO opilane(eesnimi,perenimi,isikukood,address,sisseastumis_kp)
VALUES(
'DHCp', 'DNS', '19216811515', 'SSH', '2023-08-16');
SELECT * FROM opilane;