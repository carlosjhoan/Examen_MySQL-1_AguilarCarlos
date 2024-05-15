use polideportivos;

-- insertar datos de la tabla "deportes"
INSERT INTO deportes VALUES
(1,'Natacion', 5),
(2,'Futbol', 25),
(3,'Microfutbol', 20),
(4,'Voleibol', 16),
(5,'Tennis', 2);

-- insertar datos en la tabla "jefes"
INSERT INTO jefes VALUES
(1,'Jose Hernandez','jh@gmail.com','Especialista en Natacion'),
(2,'Camila Perez','cp@gmail.com','Especialista en Voleibol'),
(3,'Ana Rojas','ar@gmail.com','Especialista en Futbool'),
(4,'Carlos Duarte','cd@gmail.com','Especialista en Tennis'),
(5,'Horacio Hernandez','hh@gmail.com','Especialista en Tennis');


-- insertar datos en la tabla "equipamiento"
INSERT INTO equipamiento VALUES
(1, 'Arcos',5),
(2, 'Pértigas',15),
(3, 'Barras Paralelas',10),
(4, 'Flotadores',35),
(5, 'Raquetas',5),
(6, 'Balones',17);

-- insertar datos en la tabla "comisario"
INSERT INTO comisario VALUES
(1, 'Diego Rojas','dr@hotmail.com','555-555-12345','juez'),
(2, 'Dracula Rosas','drR@hotmail.com','555-555-67895','juez'),
(3, 'Tomas suarez','ts@hotmail.com','555-555-35485','juez'),
(4, 'Lorena Martinez','lm@hotmail.com','444-555-12345','observador'),
(5, 'Rosa Martinez','Rm@hotmail.com','444-457-12345','observador'),
(6, 'Laura Bermudez','lBer@hotmail.com','444-856-12345','observador');

-- Insertar datos en la tabla "info_complejo"
INSERT INTO info_complejo VALUES
(1, 'Bucaramanga', 5, 2),
(2, 'Giron', 14.2, 1),
(3, 'Floridablanca', 54, 5),
(4, 'Zapatoca', 65, 3),
(5, 'Lebrija', 48, 4),
(6, 'Sangil', 5, 2),
(7, 'Socorro', 14.2, 1),
(8, 'Soacha', 54, 5),
(9, 'Bogota', 65, 3),
(10, 'Chia', 48, 4);

-- insertar datos en la tabla "eventos"
INSERT INTO eventos VALUES
(1, 'Torneo de Tennis','2023-05-12 10:00:00', '01:30:00', 25),
(2, 'Torneo de Microfutbol','2023-11-20 10:00:00', '03:15:00', 75),
(3, 'Torneo de Voleibol','2023-06-02 09:00:00', '05:30:00', 25),
(4, 'Torneo de Natacion','2023-12-12 16:00:00', '02:45:00', 5),
(5, 'Torneo de Futbol','2024-01-04 10:00:00', '01:45:00', 85),
(6, 'Torneo de Futbol ninos','2024-01-04 14:00:00', '01:45:00', 85);

-- insertar datos en la tabla "complejo_deportivo"
INSERT INTO complejo_deportivo VALUES
(1,'Complejo Deportivo Giron',2, 'Un deporte'),
(2,'Complejo Deportivo Floridablanca',3, 'Un deporte'),
(3,'Complejo Deportivo Zapatoca', 4, 'Un deporte'),
(4,'Complejo Deportivo Bucaramanga', 2, 'Polideportivo'),
(5,'Complejo Deportivo Sangil',6, 'Polideportivo'),
(6,'Complejo Deportivo Soacha', 8, 'Polideportivo');

-- Insertar datos en la tabla "sede"
INSERT INTO sede VALUES
(1,'sede1',1,12.300),
(2,'sede2',5,150000.03),
(3,'sede3',4,34561.215),
(4,'sede4',2,2564.215),
(5,'sede5',3,4151.215),
(6,'sede6',6,5214.215);

-- insertar datos en la tabla evento_equipo
INSERT INTO evento_equipamiento VALUES
(1,3,6),
(2,1,5),
(3,4,4);

-- insertar datos en la tabla evento_comisario
INSERT INTO evento_comisario VALUES
(1,1,1),
(2,3,5),
(3,4,3);

-- insertar datos en la tabla evento_complejo_deportivo
INSERT INTO evento_complejo_deportivo VALUES
(1,2,6),
(2,3,6),
(3,4,6),
(5,4,5),
(6,3,5),
(7,4,1),
(8,3,4),
(9,2,3),
(10,2,2);

-- insertar datos en la tabla complejo_deporte
insert into complejo_deporte(id_complejo_deportivo, id_deporte)
values 	(4, 4),
		(4, 5),
		(5, 2),
		(5, 3),
		(5, 1),
		(6, 4),
		(6, 1),
		(1, 1),
		(2, 3),
		(3, 2);

