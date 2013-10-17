INSERT INTO teachers (teacher_id, teacher_name_first, teacher_name_last) VALUES
	(1, 'Melinda', 'Hamill'),
	(2, 'Susan', 'Healy'),
	(3, 'Sara', 'Kirchmeier'),
	(4, 'Lisa', 'Charbonneau'),
	(5, 'Jacqueline', 'Dyer'),
	(6, 'Stephanie', 'Sweeney'),
	(7, 'Maria', 'Weidetz');
	
INSERT INTO rooms (room_number) VALUES
	('D9'),
	('F5'),
	('D8'),
	('F4'),
	('D7'),
	('F6'),
	('F8');

-- executed from psql terminal. Copied about 170 rows
\copy students FROM 'C:\Users\Aaron\SkyDrive\Docs\CUNY\IS607 Data Acquisition and Management\Week6\students.csv' WITH CSV

INSERT INTO classes	(teacher_id, room_number, school_year) VALUES
	(1,	'F5',	2013),
	(2,	'D9',	2013),
	(3,	'D8',	2013),
	(4,	'F4',	2013),
	(5,	'D7',	2013),
	(6,	'F6',	2013),
	(7,	'F8',	2013);

-- executed from psql terminal. Copied about 170 rows
\copy class_roll FROM 'C:\Users\Aaron\SkyDrive\Docs\CUNY\IS607 Data Acquisition and Management\Week6\roll.csv' WITH CSV

--executed from psql terminal. Copied about 340 rows
\copy laps FROM 'C:\Users\Aaron\SkyDrive\Docs\CUNY\IS607 Data Acquisition and Management\Week6\laps.csv' WITH CSV