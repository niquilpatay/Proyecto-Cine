create database cine_16
go
use cine_16
go
----------------------------------------------------
CREATE TABLE Barrios
(id_barrio int identity (1,1),
nombre_barrio varchar (100)
constraint pk_barrios primary key (id_barrio)
)
CREATE TABLE Reservas
(id_reserva int identity(1,1),
descripcion varchar (20)
constraint pk_Reserva primary key (id_reserva)
)
CREATE TABLE Tipo_Salas
(
id_tipo_sala int,
tipo varchar(100),
constraint pk_tipo_sala primary key (id_tipo_sala) 
)
CREATE TABLE Salas
(id_sala int identity (1,1),
nombre_sala varchar (30),
id_tipo_sala int,
constraint pk_salas primary key (id_sala),
constraint fk_tipo_Saal  foreign key (id_tipo_sala)references Tipo_Salas(id_tipo_sala)
)
CREATE TABLE Tipo_peliculas
(id_tipo int identity (1,1),
genero varchar (50)
constraint pk_tipo_peliculas primary key (id_tipo)
)
CREATE TABLE Peliculas
(id_pelicula int identity (1,1),
 titulo VARCHAR(500),
 duracion int,
 descripcion VARCHAR (600),
 id_tipo int
 constraint pk_peliculas primary key (id_pelicula)
 constraint fk_peliculas_tipo_peliculas foreign key (id_tipo)
 references Tipo_peliculas (id_tipo)
 )
 CREATE TABLE Clientes
(id_cliente int identity (1,1),
nombre_cliente varchar(50),
dni_cliente varchar(8),
email varchar(100),
tarjeta_credito varchar(16)
constraint pk_cliente primary key(id_cliente)
)
CREATE TABLE Asientos
(id_asiento int identity (1,1),
id_sala int,
num_asiento int
constraint pk_asiento primary key (id_asiento)
constraint fk_asiento_sala foreign key (id_sala) 
references Salas (id_sala)
)
CREATE TABLE Sucursales
(id_sucursal int identity (1,1),
id_barrio int,
nombre_sucursal varchar (50),
direccion varchar (100)
constraint pk_sucursales primary key (id_sucursal)
constraint fk_sucursal_barrios foreign key (id_barrio) 
references Barrios (id_barrio)
)
CREATE TABLE Tipos_pagos
(id_tipo_pago int identity (1,1),
nombre_tipo_pago varchar (50),
constraint pk_id_tipo_pago  primary key (id_tipo_pago)
)
CREATE TABLE Funciones
(id_funcion int identity (1,1),
id_pelicula int,
fecha_hora datetime,
idioma varchar(100),
pre_unitario money,
constraint pk_funciones primary key (id_funcion),
constraint fk_pelicula foreign key (id_pelicula) references 
Peliculas (id_pelicula)
)
Create TABLE Tickets
(id_ticket int identity (1,1),
id_tipo_pago int, 
id_sucursal int,
id_cliente int,
fecha_compra datetime,
constraint pk_Tickets primary key (id_ticket),
constraint fk_tipo_pago foreign key(id_tipo_pago)references Tipos_pagos(id_tipo_pago),
constraint fk_sucursal foreign key(id_sucursal) references Sucursales(id_sucursal),
constraint fk_cliente foreign key (id_cliente) references Clientes(id_cliente)
)
CREATE TABLE Detalle_Tickets
(id_detalle_ticket int identity (1,1),
id_funcion int,
id_asiento int, 
descuento decimal,
id_reserva int,
id_ticket int,
costo money
constraint pk_Detalle_Tickets primary key (id_detalle_ticket),
constraint fk_funciones foreign key(id_funcion) references Funciones(id_funcion),
constraint fk_asiento foreign key (id_asiento) references Asientos(id_asiento),
constraint fk_reserva foreign key (id_reserva) references Reservas(id_reserva),
constraint fk_tickets foreign key(id_ticket) references Tickets (id_ticket)
)
----------------------------------------------------
CREATE PROCEDURE SP_PROXIMO_TICKET
@prox int output
AS
BEGIN
SET @prox = (SELECT MAX(id_ticket)+1  FROM Tickets);
END
----------------------------------------------------
CREATE PROCEDURE SP_INSERTAR_TICKET
	@id_tipo_pago int,
	@id_sucursal int,
	@id_cliente int,
	@fecha_compra datetime
AS
BEGIN
	INSERT INTO Tickets (id_tipo_pago,id_sucursal,id_cliente,fecha_compra)
    VALUES (@id_tipo_pago,@id_sucursal,@id_cliente,@fecha_compra);
END
----------------------------------------------------
CREATE PROCEDURE SP_INSERTAR_DETALLES
	@id_funcion int,
	@id_asiento int,
	@descuento decimal,
	@id_reserva int,
	@id_ticket int,
	@costo money
AS
BEGIN
	INSERT INTO Detalle_Tickets(id_funcion,id_asiento,descuento,id_reserva,id_ticket,costo)
    VALUES (@id_funcion,@id_asiento,@descuento,@id_reserva,@id_ticket,@costo);
END
----------------------------------------------------
CREATE PROCEDURE SP_CONSULTAR_TIPOSPAGO
AS
BEGIN
	SELECT * FROM Tipos_pagos
END
----------------------------------------------------
CREATE PROCEDURE SP_CONSULTAR_SUCURSALES
AS
BEGIN
	SELECT * FROM Sucursales
END
----------------------------------------------------
CREATE PROCEDURE SP_CONSULTAR_CLIENTES
AS
BEGIN
	SELECT * FROM Clientes
END
----------------------------------------------------
create PROCEDURE [dbo].[SP_CONSULTAR_CLIENTES2]
AS
BEGIN
	select id_cliente, nombre_cliente+' (DNI: '+dni_cliente+')' 'cliente'
	from clientes
END
----------------------------------------------------
CREATE PROCEDURE SP_CONSULTAR_RESERVAS
AS
BEGIN
	SELECT * FROM Reservas
END
----------------------------------------------------
CREATE PROCEDURE SP_CONSULTAR_FUNCIONES
AS
BEGIN
	SELECT id_funcion,titulo,fecha_hora,idioma
	FROM Funciones f join Peliculas p
	on f.id_pelicula=p.id_pelicula
END