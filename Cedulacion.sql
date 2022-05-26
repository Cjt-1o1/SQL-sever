--Creacion de la base de datos 
create database Cedulacion

use Cedulacion

--Tabla Principal

create table Ciudadanos(
     Numero_indentificacion bigint primary key not null,
	 Nombre varchar(40),
	 Apellido varchar(40),
	 Lugar_de_nacimiento varchar(50),
	 Fecha_de_nacimiento smalldatetime,
	 Edad int,
	 ID_Nacionalidad int,
	 ID_Sexo int,
	 ID_Tipo_de_sangre int,
	 ID_Ocupacion int,
	 ID_Estado_civil int,
	 ID_Provincia int,
	 ID_Municipio int,
	 Id_Sector int
	
);
---Sub-tablas

create table Nacionalidad(
id  int primary key,
Nacionalidad varchar(30),
)

create table Sexo(
id int primary key not null,
Sexo varchar(20),
)

create table Tipo_de_sangre(
id int primary key not null,
Tipo_de_sangre varchar(10),
)

create table Ocupacion(
id int primary key not null,
Ocupation varchar(50),
)

create table Estado_civil(
id int primary key,
Estado_civil varchar(30)
)

create table provincia(
id int primary key,
Provincias varchar(40)
)

create table municipio(
id int primary key,
ID_provincia int,
Municipios varchar(40)
)

create table sector(
id int primary key,
ID_municipio int,
Sectores varchar(40)

)

drop table Ciudadanos
---Datos de la tabla Principal

Insert into Ciudadanos 
values (03567654865, 'Claudio Enrique', 'Jimenez Tejeda', 'Sto Dgo Este' , '20-3-2003',18, 1, 1, 5, 2, 1,01,001,1);

Insert into Ciudadanos 
values (25634527864, 'Yoanny Beatriz', 'Hernandez Feliz', 'Sto Dgo Oeste' , '6-4-2001',20, 1, 2, 4, 7, 1,07,035,3);

Insert into Ciudadanos 
values (17536421345, 'Ramy Joel', 'Campusano Perez', 'Sto Dgo Norte' , '8-2-2002',19, 1, 1, 2, 5, 2,01,001,5);

Insert into Ciudadanos 
values (78747563246, 'Adam Estiben', 'Perez Rodriguez', 'Sto Dgo Este' , '2-8-1990',30, 1, 1, 3, 8, 2,01,001,2);

Insert into Ciudadanos 
values (58763651346, 'Laura Penelope', 'Tejeda Pineda', 'Sto Dgo Oeste' , '7-10-1992',26, 1, 2, 6, 4, 1,01,001,1);

Insert into Ciudadanos 
values (74939320840, 'Kevin Luis', 'Perez Baez', 'Sto Dgo Este' , '9-12-2000',23, 1, 1, 5, 6, 1,01,001,4);

Insert into Ciudadanos 
values (32928482993, 'Mirialky altagracia', 'Pereira Ruiz', 'Sto Dgo Norte' , '30-11-1998',20, 1, 2, 1, 1, 2,07,035,3);

Insert into Ciudadanos 
values (13272637299, 'Richard Esteban', 'Mejia Ruiz', 'Sto Dgo Este' , '26-5-2003',18, 1, 1, 6, 7, 1,07,035,2);

Insert into Ciudadanos 
values (38273926420, 'Javier Jose', 'Mota Feliz', 'Sto Dgo Oeste' , '12-3-2002',19, 1, 1, 2, 2, 2,07,035,5);

Insert into Ciudadanos 
values (88763651346, 'Eymel Javier', 'Cuesta Franco', 'Sto Dgo Norte' , '10-1-1998',21, 1, 1, 5, 7, 1,07,035,4);

Insert into Ciudadanos
values (35628658456, 'Rosangel Rubi', 'Francisco Ruiz', 'Sto Dgo Este', '4-7-2002', 19, 1, 2, 4, 5, 2, 04, 019, 6);

