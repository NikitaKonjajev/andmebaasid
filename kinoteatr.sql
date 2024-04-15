CREATE DATABASE kinoteatrKonjajev;
USE kinoteatrKonjajev;

--tabel filmtype
CREATE TABLE filmtype(
filmTypeId int Primary Key identity(1,1),
filmType varchar(25),
kirjeldus TEXT,
);
SELECT * FROM filmtype;

INSERT INTO filmtype( filmType, kirjeldus)
VALUES('3D', 'väga huvitav fiml');
SELECT * FROM filmtype;


--tabel rezisor
CREATE TABLE rezisor(
rezisorId int Primary Key identity(1,1),
eesnimi varchar(25),
perenimi varchar(25),
);
SELECT * FROM rezisor;

INSERT INTO rezisor( eesnimi, perenimi)
VALUES('Max', 'DNS');
SELECT * FROM rezisor;


--tabel zanr
CREATE TABLE zanr(
zanrId int Primary Key identity(1,1),
zanrnimi varchar(25),
zanrkirjeldus TEXT,
);
SELECT * FROM zanr;

INSERT INTO zanr( zanrnimi, zanrkirjeldus)
VALUES('fentezi', 'Väha huvitav ja emotsionaalne film');
SELECT * FROM zanr;
