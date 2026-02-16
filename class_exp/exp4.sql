CREATE TABLE student (roll_no INT PRIMARY KEY,name VARCHAR(50),physics INT,chemistry INT,mathematics INT);

INSERT INTO student VALUES (1, 'Amit', 15, 18, 40);
INSERT INTO student VALUES (2, 'Ravi', 10, 14, 30);
INSERT INTO student VALUES (3, 'Neha', 20, 22, 45);
INSERT INTO student VALUES (4, 'Pooja', 12, 11, 28);
INSERT INTO student VALUES (5, 'Kiran', 18, 16, 20);
INSERT INTO student VALUES (6, 'Anita', 14, 13, 26);
INSERT INTO student VALUES (7, 'Rahul', 25, 24, 50);
INSERT INTO student VALUES (8, 'Sneha', 11, 15, 35);
INSERT INTO student VALUES (9, 'Vikas', 13, 12, 25);
INSERT INTO student VALUES (10,'Meena', 22, 20, 48);

SELECT * FROM student;
--drop table student;

SELECT AVG(physics) AS class_avg_physics FROM student;

SELECT MAX(mathematics) AS highest_marks_maths FROM student;

SELECT MIN(chemistry) AS lowest_marks_chemistry FROM student;

SELECT COUNT(*) AS students_passed_in_physics FROM student WHERE physics >= 12;

SELECT roll_no,name FROM student WHERE physics >= 12 and chemistry >= 12 and mathematics >=25;

ALTER TABLE student ADD (status varchar(20) not null);
UPDATE student SET status='PASS' WHERE physics >= 12 and chemistry >= 12 and mathematics >=25;
UPDATE student SET status='FAIL' WHERE physics < 12 or chemistry < 12 or mathematics < 25;
ALTER TABLE student add (total_marks int);
UPDATE student SET total_marks = physics + chemistry + mathematics;
ALTER TABLE student ADD (rank varchar(20));
UPDATE student s1
SET rank = (
    SELECT COUNT(*) + 1
    FROM student s2
    WHERE s2.total_marks > s1.total_marks
);
SELECT roll_no, name, total_marks, rank  FROM student ORDER BY total_marks DESC;

SELECT COUNT(*) * 100 / 10 AS pass_percent_maths FROM student WHERE mathematics >= 25;

SELECT COUNT(*) * 100 / 10 AS pass_percent_in_all_sub FROM student WHERE physics >= 12 and chemistry >= 12 and mathematics >= 25;

SELECT AVG(physics + chemistry + mathematics) AS average FROM student;

SELECT COUNT(*) AS total_pass_students FROM student WHERE status = 'PASS';

