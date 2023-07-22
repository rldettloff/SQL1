DROP TABLE IF EXISTS OrderProduct;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS Order;
DROP TABLE IF EXISTS Product;


CREATE TABLE Product
(
	ID INT,
	Name VARCHAR(255),
    Category VARCHAR(255),
	Price DECIMAL(6,2),
	
	PRIMARY KEY (ID)
);
CREATE TABLE `Client`(
	ID INT,
	FirstName VARCHAR(255),
	LastName VARCHAR(255),
	AccountCreated DATE,
	
	PRIMARY KEY (ID)
);
CREATE TABLE `Order`(
	ID INT,
	OrderedOn DATE,
	ClientID INT,
	
	PRIMARY KEY (ID),
	FOREIGN KEY (ClientID) REFERENCES `Client`(ID)
);
CREATE TABLE OrderProduct(
	OrderID INT,
	ProductID INT,
	Quantity INT,
	
	PRIMARY KEY (OrderID, ProductID),
	FOREIGN KEY (OrderID) REFERENCES `Order`(ID),
	FOREIGN KEY (ProductID) REFERENCES Product(ID)
);
INSERT INTO `Client` VALUES
(1, 'John', 'Mandrake', '2021-11-23'),
(2, 'Kathleen', 'Jones', '2020-04-01'),
(3, 'Arther', 'Penhaligon', '2022-06-17'),
(4, 'Annabeth', 'Chase', '2022-10-11'),
(5, 'Tiberius', 'Balthasar', '2021-01-26'),
(6, 'Amity', 'Blight', '2022-10-11');
INSERT INTO Product VALUES
(1, 'Healing Potion', 'Potion', 79.99),
(2, 'Training Wand', 'Magic Item', 150.00),
(3, 'Staff of Power', 'Magic Item', 9999.99),
(4, 'Scroll of Fire', 'Magic Item', 199.99),
(5, 'Elixer of Immortality', 'Potion', 8550.00),
(6, 'Snail', 'Ingredient', 1.50),
(7, 'Broom Stick', 'Magic Item', 499.99);
INSERT INTO `Order` VALUES
(1, '2021-12-01', 1),
(2, '2022-08-20', 1),
(3, '2022-07-08', 2),
(4, '2022-02-14', 3),
(5, '2022-09-19', 4),
(6, '2022-04-07', 5),
(7, '2021-09-26', 6),
(8, '2022-10-21', 6),
(9, '2021-02-05', 6);
INSERT INTO OrderProduct VALUES
(1, 3, 1),
(1, 2, 5),
(1, 5, 1),
(2, 1, 10),
(2, 2, 3),
(3, 4, 2),
(4, 7, 1),
(5, 5, 2),
(6, 1, 7),
(6, 4, 3),
(7, 6, 9),
(7, 3, 1),
(8, 6, 18),
(9, 6, 6);

-- 1
SELECT *, '10%' AS `Sales Tax`, ROUND(Price * 1.1, 2) AS `Price with Tax` FROM Product;

-- 2
SELECT * FROM Product WHERE Price < (SELECT MAX(Price)FROM Product);

--3
SELECT *, Price AS `List Price`, ROUND(Price * 0.85, 2) AS `Discount Price`, ROUND((Price * 0.85) * 1.1, 2) AS `Price with Tax` FROM Product;