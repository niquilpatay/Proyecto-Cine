--primer ticket comprado
--último ticket comprado
--tickets comprados
--costo total pagado
--agrupar por clientes con email conocido
--agrupar por tipos pago

select c.id_cliente,nombre_cliente,dni_cliente,email,nombre_tipo_pago,
min(fecha_compra) '1er. ticket comprado',
max(fecha_compra) 'Últ. ticket comprado',
count(distinct t.id_ticket) 'Tickets comprados',
sum(costo) 'Costo total pagado'
from Tickets t join Detalle_Tickets d on t.id_ticket=d.id_ticket
join Tipos_pagos tp on tp.id_tipo_pago=t.id_tipo_pago
join Clientes c on c.id_cliente=t.id_cliente
where email is not null
group by c.id_cliente,nombre_cliente,dni_cliente,email,nombre_tipo_pago

-------------------------------------------------------------------------
--salas con ubicación conocida
--y su cantidad de asientos, siempre y cuando esa cantidad
--supere al promedio de asientos por sala

select s.id_sala,nombre_sala,
count(num_asiento) 'cant. asientos'
from Salas s join Asientos a on s.id_sala=a.id_sala
where ubicacion is not null
group by s.id_sala,nombre_sala
having count(num_asiento) > (select(count(a1.num_asiento)/count(s.id_sala))
							 from Asientos a1 join Salas s1
							 on a1.id_sala=s1.id_sala
							 where s1.id_sala=s.id_sala)





