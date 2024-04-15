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


--tabel piletiMyyk
CREATE TABLE piletiMyyk(
piletiMyykId int Primary Key identity(1,1),
kogus int,
kinokavaId int,
);
SELECT * FROM piletiMyyk;

INSERT INTO piletiMyyk(kogus, kinokavaId)
VALUES(3,3);
SELECT * FROM piletiMyyk;


--tabel kinokava
CREATE TABLE kinokava(
kinokavaId int Primary Key identity(1,1),
kuupaev_kellaaeg datetime,
filmnimetus int,
pelitihind int,
);
ALTER TABLE kinokava DROP COLUMN kinokavaId
SELECT * FROM kinokava;

INSERT INTO kinokava(kuupaev_kellaaeg, filmNimetus, pelitihind)
VALUES('15.04.24',  10, 12);
SELECT * FROM kinokava;


--tavel film
CREATE TABLE film(
filmId int Primary key identity(1,1),
filmNimetus varchar(25),
zanrId INT,
pikkus INT,
rezisorId int,
filmTypeId int,
reklaam image);
select * from film;
select * from filmType;
--FK: film ->filmtype
ALTER TABLE film add FOREIGN KEY(filmTypeId) references filmtype(filmTypeId);
AlTER TABLE film add FOREIGN KEY(rezisorId) references rezisor(rezisorId);
AlTER TABLE film add FOREIGN KEY(zanrId) references zanr(zanrId);
AlTER TABLE piletiMyyk add FOREIGN KEY(kinokavaId) references kinokava(kinokavaId);
