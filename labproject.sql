create database labproject
use labproject
-- students table
create table student (stuID int primary key , stuName varchar(30),stuSemester int not null);
select * from student
-- courses table with each close
-- Grant full control at the server level
create table course_theory(courseId varchar(20) primary key , courseName varchar(100),
Assigment_clo1 int ,Assigment_clo2 int ,Assigment_clo3 int ,
Quiz_clo1 int,Quiz_clo2 int, Quiz_clo3 int ,
Mid_clo1 int ,Mid_clo2 int ,Mid_clo3 int ,
Final_clo1 int,Final_clo2 int,Final_clo3 int  ,
clo1plo int foreign key references plo_Mapping(ploId),
clo2plo int foreign key references plo_Mapping(ploId),  clo3plo int foreign key references plo_Mapping(ploId));

create table course_lab(courseId varchar(20) primary key , courseName varchar(100),
Lab_manual_Clo1 int ,Lab_manual_Clo2 int ,Lab_manual_Clo3 int ,
Lab_project_Clo1 int ,Lab_Project_CLo2 int ,Lab_project_clo3 int ,
lab_exam_clo1 int ,lab_exam_clo2 int ,lab_exam_clo3 int ,
clo1plo int foreign key references plo_Mapping(ploId),
clo2plo int foreign key references plo_Mapping(ploId),  clo3plo int foreign key references plo_Mapping(ploId));

drop table course_lab
-- courses that students registered for
create table stuCourses(stuID int foreign key references student(stuId),
stuCourseLab varchar(20) foreign key references course_lab(courseId),
stuCourseTheory varchar(20) foreign key references course_theory(courseId))
drop table stuCourses


-- student PLOS
create table plo_Mapping(ploId int primary key,plo_description varchar(50));
INSERT INTO plo_Mapping VALUES
(1, 'Engineering Knowledge'),
(2, 'Problem Analysis'),
(3, 'Design Solutions'),
(4, 'Investigation'),
(5, 'Modern Tools Usage'),
(6, 'Engineer and Society'),
(7, 'Environment and Sustainability'),
(8, 'Ethics'),
(9, 'Individual and Team Work'),
(10, 'Communication'),
(11, 'Project Management'),
(12, 'Lifelong Learning');



------------------------------------- students clos marks attainment expected from the frontend--------------------------------------------
create table stu_theory_assignment(stuID int foreign key references student(stuId) ,courseId varchar (30) foreign key references stuCourses(stuCourseTheory),Assignment_clo1 int,Assignment_clo2 int,Assignment_clo3 int )
create table stu_theory_quiz(stuID int foreign key references student(stuId),courseId varchar (30) foreign key references stuCourses(stuCourseTheory),Quiz_clo1 int,Quiz_clo2 int,Quiz_clo3 int )
create table stu_theory_mid(stuID int foreign key references student(stuId),courseId varchar (30) foreign key references stuCourses(stuCourseTheory),Mid_clo1 int,Mid_clo2 int,Mid_clo3 int )
create table stu_lab_final(stuID int foreign key references student(stuId),courseId varchar (30) foreign key references stuCourses(stuCourseTheory),Final_clo1 int,Final_clo2 int,Final_clo3 int,)
create table stu_lab_assignment(stuID int foreign key references student(stuId),courseId varchar (30) foreign key references stuCourses(stuCourseLab),Assignment_clo1 int,Assignment_clo2 int,Assignment_clo3 int )
create table stu_lab_quiz(stuID int foreign key references student(stuId),courseId varchar (30) foreign key references stuCourses(stuCourseLab),Quiz_clo1 int,Quiz_clo2 int,Quiz_clo3 int )
create table stu_lab_mid(stuID int foreign key references student(stuId),courseId varchar (30) foreign key references stuCourses(stuCourseLab),Mid_clo1 int,Mid_clo2 int,Mid_clo3 int )
create table stu_lab_final(stuID int foreign key references student(stuId),courseId varchar (30) foreign key references stuCourses(stuCourseLab),Final_clo1 int,Final_clo2 int,Final_clo3 int,)
------------------------------------- students clos marks attainment expected from the frontend--------------------------------------------




