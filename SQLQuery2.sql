Create table Ciudad
(
id int  primary key identity(1,1),
nombre nvarchar (30) not null,
activo int
)
go

Create table Cliente
(
id nvarchar(10),
nombres nvarchar (50) not null,
apellidos nvarchar (50) not null,
ciudad int,
direccion nvarchar (60),
numCelular nvarchar (15),
fechaNac datetime,
activo int
)
go

insert into Ciudad(nombre) values ('Managua'),('Rivas'),('Masaya'),('Chinandega'),('Leon'),('Jinotepe'),('Esteli'),('Boaco'),('Jinotega'),('Granada')

insert into Cliente(id, nombres, apellidos, ciudad, direccion, numCelular, fechaNac)
values('1','Miguel','Martinez', 1,'Carretera sur km 25','12355267','2000-02-13'), 
('2','Eduardo','Ramirez', 5,'Km 12 carretera vieja a leon','58637843','2003-12-23'), 
('3','Jose','Medina', 3,'Km10 carretera masaya','85578439','1989-05-07'), 
('4','Juan','Gonzales', 3,'Km 20 carretera rivas','38943212','2001-07-28'), 
('5','Mario','Vargas', 4,'Casa numero 5 recinto san juan','48932902','2001-05-02'), 
('6','Jesus','Martinez', 5,'Residencial la merced casa numero 10','48390244','2000-04-25'), 
('7','Maria','Espinoza', 8,'Carretera vieja leon km 13','58389212','2019-03-23'), 
('8','Marina','Rodriguez', 9,'Reparto san juan casa numero 25','18594320','1990-11-12'), 
('9','Ernesto','Villarreal', 8,'Km 12 carretera vieja a leon','83872932','2002-02-14'), 
('10','Andres','Pedraja', 7,'Km13 carretera masaya','82475839','2000-06-05'), 
('11','Luis','Castillo', 2,'Residencial flor de leon','98537859','2001-06-01'), 
('12','Natalia','Hernandez', 1,'Residencial reparto chic','87532934','2000-08-23'), 
('13','Jesus','Lopez', 2,'Casa numero 20 residencial puerta el sol','34859323','2005-01-24'), 
('14','Marina','Flores', 3,'limonario rivas','84572834','1978-02-24'), 
('15','Xochil','Avellan', 6,'Entrada a los antiguos lab riestra','75839532','2000-02-27'), 
('16','Roman','Flores', 6,'Casa numero 20 residencial buenos aires','85475832','2003-02-03'), 
('17','Ximena','Artola', 6,'barrio costa rica casa numero 56','84783249','2000-10-23'), 
('18','Alonzo','Villanero', 3,'Funeraria monte los olivos 1c a lago','24858492','1988-06-24'), 
('19','Alejandra','Martinez', 6,'Casa numero 2 residencial las colinas','47584392','2005-03-23'), 
('20','Maria','Guadamuz', 7,'Casa numero 29 residencial las colinas','75563823','2005-01-24'), 
('21','Alejandra','Gonzales', 9,'Casa numero 32 residencial las colinas','83872932','2003-12-23'), 
('22','Marcela','Gurdian', 7,'Casa numero 256 residencial las colinas','83872932','2003-02-03'), 
('23','Joseline','Perez', 7,'Carretera vieja leon km 13','75839532','2001-06-01'), 
('24','Alexa','Gomez', 8,'Residencial reparto chic','87532934','2002-02-14'), 
('25','Miriam','Flores', 9,'Casa numero 54 residencial las colinas','84572834','2019-03-23'), 
('26','Jorge','Castillo', 4,'Km10 carretera masaya','82475839','2000-08-23'), 
('27','Martin','Martinez', 3,'Casa numero 21 residencial las colinas','87532934','2003-12-23'),
('28','Fernanda','Martinez', 4,'limonario rivas','75839532','1990-11-12'), 
('29','Nathaly','Martinez', 4,'Casa numero 33 residencial las colinas','98537859','2005-01-24'), 
('30','Carmen','Mercado', 4,'Casa numero 20 residencial puerta el sol','34859323','2001-06-01'), 
('31','Dylan','Castillo', 4,'Casa numero 2 residencial las colinas','84783249','2019-03-23'), 
('32','Dilan','Reyes', 1,'Km 12 carretera vieja a leon','24858492','2005-01-24'), 
('33','Brissa','Munguia', 1,'Casa numero 25 residencial las colinas','47584392','2000-02-27'), 
('34','Joel','Mayorga', 1,'Km13 carretera masaya','34859323','1988-06-24'), 
('35','Erick','Lopez', 1,'Funeraria monte los olivos 1c a lago','98537859','2005-01-24'), 
('36','Enrique','Pedraja', 1,'Entrada a los antiguos lab riestra','84572834','2003-12-23'), 
('37','Ricardo','Gonzales', 1,'Casa numero 5 recinto san juan','75839532','2003-12-23'), 
('38','Mercedes','Duarte', 2,'Km10 carretera masaya','85475832','1990-11-12'),
('39','Leire','Martinez', 6,'Casa numero 29 residencial las colinas','98537859','2019-03-23'), 
('40','Diana','Rojas', 6,'Residencial la merced casa numero 10','98537859','2001-06-01'), 
('41','Najeli','Sanchez', 5,'km34 carretera vieja a leon','24858492','2005-01-24'), 
('42','Edwing','Martinez', 9,'Residencial la merced casa numero 10','84783249','1988-06-24'), 
('43','Mario','Castillo', 8,'Carretera vieja leon km 13','47584392','2001-06-01'), 
('44','Enrique','Lopez', 7,'Reparto san juan casa numero 25','87532934','2005-01-24'),
('45','Rodolfo','Samqui', 7,'Km 12 carretera vieja a leon','84572834','2005-01-24'), 
('46','Ruben','Matamoros', 6,'Residencial reparto chic','24858492','1990-11-12'), 
('47','Alex','Cuadra', 1,'Casa numero 20 residencial puerta el sol','84783249','2005-01-24'), 
('48','Zira','Flores', 1,'Casa numero 32 residencial buenos aires','98537859','2003-12-23'), 
('49','Raquel','Flores', 2,'Casa numero 54 residencial buenos aires','75839532','2001-06-01'),
('50','Rodolfo','Rodriguez', 3,'km34 carretera vieja a leon','37854873','2000-05-10')
GO

update Ciudad set nombre = 'Malaga'
where id = 1
update Ciudad set nombre = 'Rio san juan'
where id = 2
update Ciudad set nombre = 'Paris'
where id = 5
update Ciudad set nombre = 'New York'
where id = 6
update Ciudad set nombre = 'Managua'
where id = 9
go

delete from Cliente where id = 50
delete from Cliente where id = 30
delete from Cliente where id = 20
delete from Cliente where id = 15
go

select nombres as 'Cliente', nombre from Ciudad a inner join Cliente b on a.id = b.ciudad where a.id = 1
go

select nombres as 'Cliente' from Cliente where (Year(getdate()) - Year(fechaNac)) > 30
go

select nombres from Cliente where Year(fechaNac) between 2000 and 2005
go

select nombres, apellidos as 'Cliente', year(getdate()) - year((fechaNac)) as Edad, nombre from Ciudad a inner join Cliente b on a.id = b.ciudad where a.id= 2
go

select nombres, apellidos, fechaNac from Cliente
go

select a.nombre, count(b.ciudad) from Ciudad a inner join Cliente b on a.id= b.ciudad group by a.id, a.nombre, b.ciudad order by MAX(b.ciudad)
go 

truncate table Cliente