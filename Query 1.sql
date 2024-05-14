CREATE DATABASE Abouat;
USE Abouat;
CREATE TABLE student (NAME VARCHAR (40),id INT (30) NOT NULL AUTO_INCREMENT ,cgpa FLOAT (20),phone VARCHAR (11),
address VARCHAR (20),PRIMARY KEY(id));

INSERT INTO student (NAME ,cgpa, phone , address) VALUES ('IMRAN',4.00,'01586065651','Khilkhet'),
('Rana',2.45,'01646674580','Namapara'),('Kamal',3.50,'01929774870','Badda'),('Sihab',3.00,'01833368790','B.baria');
SELECT * FROM student;

CREATE TABLE student1 (NAME VARCHAR (40),st_id INT (30) NOT NULL AUTO_INCREMENT,
cgpa FLOAT (20),phone VARCHAR (11),address VARCHAR (20),PRIMARY KEY(st_id),FOREIGN KEY (st_id) REFERENCES student(id));

INSERT INTO student1 (NAME ,cgpa, phone , address) VALUES ('Rahim',2.90,'01487564420','Jamuna'),
('Raj',3.75,'01697842132','Lacksity'),('Habib',2.57,'01918313101','Rampura'),
('Rabiul',3.00,'01988596120','Nikunja');
SELECT * FROM student1;

//NATURAL JOIN//

SELECT * FROM student AS tb1, student1 AS tb2 WHERE tb1.id = tb2.st_id;

INNER JOIN//
SELECT *  FROM  student INNER JOIN student1 ON student.id = student1.st_id;
 LEFT JOIN //
 SELECT * FROM student LEFT JOIN student1 ON student.id = student1.st_id ;
 
 RIGHT JOIN//
 SELECT * FROM student RIGHT JOIN student1 ON student.id = student1.st_id;
 