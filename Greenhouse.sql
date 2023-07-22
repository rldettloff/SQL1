-- Drop tables
DROP TABLE IF EXISTS Job;
DROP TABLE IF EXISTS EmployeeGreenhouse;
DROP TABLE IF EXISTS Plant;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Greenhouse;
DROP TABLE IF EXISTS PlantType;

-- Create tables for Greenhouse DB

CREATE TABLE Job (
    ID INT NOT NULL,
    Title VARCHAR(255),
    Salary DECIMAL(18,2),

    PRIMARY KEY (ID)
);

CREATE TABLE EmployeeGreenhouse(
    EmployeeID INT NOT NULL,
    GreenhouseID INT NOT NULL,

    Primary Key (EmployeeID, GreenHouseID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(ID),
    FOREIGN KEY (GreenhouseID) REFERENCES GreenHouse(ID)

);

CREATE TABLE Greenhouse (
    ID INT NOT NULL,
    Name VARCHAR(255),
    Address VARCHAR(255),
    PlantCapacity INT,

    PRIMARY KEY (ID)
);

CREATE TABLE Employee(
    ID INT,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    JobID INT,
    HireDate DATE,

    Primary KEY (ID),
    FOREIGN KEY (JobID) REFERENCES Job(ID)
);

CREATE TABLE Plant(
    ID INT NOT NULL,
    GreenhouseID INT NOT NULL,
    PlantTypeID INT NOT NULL,
    TimePlanted DATETIME,

    Primary KEY (ID),
    FOREIGN KEY (GreenhouseID) REFERENCES Greenohouse(ID),
    FOREIGN KEY (PlantTypeID) REFERENCES PlantType(ID)
);

CREATE TABLE PlantType(
    ID INT NOT NULL,
    Species VARCHAR(255),
    Description VARCHAR(5000),
    InstructionsForCare VARCHAR(5000),

    PRIMARY KEY (ID)
);

-- Insert data into tables

INSERT INTO Job VALUES (1, 'CEO', 200000.00);
INSERT INTO Job VALUES (2, 'Manager', 60000.00);
INSERT INTO Job VALUES (3, 'Planter', 30000.00);

INSERT INTO Employee VALUES (1, 'Ryder', 'Dettloff', 1, '2019-09-25');
INSERT INTO Employee VALUES (2, 'Jeff', 'Brown', 3, '2023-04-20');
INSERT INTO Employee VALUES (3, 'Ben', 'Simmons', 3, '2021-05-13');
INSERT INTO Employee VALUES (4, 'Deb', 'Johnson', 2, '2018-02-25');

INSERT INTO Greenhouse VALUES (1, 'Alpha', '123 Apple Street', 15);
INSERT INTO Greenhouse VALUES (2, 'Beta', '55 Main street', 25);
INSERT INTO Greenhouse VALUES (3, 'Charlie', '2233 Orange way', 30);

INSERT INTO EmployeeGreenhouse VALUES (2,1);
INSERT INTO EmployeeGreenhouse VALUES (3,2);
INSERT INTO EmployeeGreenhouse VALUES (4,3);

INSERT INTO PlantType VALUES (1, 'Apple Tree', 'Large tree that grows apples', 'water and sun');
INSERT INTO PlantType VALUES (2,'Rose', 'Red Flower', 'water and sun');
INSERT INTO PlantType VALUES (3, 'Money Tree', 'Small leafy tree', 'small amounts of sunlight and water');

INSERT INTO Plant VALUES (1, 2, 1, '2023-01-01 10:00:00');
INSERT INTO Plant VALUES (2, 2, 1, '2023-01-01 10:05:00');
INSERT INTO Plant VALUES (3, 2, 1, '2023-01-01 10:10:00');

INSERT INTO Plant VALUES (4, 1, 2, '2023-02-25 12:10:00');
INSERT INTO Plant VALUES (5, 1, 2, '2023-02-25 12:30:00');
INSERT INTO Plant VALUES (6, 1, 2, '2023-02-25 13:00:00');

INSERT INTO Plant VALUES (7, 3, 2, '2023-02-13 15:00:00');
INSERT INTO Plant VALUES (8, 3, 2, '2023-02-13 15:00:00');
INSERT INTO Plant VALUES (9, 3, 2, '2023-02-13 15:00:00');

-- Select queries to show table info

SELECT * FROM Job;
SELECT * FROM EmployeeGreenhouse;
SELECT * FROM Greenhouse;
SELECT * FROM Employee;
SELECT * FROM Plant;
SELECT * FROM PlantType;