create database cine3
use cine3

CREATE TABLE Salas
(
id_sala int identity (1,1),
nombre_sala varchar (30),
id_tipo_sala int,
constraint pk_salas primary key (id_sala),
)
CREATE TABLE Tipo_peliculas
(
id_tipo int identity (1,1),
genero varchar (50)
constraint pk_tipo_peliculas primary key (id_tipo)
)
CREATE TABLE Peliculas
(
id_pelicula int identity (1,1),
titulo VARCHAR(500),
duracion int,
descripcion VARCHAR (600),
id_tipo int
constraint pk_peliculas primary key (id_pelicula)
constraint fk_peliculas_tipo_peliculas foreign key (id_tipo)
references Tipo_peliculas (id_tipo)
)
 CREATE TABLE Clientes
(
id_cliente int identity (1,1),
nombre_cliente varchar(50),
dni_cliente varchar(8),
email varchar(100),
tarjeta_credito varchar(16),
calle varchar(50),
altura int
constraint pk_cliente primary key(id_cliente)
)
CREATE TABLE Butacas
(
id_butaca int identity (1,1),
id_sala int,
num_asiento int
constraint pk_asiento primary key (id_butaca)
constraint fk_asiento_sala foreign key (id_sala) 
references Salas (id_sala)
)
CREATE TABLE Tipos_pagos
(
id_tipo_pago int identity (1,1),
nombre_tipo_pago varchar (50),
constraint pk_id_tipo_pago  primary key (id_tipo_pago)
)
CREATE TABLE Funciones
(
id_funcion int identity (1,1),
id_pelicula int,
fecha_hora datetime,
idioma varchar(100),
pre_unitario money,
constraint pk_funciones primary key (id_funcion),
constraint fk_pelicula foreign key (id_pelicula) references 
Peliculas (id_pelicula)
)
Create TABLE Tickets
(
id_ticket int identity (1,1),
id_tipo_pago int, 
id_cliente int,
fecha_compra datetime,
constraint pk_Tickets primary key (id_ticket),
constraint fk_tipo_pago foreign key(id_tipo_pago)references Tipos_pagos(id_tipo_pago),
constraint fk_cliente foreign key (id_cliente) references Clientes(id_cliente)
)
CREATE TABLE Butacas_Funciones
(
id_butaca_funcion int identity(1,1),
id_butaca int,
id_funcion int
constraint pk_id_butaca_funcion primary key (id_butaca_funcion)
constraint fk_id_butaca foreign key (id_butaca) references Butacas(id_butaca),
constraint fk_id_funcion foreign key (id_funcion) references Funciones(id_funcion)
)
CREATE TABLE Detalle_Tickets
(
id_detalle_ticket int identity (1,1),
id_butaca_funcion int,
descuento decimal,
id_ticket int,
costo money
constraint pk_Detalle_Tickets primary key (id_detalle_ticket),
constraint fk_id_butaca_funcion foreign key (id_butaca_funcion) references Butacas_Funciones(id_butaca_funcion),
constraint fk_tickets foreign key(id_ticket) references Tickets (id_ticket)
)