Insert into Ciudadanos
values (82672899269, 'Emely Aime', 'Sueso Rioz', 'Sto Dgo norte ', '5-8-2002', 19, 1, 2, 2, 8, 2, 05, 025,8);

Insert into Ciudadanos
values (73829362638, 'Keisi Michelle', 'Gusman Feliz', 'Sto Dgo este', '1-7-2001', 20, 1, 2, 3, 3, 1, 06, 033,10);

Insert into Ciudadanos
values (63879632899, 'Ricardo Valerio', 'Aquino Mota', 'Sto Dgo este', '9-8-2003', 18, 1, 1, 6, 6, 2, 02, 010,9);

Insert into Ciudadanos
values (25634335283, 'Richad Emiliano', 'Marmolejo Vasquez', 'Sto Dgo oeste', '7-2-2001', 20, 1, 1, 1, 7, 2, 06, 034,7)


---Datos de provicias
Insert into provincia values(01,'Samana');
Insert into provincia values(02,'Azua');
Insert into provincia values(03,'Santo Domingo');
Insert into provincia values(04,'Dajabon');
Insert into provincia values(05,'Elias Piña');
Insert into provincia values(06,'Duarte');
Insert into provincia values(07,'Maria Trinidad Sanchez')

---Datos  de los  municipios 

Insert into municipio values(001,01,'Sanchez');
Insert into municipio values(002,01,'Hato Viejo');
Insert into municipio values(003,01,'La Terrena');
Insert into municipio values(004,01,'Samana');

Insert into municipio values(005,02,'Azua de Compostela');
Insert into municipio values(006,02,'Estebania');
Insert into municipio values(007,02,'Guayabal');
Insert into municipio values(008,02,'Las Charcas');
Insert into municipio values(009,02,'Las llayas de Viajama');
Insert into municipio values(010,02,'Peralta');

Insert into municipio values(011,03,'Santo Domingo Este');
Insert into municipio values(012,03,'Boca Chica');
Insert into municipio values(013,03,'Alcarrisos');
Insert into municipio values(014,03,'Pedro Brad');
Insert into municipio values(015,03,'San antonio de Guerra');
Insert into municipio values(016,03,'Santo Domingo Norte');

Insert into municipio values(017,04,'Dajabon');
Insert into municipio values(018,04,'El Pino');
Insert into municipio values(019,04,'Loma de Cabrera');
Insert into municipio values(020,04,'Partido');
Insert into municipio values(021,04,'Restauracion');

Insert into municipio values(022,05,'Comendador');
Insert into municipio values(023,05,'Banisa');
Insert into municipio values(024,05,'El Llano');
Insert into municipio values(025,05,'Hondo Valle');
Insert into municipio values(026,05,'Juan Santiago');
Insert into municipio values(027,05,'Pedro Santana');

Insert into municipio values(028,06,'San Francisco de Macoris');
Insert into municipio values(029,06,'Arenoso');
Insert into municipio values(030,06,'Castillo');
Insert into municipio values(031,06,'Las Guaranas');
Insert into municipio values(032,06,'Hostos');
Insert into municipio values(033,06,'Villa Arriba');
Insert into municipio values(034,06,'Pimentel');
Insert into municipio values(035,07,'Nagua');

insert into municipio values(036,03,'Santo domingo')

--insert into municipio values(036,03,'Distrito Nacional')
Drop table municipio

--Datos de sectores
Insert into sector 
values(1,11,'Alma Rosa'),(2,11,'Villa Faro'),(3,11,'Mendoza'),(4,11,'Los Trinitarios'),(5,20,'La isabelita'),(6,36,'Bella Vista'),(7,36,'Los Prados'),(8,36,'Cristo Rey'),(9,36,'El Millón'),(10,36,'Villa Juana')

--Tirar tabla de sector

drop table sector
select * from sector


---Datos de las Sub-tablas 
Insert into Nacionalidad
values(1,'Dominicano')

Insert into Sexo
values(1, 'M'), (2, 'F')

