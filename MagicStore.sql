-- #1
SELECT * FROM `Client` WHERE AccountCreated < "2022-01-01";
-- #2
SELECT DISTINCT Price FROM `Product` ORDER BY Price DESC;
-- #3
SELECT DISTINCT Price FROM `Product` ORDER BY Price DESC LIMIT 5;
-- #4
SELECT FirstName FROM `Client` WHERE AccountCreated BETWEEN "2022-01-01" AND "2022-12-31";
-- #WILDCARD QUERIES
-- #1
SELECT FirstName, LastName FROM `Client` WHERE LastName LIKE "__L%M%";
-- #2
SELECT Name FROM `Product` WHERE NAME LIKE "%A__" AND PRICE LIKE "%.50" AND ID NOT IN ("1", "11", "12", "21", "25");