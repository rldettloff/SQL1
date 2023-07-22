-- #1
SELECT ContactName, ContactAge FROM `Customer`;
-- #2
SELECT * FROM `Customer` WHERE ContactAge < 80;
-- #3
SELECT CustomerName, City, Country FROM `Customer` WHERE Country = "France";
-- #4
SELECT CustomerName, City FROM `Customer` WHERE City = "San Francisco";
-- #5
SELECT ContactName, ContactAge, City FROM `Customer` WHERE Country = "France" and ContactAge < 50;
-- #6
SELECT * FROM `Customer` WHERE Country IN ("France", "Italy");
-- #7 
SELECT * FROM `Customer` WHERE Country NOT IN ("France", "Italy");
-- #8
SELECT * FROM `Customer` WHERE id IN (9, 17, 84);
-- #9
SELECT CustomerName, City FROM `Customer` WHERE City IN ("San Francisco", "London", "Paris");
-- #10
SELECT * FROM `Customer` WHERE CustomerName LIKE "A%";
-- #11
SELECT Address, City, PostalCode FROM `Customer` WHERE PostalCode LIKE "%0";
-- #12
SELECT DISTINCT City FROM `Customer`;
-- #13
Select ContactName, ContactAge From Customer ORDER BY ContactAge;
-- #14
SELECT DISTINCT Country FROM `Customer` WHERE Country != "USA" ORDER BY Country DESC;
-- #15
SELECT * FROM `Customer` WHERE ContactAge > 40 AND CustomerName LIKE "B%" AND Country IN ("France", "Germany", "Sweden") ORDER BY CustomerName ASC;
