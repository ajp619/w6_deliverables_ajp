-- psql select query joining my tables
SELECT 
  laps.date_completed, 
  laps.laps, 
  students.student_name_first, 
  students.student_name_last, 
  class_roll.grade, 
  rooms.room_number, 
  teachers.teacher_name_last
FROM 
  public.class_roll, 
  public.classes, 
  public.laps, 
  public.rooms, 
  public.students, 
  public.teachers
WHERE 
  class_roll.class_id = classes.class_id AND
  classes.teacher_id = teachers.teacher_id AND
  classes.room_number = rooms.room_number AND
  laps.student_id = students.student_id AND
  students.student_id = class_roll.student_id AND
  laps.date_completed > '2013-09-30';
  
--same query, but executed from a psql shell. Used to create a csv file 
\copy (SELECT 
  laps.date_completed, 
  laps.laps, 
  students.student_name_first, 
  students.student_name_last, 
  class_roll.grade, 
  rooms.room_number, 
  teachers.teacher_name_last
FROM 
  public.class_roll, 
  public.classes, 
  public.laps, 
  public.rooms, 
  public.students, 
  public.teachers
WHERE 
  class_roll.class_id = classes.class_id AND
  classes.teacher_id = teachers.teacher_id AND
  classes.room_number = rooms.room_number AND
  laps.student_id = students.student_id AND
  students.student_id = class_roll.student_id AND
  laps.date_completed > '2013-09-30') TO '\Users\Aaron\SkyDrive\Docs\CUNY\IS607 Data Acquisition and Management\Week6\export.csv' WITH CSV;

  
--Actually, I found that I couldn't use the above code exactly as shown, the psql terminal didn't seem
--to like multiple lines, so below is the same code, but all on one line.
\copy (SELECT laps.date_completed, laps.laps, students.student_name_first, students.student_name_last, class_roll.grade, rooms.room_number, teachers.teacher_name_last FROM public.class_roll, public.classes, public.laps, public.rooms, public.students, public.teachers WHERE class_roll.class_id = classes.class_id AND classes.teacher_id = teachers.teacher_id AND classes.room_number = rooms.room_number AND laps.student_id = students.student_id AND students.student_id = class_roll.student_id AND laps.date_completed > '2013-09-30') To 'C:\Users\Aaron\SkyDrive\Docs\CUNY\IS607 Data Acquisition and Management\Week6\export.csv' WITH CSV;

--The is the line of R code that I run to read in the csv file I exported.
laps <- read.csv("export.csv", stringsAsFactors=FALSE, header=FALSE)