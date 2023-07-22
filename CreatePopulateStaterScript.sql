-- DROP statments (please don't change these)
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Classes;

-- Part 1: CREATE the Students and Classes tables here...
CREATE TABLE Students(
    ID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    AGE INT,
    Email VARCHAR(255)
);

CREATE TABLE Classes(
    ID INT PRIMARY KEY,
    ClassName VARCHAR(255),
    Abbrivation VARCHAR(255),
    Days VARCHAR(255)
);


-- Part 2: INSERT statements here...
INSERT INTO Students VALUES (1, "Jane", "Doe", 25, "jane@mail.com"),
(2, "Sherri", "Dorian", 22, "sherri@mail.com"),
(3, "Michael", "Yuhui", 28, "michael@mail.com"),
(4, "Jon", "Doe", 19, "john@mail.com"),
(5, "Suzy", "Blue", 34, "ethan@mail.com"),
(6, "Nathaniel", "Mandrake", 57, "nathaniel@mail.com");

INSERT INTO Classes VALUES (1, "Java Foundations", "SDEV 218", "Mo/We"),
(2, "Software as a Service", "SDEV 372", "Tu/Th"),
(3, "SQL for Data Analytics", "SDEV 201", "Mo/We"),
(4, "Web Development Frameworks", "SDEV 305", "Tu/Th"),
(5, "Agile Development Frameworks", "SDEV 355", "Tu/Th");




-- Part 3: ALTER statements here...

ALTER TABLE Students
ADD LetterGrade VARCHAR(1);

ALTER TABLE Classes
ADD StartDate Date;



-- Part 4: DELETE and UPDATE queries here...

UPDATE Students
SET LetterGrade = 'C';

UPDATE Classes
SET StartDate = "2023-04-03";

DELETE FROM Classes WHERE days = "Tu/Th";

UPDATE Students SET Age = 20 WHERE ID = 4;

UPDATE Students SET LastName = "Johnson" WHERE LastName = "Jane";

DELETE FROM Students WHERE ID = 2 OR ID = 3 OR ID = 6;

UPDATE Classes SET ClassName = 'SQL for Data Engineering' WHERE Abbrivation = 'SDEV 201';




