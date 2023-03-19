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
	SELECT id_funcion,f.id_pelicula,titulo,fecha_hora,idioma, pre_unitario
	FROM Funciones f join Peliculas p
	on f.id_pelicula=p.id_pelicula
END