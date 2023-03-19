create procedure consultaClientesTickets
as
select c.id_cliente,nombre_cliente,dni_cliente,email,nombre_tipo_pago,
min(fecha_compra) '1er_ticket comprado',
max(fecha_compra) 'Ult_ticket comprado',
count(distinct t.id_ticket) 'Tickets comprados',
sum(costo) 'Costo total pagado'
from Tickets t join Detalle_Tickets d on t.id_ticket=d.id_ticket
join Tipos_pagos tp on tp.id_tipo_pago=t.id_tipo_pago
join Clientes c on c.id_cliente=t.id_cliente
where email is not null
group by c.id_cliente,nombre_cliente,dni_cliente,email,nombre_tipo_pago
----------------------------

create procedure consultaClientesTickets2
as
select c.id_cliente,nombre_cliente,dni_cliente,email,nombre_tipo_pago,
min(fecha_compra),
max(fecha_compra),
count(distinct t.id_ticket),
sum(costo)
from Tickets t join Detalle_Tickets d on t.id_ticket=d.id_ticket
join Tipos_pagos tp on tp.id_tipo_pago=t.id_tipo_pago
join Clientes c on c.id_cliente=t.id_cliente
where email is not null
group by c.id_cliente,nombre_cliente,dni_cliente,email,nombre_tipo_pago


exec consultaClientesTickets2
------------------------------------------------------------------------
create procedure consultaSalasAsientos
as
select s.id_sala,nombre_sala,
count(num_asiento) 'cant. asientos'
from Salas s join Asientos a on s.id_sala=a.id_sala
group by s.id_sala,nombre_sala
having count(num_asiento) > (select(count(a1.num_asiento)/count(s.id_sala))
							 from Asientos a1 join Salas s1
							 on a1.id_sala=s1.id_sala
							 where s1.id_sala=s.id_sala)

exec consultaSalasAsientos
------------------------------------------------------------------------
create proc consultaTicketsClientesSept
@mes int
as
Select id_ticket, format(fecha_compra, 'dd/MM/yyyy')'Fecha', 
t.id_cliente,c.nombre_cliente 'Nombre'
from Tickets t join clientes c on t.id_cliente=c.id_cliente
where @mes = all(select MONTH(fecha_compra)
from Tickets t1
where t1.id_cliente=c.id_cliente)

exec consultaTicketsClientesSept 9
------------------------------------------------------------------------
create proc consultaPelisTaquilleras
@año int
as
begin
	select TOP 1 p.id_pelicula 'Codigo', titulo 'Pelicula mas taquilera',
	sum(pre_unitario) 'Recaudacion',
	count(id_detalle_ticket)' Entrada vendidas'
	from Detalle_Tickets dt join Funciones f on dt.id_funcion = f.id_funcion
	join Peliculas p on f.id_pelicula = p.id_pelicula
	where year(fecha_hora) = @año
	group by p.id_pelicula, titulo
	order by sum(pre_unitario) desc
end
exec consultaPelisTaquilleras 2022
------------------------------------------------------------------------
create proc consultaClientesNoVinieron
@fecha1 date,
@fecha2 date
as 
begin 
select id_cliente 'Codigo', nombre_cliente 'Nombre Cliente'
from Clientes c
where not exists (select id_cliente 
from Tickets t
where t.id_cliente = c.id_cliente and 
(fecha_compra) between @fecha1 and @fecha2)
end 

exec consultaClientesNoVinieron @fecha1 = '10/09/2021' ,@fecha2 = '10/10/2023'
------------------------------------------------------------------------
CREATE PROC sp_clientesquevinieron_consulta
@fechaCompra datetime,
@cantVeces int
AS
BEGIN
	select id_cliente 'codigo', nombre_cliente 'Nombre Cliente'
	from Clientes c 
	where exists (select id_cliente
	from Tickets t
	where t.id_cliente = c.id_cliente 
	and (year(fecha_compra) = year(@fechaCompra))
	group by id_cliente
	having count(t.id_cliente) <= @cantVeces )
END