create table film(
filmId int primary key identity(1,1),
filmNimetus varchar(50),
kestvus int,
rezisoor varchar(50),
v_aasta int)

create proceduur 'otsin1taht'(In 'taht' char(1)) not deterministic contains sql sql security definder
  
begin
	select * from film
	where filmNimetus like CONCAT(taht,'%');
End;

--protseduuri käivitamine
call otsin1taht ('C'); 

--filmi kustutamine
CREATE PROCEDURE `kustutaFilm`(IN `id` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER begin select * from film; delete from film where filmid=id; select * from film; end; 

begin
select * from film;
delete from film where filmid=id;
select * from film;
end;  --on vaja kasuta 'teosta' nupp nagu dvoesnik või ei tööta

--proceduur, mis loeb filmide arv kokku
CREATE PROCEDURE `filmideArv`() NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER begin select count(*) as 'Filmide Arv' from film; end 

begin
select count(*) as 'Filmide Arv' from film;
end
	
CALL `filmideArv`(); 

--proceduur, mis täidab tabeli film
CREATE PROCEDURE `lisafilm`(IN `uusfilm` VARCHAR(50), IN `kestvus` INT, IN `rezisoor` VARCHAR(50), IN `aasta` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER begin insert into film (filmNimetus, kestvus, rezisoor, v_aasta) values (uusfilm, kestvus, rezisoor, aasta); select * from film; end; 

begin
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) 
values (uusfilm, kestvus, rezisoor, aasta);
select * from film;
end;
