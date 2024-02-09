create database hospital
go
use hospital
go
create table tbl_departamento(
id_departamento int primary key identity (1,1),
nombre_departamento varchar (50)
)

insert into tbl_departamento (nombre_departamento) values ('Cirugia general')
insert into tbl_departamento (nombre_departamento) values ('Pediatria')

create table tbl_personalMyA(
id_personal int primary key identity (1,1),
nombre varchar (25),
cargo varchar (25),
id_departamento int 
foreign key (id_departamento) references tbl_departamento(id_departamento)
)

insert into tbl_personalMyA (nombre, cargo, id_departamento) values ('Doctora Julia Serrano', 'Cirugana general', 1)
insert into tbl_personalMyA (nombre, cargo, id_departamento) values ('Doctor Javier Ramirez', 'Pediatra', 2)


create table tbl_historial_medico(
id_historial_medico int primary key identity (1,1),
diagnostico varchar (150),
fecha_inicio_tratamiento datetime,
fecha_finaliza_tratamiento datetime,
tratamiento varchar (150),
examenes_realizados varchar (150)
)

insert into tbl_historial_medico (diagnostico, fecha_inicio_tratamiento, fecha_finaliza_tratamiento, tratamiento, examenes_realizados) values ('Apendicitis', '10-02-2024', '02-12-2024', 'Antibioticos', 'Sangre y orina')
insert into tbl_historial_medico (diagnostico, fecha_inicio_tratamiento, fecha_finaliza_tratamiento, tratamiento, examenes_realizados) values ('Cirrosis', '02-14-2024', '02-15-2024', 'Antibioticos, Diureticos', 'Sangre y orina')

create table tbl_pacientes(
id_pacientes  int primary key identity (1,1),
nombre varchar (50),
fecha_nacimiento datetime,
edad int,
estatura_cm float,
peso_lb int,
telefono int,
direccion varchar (150),
id_historial_medico int
foreign key (id_historial_medico) references tbl_historial_medico(id_historial_medico)
)

insert into tbl_pacientes (nombre, fecha_nacimiento, edad, estatura_cm, peso_lb, telefono, direccion) values ('Luisa Tejada', '07-28-2002', 21, 148, 137, 75800007, 'Colonia 15 de Sep, pasaje Abraham Lincoln')
insert into tbl_pacientes (nombre, fecha_nacimiento, edad, estatura_cm, peso_lb, telefono, direccion) values ('Carlos Guerrero', '10-15-2003', 20, 178, 158, 71234567, 'San Vicente')

