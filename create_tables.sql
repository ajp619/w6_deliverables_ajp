CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	teacher_name_first text,
	teacher_name_last text NOT NULL
);

CREATE TABLE rooms(
	room_number text PRIMARY KEY
);

CREATE TABLE classes(
	class_id SERIAL PRIMARY KEY,
	teacher_id integer REFERENCES teachers,
	room_number text REFERENCES rooms,
	school_year date
);

CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	student_name_first text,
	student_name_last text NOT NULL
);

CREATE TABLE class_roll(
	class_roll_id SERIAL PRIMARY KEY,
	class_id integer REFERENCES classes,
	student_id integer REFERENCES students,
	grade integer
);

CREATE TABLE laps(
	laps_id SERIAL PRIMARY KEY,
	date_completed date,
	student_id integer REFERENCES students,
	laps integer
);
	
	
	