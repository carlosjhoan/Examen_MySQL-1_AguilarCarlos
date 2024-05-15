create database polideportivos; -- Creación de la base de datos

use polideportivos; -- Usar la base de datos

show tables; -- Mostrar las tablas creadas dentro de la base de datos

-- creación de la tabla "deportes"

create table deportes (
	id_deporte int primary key,
	nombre varchar(100) not null,
	num_jugadores int not null
);

-- Creación de la tabla "jefes"
create table jefes(
	id_jefe int primary key,
	nombre varchar(100) not null,
	email varchar(100) not null unique,
	titulo varchar(100) not null
);

-- creación de la tabla "comisario"
create table comisario(
	id_comisario int primary key,
	nombre varchar(100) not null,
	email varchar(100) not null unique,
	telefono varchar(20) not null,
	tipo enum('juez', 'observador')
);

-- creación de la tabla "eventos"
create table eventos(
	id_evento int primary key,
	nombre varchar(100) not null,
	fecha datetime not null,
	duracion time not null,
	num_participantes int not null
);

-- Creación de la tabla "equipamiento"
create table equipamiento(
	id_equipamiento int primary key,
	nombre_equipos varchar(100) not null,
	stock int not null
);

-- Creación de la tabla "evento_comisario"
create table evento_comisario(
	id_evento_comisario int primary key,
	id_evento int not null,
	id_comisario int not null,
	foreign key (id_evento) references eventos(id_evento),
	foreign key (id_comisario) references comisario(id_comisario)
);

-- creación de la tabla "info_complejo"
create table info_complejo(
	id_complejo int primary key,
	locacion varchar(100) not null,
	area_complejo float not null,
	id_jefe int not null,
	foreign key (id_jefe) references jefes(id_jefe)
);

-- creación de la tabla "complejo_deportivo"
/*
 * Esta tabla incluye los deportivos y los polideportivos
 */
create table complejo_deportivo(
	id_complejo_deportivo int primary key,
	nombre varchar(100) not null,
	id_info_complejo int not null,
	tipo enum('Un deporte', 'Polideportivo'),
	foreign key (id_info_complejo) references info_complejo(id_complejo)
);


-- drop table complejo_polideportivo; 


-- Creación de la tabla "evento_complejo_deprotivo"
create table evento_complejo_deportivo(
	id_evento_complejo_deportivo int primary key,
	id_evento int not null,
	id_complejo_deportivo int not null,
	foreign key (id_evento) references eventos(id_evento),
	foreign key (id_complejo_deportivo) references complejo_deportivo(id_complejo_deportivo)
);

-- creación de la tabla "evento_deportivo"
create table evento_equipamiento(
	id_evento_equipo int primary key,
	id_evento int not null,
	id_equipamiento int not null,
	foreign key (id_evento) references eventos(id_evento),
	foreign key (id_equipamiento) references equipamiento(id_equipamiento)
);

-- Creación de la tabla "sede"
create table sede(
	id_sede int primary key,
	nombre varchar(100) not null,
	id_complejo_deportivo int not null,
	presupuesto float not null,
	foreign key (id_complejo_deportivo) references complejo_deportivo(id_complejo_deportivo)
);

-- Creación de la tabla "deporte_complejo"
create table complejo_deporte(
	id_complejo_deporte int primary key auto_increment,
	id_complejo_deportivo int not null,
	id_deporte int not null,
	foreign key (id_complejo_deportivo) references complejo_deportivo(id_complejo_deportivo),
	foreign key (id_deporte) references deportes(id_deporte)
);