insert into course_lab (courseId, courseName,
lab_manual_clo1, Lab_manual_clo2, lab_manual_clo3,
lab_project_clo1, lab_project_CLo2, lab_project_clo3,
lab_exam_clo1, lab_exam_clo2, lab_exam_clo3,
clo1plo, clo2plo, clo3plo) values
('EE125L', 'Electronic Devices and Circuits Lab',15,0,0, 10,5,0, 15,5,0, 2,10,Null),
('CE119L', 'Computing Fundamentals Lab', 15,0,0, 0,20,0, 15,0,0, 5,10,null),
('CE125L', 'Computer Engineering Workshop Lab', 15,0,0, 10,5,0, 15,5,0 , 1,10,NULL),
('CE116L', 'Computer Programming Lab', 12,0,3, 0,10,5, 15,0,5, 5,10,9),
('MS129L', 'Applied Physics Lab', 15,0,0, 0,10,5, 15,0,5 ,1,9,10),
('EE122L', 'Circuit Analysis Lab', 15,0,0, 15,0,5, 0,10,5, 5,3,10),
('CE215L', 'Digital Logic Design Lab', 15,0,0, 10,10,0, 0,15,0, 3,10,NULL),
('CE205L', 'Data Structures and Algorithms Lab', 15,0,0, 0,15,0, 20,0,0, 5,10,NULL),
('CE207L', 'Computer Organization and Architecture Lab',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),  -------------Coa LIS Lab Needed -----------------------
('CE220L', 'Signals and Systems Lab', 15,0,0, 0,7,8, 16,0,4, 5,3,10),
('CE225L', 'Object Oriented Programming Lab ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ------------------------OOPS LIS Lab Needed -----------------------
('CE202L', 'Software Engineering Lab',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),--------------------------------  SE LIS Lab Needed -----------------------
('CE301L', 'Database Management Systems Lab',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL); --------------------------------DBMS LIS Lab Needed -----------------------


INSERT INTO course_theory(courseId, courseName,
Assigment_clo1,Assigment_clo2,Assigment_clo3,
Quiz_clo1,Quiz_clo2,Quiz_clo3,
Mid_clo1,Mid_clo2,Mid_clo3,
Final_clo1,Final_clo2,Final_clo3,
clo1plo, clo2plo, clo3plo) VALUES 
('HS119T', 'Functional English', 10,0,0,10,0,0,0,10,20,10,20,20,10, 10, 9),
('MS103T', 'Calculus and Analytical Geometry',3,3,4,3,3,4,15,15,0,5,20,25, 1, 1, 1),
('EE125T', 'Electronic Devices and Circuits',3,4,3,3,4,3,10,20,0,10,25,15, 1, 2, 2),
('CE119T', 'Computing Fundamentals',3,4,3,3,4,3,15,0,15,20,10,20, 1, 2, 3),
('HS127T', 'Pakistan Studies and Aligarh Movement',5,5,0,5,5,0,10,10,10,10,20,20, 7, 8, 8),
('MS109T', 'Linear Algebra',3,4,3,3,4,3,10,10,10,20,20,10, 1, 1, 2),
('CE116T', 'Computer Programming',3,3,4,3,3,4,10,10,10,10,20,20, 1, 2, 3),
('MS129T', 'Applied Physics',2,4,4,2,4,4,6,12,12,10,20,20, 1, 1, 2),
('EE122T', 'Circuit Analysis',3,3,4,3,3,4,10,20,0,10,20,20, 1, 1, 2),
('HS223T', 'Communication Skills', NULL, NULL, NULL,NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL , NULL, NULL, NULL, NULL),
('MS202T', 'Complex Variables & Integral Transforms',3,4,3,3,4,3,20,10,0,0,20,30, 1, 1, 1),
('CE215T', 'Digital Logic Design',3,3,4,3,3,4,10,10,10,10,20,20, 1, 2, 2),
('CE216T', 'Discrete Structures',3,3,4,3,3,4,15,15,0,12,14,25, 1, 1, 2),
('CE205T', 'Data Structures and Algorithms',3,3,4,3,3,4,8,12,10,10,10,30, 1, 2, 3),
('MS215T', 'Differential Equations',0,5,5,0,5,5,20,10,0,8,22,20, 1, 1, 2),
('CE207T', 'Computer Organization and Architecture',3,3,4,3,3,4,10,10,10,10,10,30,1, 2, 2),
('CE220T', 'Signals and Systems',3,2,5,3,2,5,15,15,0,10,20,20, 1, 2, 2),
('CE225T', 'Object Oriented Programming', 3,3,4,3,3,4,10,10,10,14,14,22, 1, 2, 3),
('CE202T', 'Software Engineering',3,3,4,3,3,4,10,14,6,15,20,15,1, 2, 3),
('MS301T', 'Probability and Statistics',3,4,3,3,4,3,20,10,0,6,24,20, 1, 1, 2),
('CE301T', 'Database Management Systems',3,3,4,3,3,4,15,15,0,10,10,30, 1, 3,4),
('CE303T', 'Operating Systems', 3,3,4,3,3,4,10,14,6,15,20,15, 1, 2, 2),
('CE315T', 'Engineering Project Management',  NULL, NULL, NULL,NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL , NULL, NULL, NULL, NULL),
('CE318T', 'Microprocessors and Interfacing',3,3,4,3,3,4,22,8,0,12,6,32, 1, 2, 2);

SELECT 
    course_theory.courseId,
    course_theory.courseName,
    course_theory.Assigment_clo1,
	course_theory.Assigment_clo2,
	course_theory.Assigment_clo3,
	course_theory.Quiz_clo1,
	course_theory.Quiz_clo2,
	course_theory.Quiz_clo3,
	course_theory.Mid_clo1,
	course_theory.Mid_clo2,
	course_theory.Mid_clo3,
course_theory.Final_clo1,
course_theory.Final_clo2,
course_theory.Final_clo3,
    plo1.plo_description AS plo1_description,
    plo2.plo_description AS plo2_description,
    plo3.plo_description AS plo3_description
FROM course_theory
JOIN plo_Mapping AS plo1 ON course_theory.clo1plo = plo1.ploId
JOIN plo_Mapping AS plo2 ON course_theory.clo2plo = plo2.ploId
JOIN plo_Mapping AS plo3 ON course_theory.clo3plo = plo3.ploId;

SELECT course_lab.courseId,
    course_lab.courseName,
    course_lab.Lab_Manual_Clo1 ,
	course_lab.Lab_Manual_Clo2 ,
	course_lab.Lab_Manual_Clo3 ,
course_lab.Lab_project_Clo1,
course_lab.Lab_Project_CLo2,
course_lab.Lab_project_clo3,
course_lab.lab_exam_clo1,
course_lab.lab_exam_clo2,
course_lab.lab_exam_clo3,
    plo1.plo_description AS plo1_description,
    plo2.plo_description AS plo2_description,
    plo3.plo_description AS plo3_description
FROM course_lab
JOIN plo_Mapping AS plo1 ON course_lab.clo1plo = plo1.ploId
JOIN plo_Mapping AS plo2 ON course_lab.clo2plo = plo2.ploId
JOIN plo_Mapping AS plo3 ON course_lab.clo3plo = plo3.ploId;


insert into stuCourses values (1,'CE318T',15,20,15),(2,'CE303T',15,20,15),(1,'CE301T',15,20,15);

--select query
select stuCourses.stuCourse,courses.courseName,courses.clo1,courses.clo2,courses.clo3 from stuCourses
join courses on (stuCourses.stuCourse=courses.courseId)

insert into StuCourses values(15,'EE122L','EE122T');
insert into student values(15,'Murtaza',3);
create view dummy  as select student.stuName,StuCourses.stuCourseLab,StuCourses.stuCourseTheory ,course_theory.courseName as 'Theory Course',
course_lab.courseName as 'Lab Course'
 from student join StuCourses on (StuCourses.stuID = student.stuID)
 join course_theory on (course_theory.courseId = StuCourses.stuCourseTheory)
  join course_lab on (course_lab.courseId = StuCourses.stuCourseLab)

  select  (Lab_manual_Clo1 +Lab_manual_Clo2 +Lab_manual_Clo3
+ Lab_project_Clo1 +Lab_Project_CLo2 +Lab_project_clo3 +
lab_exam_clo1 +lab_exam_clo2 +lab_exam_clo3 ) as 'sum' from course_lab


