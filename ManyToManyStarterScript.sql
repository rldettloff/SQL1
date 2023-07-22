-- DROP statements (please don't change these)
DROP TABLE IF EXISTS `OrderProduct`;
DROP TABLE IF EXISTS `Order`;
DROP TABLE IF EXISTS `Product`;

-- Part 1: CREATE Order and Product tables here...
CREATE TABLE `Order` (
    ID INT NOT NULL,
    Date DATE NOT NULL,
    CustomerName VARCHAR(255),
    PRIMARY KEY (ID)
);

CREATE TABLE Product (
    ID INT NOT NULL,
    Name VARCHAR(255),
    Price VARCHAR(255),

    PRIMARY KEY (ID)
);


-- Part 2: CREATE joining table here...
CREATE TABLE OrderProduct (
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    QuantityPurchased INT,

    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY(OrderID) REFERENCES `Order`(ID),
    FOREIGN KEY (ProductID) REFERENCES Product(ID)
);


-- Part 3: INSERT statements here...
INSERT INTO `Order` VALUES (1, '2022-10-11', 'Suzy Blue');
INSERT INTO `Order` VALUES (2, '2022-10-03', 'John Mandrake');
INSERT INTO `Order` VALUES (3, '2022-09-26', 'Peter Wiggin');
INSERT INTO `Order` VALUES (4, '2022-10-18', 'Kathleen Jones');

INSERT INTO Product VALUES(1, 'Lettuce', '2.99');
INSERT INTO Product VALUES(2, 'Apple', '0.50');
INSERT INTO Product VALUES(3, 'Cheese', '5.99');
INSERT INTO Product VALUES(4, 'Lime', '0.75');
INSERT INTO Product VALUES(5, 'Bread', '3.99');
INSERT INTO Product VALUES(6, 'Grapefruit', '4.99');
INSERT INTO Product VALUES(7, 'Potato', '0.99');

INSERT INTO OrderProduct VALUES (1, 5, 1), (1, 3, 3), (1, 1, 1);
INSERT INTO OrderProduct VALUES (2, 6, 1), (2, 4, 3), (2, 2, 1);
INSERT INTO OrderProduct VALUES (3, 2, 4), (3, 6, 2);
INSERT INTO OrderProduct VALUES (4, 7, 1);


-- Testing code (please don't change these)
SELECT * FROM `Order`;
SELECT * FROM Product;
SELECT * FROM OrderProduct;