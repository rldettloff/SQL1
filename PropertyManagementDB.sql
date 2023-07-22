-- Drop tables if they exist
DROP TABLE IF EXISTS MaintenanceRequests;
DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS TenantUnit;
DROP TABLE IF EXISTS Tenants;
DROP TABLE IF EXISTS Units;
DROP TABLE IF EXISTS PropertyOwners;
DROP TABLE IF EXISTS Properties;
DROP TABLE IF EXISTS Owners;

-- Create tables for management service
CREATE TABLE Owners (
    ID INT NOT NULL,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    PhoneNumber VARCHAR(20),
    DateJoined DATE,
    PRIMARY KEY (ID)
);

CREATE TABLE Properties (
    ID INT NOT NULL,
    StreetAddress VARCHAR(255),
    EstimatedValue DECIMAL(10,2),
    PRIMARY KEY (ID)
);

CREATE TABLE PropertyOwners (
    OwnerID INT,
    PropertyID INT,
    PRIMARY KEY (OwnerID, PropertyID),
    FOREIGN KEY (OwnerID) REFERENCES Owners(ID),
    FOREIGN KEY (PropertyID) REFERENCES Properties(ID)
);

CREATE TABLE Units (
    ID INT NOT NULL,
    PropertyID INT,
    UnitNumber VARCHAR(255),
    MonthlyRent DECIMAL(10,2),
    PRIMARY KEY (ID),
    FOREIGN KEY (PropertyID) REFERENCES Properties(ID)
);

CREATE TABLE Tenants (
    ID INT NOT NULL,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    PRIMARY KEY (ID)
);

CREATE TABLE TenantUnit (
    UnitID INT,
    TenantID INT,
    PRIMARY KEY (UnitID, TenantID),
    FOREIGN KEY (UnitID) REFERENCES Units(ID),
    FOREIGN KEY (TenantID) REFERENCES Tenants(ID)
);

CREATE TABLE Payments (
    ID INT NOT NULL,
    TenantID INT,
    UnitID INT,
    AmountPaid DECIMAL(10,2),
    PRIMARY KEY (ID),
    FOREIGN KEY (TenantID) REFERENCES Tenants(ID),
    FOREIGN KEY (UnitID) REFERENCES Units(ID)
);

CREATE TABLE MaintenanceRequests (
    ID INT NOT NULL,
    TenantID INT,
    UnitID INT,
    DescriptionRequest VARCHAR(255),
    SeverityZeroToTen INT,
    Completion VARCHAR(20),
    PRIMARY KEY (ID),
    FOREIGN KEY (TenantID) REFERENCES Tenants(ID),
    FOREIGN KEY (UnitID) REFERENCES Units(ID)
);

-- Insert Values Into Tables

INSERT INTO Owners VALUES (1, 'John', 'Doe', '999-999-9999', '2022-10-10');
INSERT INTO Owners VALUES (2, 'Jeff', 'Gold', '888-888-8888', '2022-12-01');
INSERT INTO Owners VALUES (3, 'Dean', 'Johnson', '777-777-7777', '2022-01-20');

INSERT INTO Properties VALUES (1, '123 Apple Way', 123000.00);
INSERT INTO Properties VALUES (2, '222 Marvy Dr', 500000.00);
INSERT INTO Properties VALUES (3, '345 Doof St', 1000000.00);

INSERT INTO PropertyOwners (OwnerID, PropertyID) VALUES (1, 1);
INSERT INTO PropertyOwners (OwnerID, PropertyID) VALUES (2, 2);
INSERT INTO PropertyOwners (OwnerID, PropertyID) VALUES (3, 3);

INSERT INTO Units VALUES (1, 1, '2A', 1500.00);
INSERT INTO Units VALUES (2, 1, '3F', 2100.00);
INSERT INTO Units VALUES (3, 2, '55G', 2600.00);
INSERT INTO Units VALUES (4, 3, '26U', 2200.00);
INSERT INTO Units VALUES (5, 3, '64E', 3700.00);

INSERT INTO Tenants VALUES (1, 'Ryder', 'Dettloff', 'rldettloff@gmail.com');
INSERT INTO Tenants VALUES (2, 'Ben', 'Askren', 'Ben10@hotmail.com');
INSERT INTO Tenants VALUES (3, 'That', 'Guy', 'ThatGuyJoe@gmail.com');

INSERT INTO TenantUnit VALUES (2, 1);
INSERT INTO TenantUnit VALUES (4, 2);
INSERT INTO TenantUnit VALUES (5, 3);

INSERT INTO Payments VALUES (1, 1, 2, 1500.00);
INSERT INTO Payments VALUES (2, 1, 2, 600.00);
INSERT INTO Payments VALUES (3, 2, 4, 2200.00);
INSERT INTO Payments VALUES (4, 2, 5, 3700.00);

INSERT INTO MaintenanceRequests VALUES (1, 3, 5, 'Sink is Broken', 6, 'No');
INSERT INTO MaintenanceRequests VALUES (2, 3, 5, 'Toilet is clogged', 10, 'Yes');
INSERT INTO MaintenanceRequests VALUES (3, 3, 5, 'lights are out in kitchen', 1, 'No');

-- Select Statements

SELECT * FROM Owners;
SELECT * FROM Properties;
SELECT * FROM PropertyOwners;
SELECT * FROM Units;
SELECT * FROM Tenants;
SELECT * FROM TenantUnit;
SELECT * FROM Payments;
SELECT * FROM MaintenanceRequests;

SELECT Properties.ID, Properties.StreetAddress, Properties.EstimatedValue, Owners.ID, CONCAT(Owners.FirstName, ' ', Owners.LastName) AS OwnerName FROM Properties
JOIN PropertyOwners ON Properties.ID = PropertyOwners.PropertyID
JOIN Owners ON PropertyOwners.OwnerID = Owners.ID;

SELECT Payments.ID, Payments.TenantID, Tenants.FirstName, Tenants.LastName, Payments.AmountPaid FROM Payments
JOIN Tenants ON Payments.TenantID = Tenants.ID;

SELECT *
FROM MaintenanceRequests
JOIN Units ON MaintenanceRequests.UnitID = Units.ID;

SELECT Tenants.ID, Tenants.FirstName, Tenants.LastName, TenantUnit.UnitID, Units.UnitNumber FROM Tenants
JOIN TenantUnit ON Tenants.ID = TenantUnit.TenantID
JOIN Units ON TenantUnit.UnitID = Units.ID;