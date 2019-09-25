-- Database used is Oracle

CREATE TABLE courses(
  SID int,
  ClassName varchar(10),
  Grade char
);

INSERT INTO courses VALUES (123,  'ART123',    'A');
INSERT INTO courses VALUES (123,  'BUS456',    'B');
INSERT INTO courses VALUES (666,  'REL100',    'D');
INSERT INTO courses VALUES (666,  'ECO966',    'A');
INSERT INTO courses VALUES (666,  'BUS456',    'B');
INSERT INTO courses VALUES (345,  'BUS456',    'A');
INSERT INTO courses VALUES (345,  'ECO966',    'F');

SELECT ClassName, COUNT(ClassName) as Total
FROM courses
GROUP BY ClassName
ORDER BY Total,ClassName;
