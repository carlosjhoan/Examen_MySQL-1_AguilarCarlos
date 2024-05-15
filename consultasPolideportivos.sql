use polideportivos;

show tables;
show columns from evento_complejo_deportivo;
show columns from eventos;
show columns from evento_comisario;
show columns from comisario;
show columns from complejo_deportivo;
/*
 * 1. Consulta de Todos los Eventos en un Complejo Deportivo Específico.
 */
select 	e.id_evento as idEvento,
		e.nombre as nombreEvento,
		e.fecha as fecha,
		e.duracion as duración,
		e.num_participantes as numParticipantes
from 	eventos as e,
		complejo_deportivo  as cd,
		evento_complejo_deportivo as ecd
where 	e.id_evento = ecd.id_evento and
		cd.id_complejo_deportivo = ecd.id_complejo_deportivo AND 
		cd.id_complejo_deportivo = 5;

/*
	2. Consulta de Comisarios Asignados a un Evento en Particular.
*/
	
select 	co.id_comisario as idComisario,
		co.nombre as nombreComisario
from	comisario as co,
		evento_comisario as ec,
		eventos as e
where 	co.id_comisario = ec.id_comisario AND 
		e.id_evento = ec.id_evento AND 
		e.id_evento = 1;

/*
	3. Consulta de Todos los Eventos en un Rango de Fechas.
 */

select 	e.id_evento,
		e.nombre as Evento,
		e.fecha
from eventos as e
where fecha >= '2023-05-12' and fecha <= '2023-07-01';

/*
	4. Consulta del Número Total de Comisarios Asignados a Eventos.
 */
select count(*) as NumComisarios
from (select co.id_comisario, count(*) as NumComisarios
		from	comisario as co,
				evento_comisario as ec,
				eventos as e
		where 	co.id_comisario = ec.id_comisario AND 
				e.id_evento = ec.id_evento
		GROUP by co.id_comisario) as comis_eve;

/*
	5. Consulta de Complejos Polideportivos con Área Total Ocupada Superior a un Valor Específico.
 */
select 	cd.id_complejo_deportivo as idComplejo,
		cd.nombre
from 	complejo_deportivo as cd,
		info_complejo as ic
where cd.id_info_complejo = ic.id_complejo and
		ic.area_complejo > 10;
	

/*
	6. Consulta de Eventos con Número de Participantes Mayor que la Media.
 */

select 	e.id_evento,
		e.nombre as Evento,
		e.fecha,
		e.num_participantes
from eventos as e
WHERE 	e.num_participantes > (select avg(num_participantes)
from eventos);

select avg(num_participantes)
from eventos;

/*
	9. Consulta de Complejos Polideportivos sin Eventos Celebrados.
*/

/*select 	cd.nombre
from	complejo_deportivo  as cd,
		evento_complejo_deportivo  as ecd,
		eventos as e
where 	cd.id_complejo_deportivo = ecd.id_complejo_deportivo AND 
		e.id_evento = ecd.id_evento;*/
	
select 	cd.id_complejo_deportivo as idComplejo,
		cd.nombre as nombreComplejo,
		cd.tipo as tipoComplejo
from complejo_deportivo as cd
			where cd.nombre <> all(
			select 	cd.nombre
			from	complejo_deportivo  as cd,
					evento_complejo_deportivo  as ecd,
					eventos as e
			where 	cd.id_complejo_deportivo = ecd.id_complejo_deportivo AND 
					e.id_evento = ecd.id_evento);

/*
	10. Consulta de Comisarios que Actúan como Jueces en Todos los Eventos.
 */
select 	co.id_comisario as idComisario,
		co.nombre as nombreComisario,
		co.tipo as TipoComisario
from	comisario as co,
		evento_comisario as ec,
		eventos as e
where 	co.id_comisario = ec.id_comisario AND 
		e.id_evento = ec.id_evento AND 
		co.tipo = "juez"
GROUP by co.id_comisario;
