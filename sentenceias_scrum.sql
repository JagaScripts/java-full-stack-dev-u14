insert into gente values ('fulano','1974--04-12');
insert into gente values ('mengano','1978-06-15');

insert into gente values 
('fulano','1974--04-12'),
('mengano','1978-06-15');

insert into gente values ('fulano', default);

select * from  ciudad2;

insert into ciudad5 (poblacion,nombre) values
(7000000, 'Madrid'),
(9000000, 'Paris');

insert into ciudad (nombre,poblacion) values
('paris',911000)
on duplicate key update poblacion=VALUES(poblacion);

insert into ciudad (nombre,poblacion) values
('paris',911000)
on duplicate key update poblacion=poblacion;

insert into ciudad (nombre,poblacion) values
('paris',911000)
on duplicate key update poblacion=0;

replace into ciudad (poblacion,nombre) values
(7000000, 'Madrid'),
(9000000, 'Paris');

update ciudad set poblacion=poblacion*1.0;