Insert into Tipo_de_sangre
values(1, 'A+'), (2, 'A-'), (3, 'B+'), (4, 'B-'), (5, 'O+'), (6, 'O-')

Insert into Ocupacion
values(1, 'Abogado'), (2, 'Arquitecto'), (3, 'Policia'), (4, 'Cantante'), (5, 'Piloto'), (6, 'Fotografo'), (7, 'Medico'), (8, 'Bombero')

Insert into Estado_civil
values(1, 'Casado'), (2,'Soltero')




--Creacion de una vista 
create view vwCiudadanos
As
Select c.Numero_indentificacion, c.Nombre, c.Apellido, c.Lugar_de_nacimiento, c.Fecha_de_nacimiento, c.Edad, n.Nacionalidad, s.Sexo, t.Tipo_de_sangre, o.Ocupation, e.Estado_civil, p.Provincias, m.Municipios, z.Sectores
From Ciudadanos c
join Nacionalidad n on (c.Id_Nacionalidad = n.Id)
join Sexo s on (c.Id_sexo = s.Id)
join Tipo_de_sangre t on (c.Id_Tipo_de_sangre = t.Id)
join Ocupacion o on (c.Id_Ocupacion = o.Id)
join Estado_civil e on (c.Id_Estado_civil = e.Id)
join provincia p on (c.Id_provincia = p.Id)
join municipio m on (c.Id_Municipio = m.id)
join sector z on (c.Id_Sector = z.id)

--Consultas
select * from vwCiudadanos

select * from Ciudadanos

select * from provincia 

select * from municipio

--Tirar la vista 
Drop View vwCiudadanos

--Tirar la tabla 
Drop Table Ciudadanos

Drop table municipio



---- Número de Municipios de la Provincia Santo Domingo
Select p.Provincias Provincias_de_Santo_Domingo, count(m.Municipios) Municipios_de_Santo_Domingo
from municipio m
join provincia p on (p.ID = m.ID_provincia)
Group BY p.Provincias
Having p.Provincias = 'Santo Domingo'


---- Número de Hombres y Mujeres de la Provincia Samaná
Select a.Provincias Provincia, count (a.sexo) Cantidad_de_Hombres_y_Mujeres
From vwCiudadanos a
Group BY a.Provincias
Having a.Provincias = 'Samana'


---Número de jóvenes entre 18 y 25 años en el Municipio de Nagua
Select m.municipios as Jovenes_de_Nagua, count (m.Edad) as cantidad_de_Jovenes
From vwCiudadanos m
Where m.Edad BETWEEN 18 AND 25
Group BY m.municipios
Having m.municipios = 'Nagua'


---Cúantas Provincias tienen más de 5 Municipios
Select p.provincias as Provincias, count (m.ID_provincia) as Mas_de_5
From municipio m
Join provincia p on (m.ID_provincia = p.ID)
Group BY p.Provincias
Having count (m.ID_provincia) > 5


---Cuántos sectores tiene el Municipio de Santo Domingo Este
Select m.Municipios as Municipio_Santo_Domingo_Este, count(z.id) Sectores
From municipio m
Join sector z on (m.id = z.ID_municipio)
Group BY m.Municipios
Having m.Municipios = 'Santo Domingo Este'


---Numero de Munipios por Provincia
Select p.provincias as Provincias, count(m.Municipios) Cantidad_de_Municipios
From provincia p
Join municipio m on (p.id = m.ID_provincia)
Group BY p.Provincias


--Store procedure
create procedure sp_Ciudadanos @Numero_indentificacion bigint
as
select vwCiudadanos.municipios
from vwCiudadanos
where Numero_indentificacion = @Numero_indentificacion

exec sp_Ciudadanos '58763651346'


--consulta
drop  proc sp_Ciudadanos



---Transaciones
begin tran
update municipio
set Municipios = 'Distrito Nacional'
where Municipios = 'Santo domingo' 

commit--Confirmar query
rollback-- devolver hacia atras 




select * from municipio


