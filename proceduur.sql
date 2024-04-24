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
end;
