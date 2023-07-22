-- drop table

DROP TABLE IF EXISTS Customer;


-- create customer table
CREATE TABLE Customer
(
	Id INT PRIMARY KEY,
	CustomerName varchar(255),
	ContactName varchar(255),
	ContactAge INT,
	Address varchar(255),
	City varchar(255),
	PostalCode varchar(255),
	Country varchar(255)
);

INSERT INTO Customer VALUES
	('1', 'Alfreds Futterkiste', 'Maria Anders', '70', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
	('2', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', '52', 'Avda. de la Constitución 2222', 'México D.F.', '5021', 'Mexico'),
	('3', 'Antonio Moreno Taquería', 'Antonio Moreno', '88', 'Mataderos 2312', 'México D.F.', '5023', 'Mexico'),
	('4', 'Around the Horn', 'Thomas Hardy', '72', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
	('5', 'Berglunds snabbköp', 'Christina Berglund', '45', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
	('6', 'Blauer See Delikatessen', 'Hanna Moos', '42', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
	('7', 'Blondel père et fils', 'Frédérique Citeaux', '18', '24, place Kléber', 'Strasbourg', '67000', 'France'),
	('8', 'Bólido Comidas preparadas', 'Martín Sommer', '47', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
	('9', 'Bon app\'', 'Laurence Lebihans', '76', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
	('10', 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '27', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
	('11', 'B\'s Beverages', 'Victoria Ashworth', '49', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
	('12', 'Cactus Comidas para llevar', 'Patricio Simpson', '56', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
	('13', 'Centro comercial Moctezuma', 'Francisco Chang', '77', 'Sierras de Granada 9993', 'México D.F.', '5022', 'Mexico'),
	('14', 'Chop-suey Chinese', 'Yang Wang', '27', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
	('15', 'Comércio Mineiro', 'Pedro Afonso', '39', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
	('16', 'Consolidated Holdings', 'Elizabeth Brown', '60', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
	('17', 'Drachenblut Delikatessend', 'Sven Ottlieb', '61', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
	('18', 'Du monde entier', 'Janine Labrune', '52', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
	('19', 'Eastern Connection', 'Ann Devon', '31', '35 King George', 'London', 'WX3 6FW', 'UK'),
	('20', 'Ernst Handel', 'Roland Mendel', '87', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
	('21', 'Familia Arquibaldo', 'Aria Cruz', '52', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
	('22', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', '51', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
	('23', 'Folies gourmandes', 'Martine Rancé', '90', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
	('24', 'Folk och fä HB', 'Maria Larsson', '35', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
	('25', 'Frankenversand', 'Peter Franken', '37', 'Berliner Platz 43', 'München', '80805', 'Germany'),
	('26', 'France restauration', 'Carine Schmitt', '18', '54, rue Royale', 'Nantes', '44000', 'France'),
	('27', 'Franchi S.p.A.', 'Paolo Accorti', '77', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
	('28', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', '61', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
	('29', 'Galería del gastrónomo', 'Eduardo Saavedra', '88', 'Rambla de Cataluña, 23', 'Barcelona', '8022', 'Spain'),
	('30', 'Godos Cocina Típica', 'José Pedro Freyre', '25', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
	('31', 'Gourmet Lanchonetes', 'André Fonseca', '36', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil'),
	('32', 'Great Lakes Food Market', 'Howard Snyder', '71', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
	('33', 'GROSELLA-Restaurante', 'Manuel Pereira', '33', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela'),
	('34', 'Hanari Carnes', 'Mario Pontes', '35', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil'),
	('35', 'HILARIÓN-Abastos', 'Carlos Hernández', '26', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela'),
	('36', 'Hungry Coyote Import Store', 'Yoshi Latimer', '26', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
	('37', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '21', '8 Johnstown Road', 'Cork', '', 'Ireland'),
	('38', 'Island Trading', 'Helen Bennett', '30', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK'),
	('39', 'Königlich Essen', 'Philip Cramer', '88', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
	('40', 'La corne d\'abondance', 'Daniel Tonini', '72', '67, avenue de l\'Europe', 'Versailles', '78000', 'France'),
	('41', 'La maison d\'Asie', 'Annette Roulet', '47', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France'),
	('42', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '46', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada'),
	('43', 'Lazy K Kountry Store', 'John Steel', '43', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA'),
	('44', 'Lehmanns Marktstand', 'Renate Messner', '75', 'Magazinweg 7', 'Frankfurt a.M.', '60528', 'Germany'),
	('45', 'Let\'s Stop N Shop', 'Jaime Yorres', '86', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA'),
	('46', 'LILA-Supermercado', 'Carlos González', '39', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela'),
	('47', 'LINO-Delicateses', 'Felipe Izquierdo', '27', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela'),
	('48', 'Lonesome Pine Restaurant', 'Fran Wilson', '65', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA'),
	('49', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', '64', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy'),
	('50', 'Maison Dewey', 'Catherine Dewey', '26', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium'),
	('51', 'Mère Paillarde', 'Jean Fresnière', '58', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada'),
	('52', 'Morgenstern Gesundkost', 'Alexander Feuer', '31', 'Heerstr. 22', 'Leipzig', '4179', 'Germany'),
	('53', 'North/South', 'Simon Crowther', '28', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK'),
	('54', 'Océano Atlántico Ltda.', 'Yvonne Moncada', '81', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina'),
	('55', 'Old World Delicatessen', 'Rene Phillips', '89', '2743 Bering St.', 'Anchorage', '99508', 'USA'),
	('56', 'Ottilies Käseladen', 'Henriette Pfalzheim', '52', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany'),
	('57', 'Paris spécialités', 'Marie Bertrand', '20', '265, boulevard Charonne', 'Paris', '75012', 'France'),
	('58', 'Pericles Comidas clásicas', 'Guillermo Fernández', '26', 'Calle Dr. Jorge Cash 321', 'México D.F.', '5033', 'Mexico'),
	('59', 'Piccolo und mehr', 'Georg Pipps', '46', 'Geislweg 14', 'Salzburg', '5020', 'Austria'),
	('60', 'Princesa Isabel Vinhoss', 'Isabel de Castro', '56', 'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal'),
	('61', 'Que Delícia', 'Bernardo Batista', '74', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil'),
	('62', 'Queen Cozinha', 'Lúcia Carvalho', '19', 'Alameda dos Canàrios, 891', 'São Paulo', '05487-020', 'Brazil'),
	('63', 'QUICK-Stop', 'Horst Kloss', '30', 'Taucherstraße 10', 'Cunewalde', '1307', 'Germany'),
	('64', 'Rancho grande', 'Sergio Gutiérrez', '83', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina'),
	('65', 'Rattlesnake Canyon Grocery', 'Paula Wilson', '63', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA'),
	('66', 'Reggiani Caseifici', 'Maurizio Moroni', '68', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy'),
	('67', 'Ricardo Adocicados', 'Janete Limeira', '49', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil'),
	('68', 'Richter Supermarkt', 'Michael Holz', '73', 'Grenzacherweg 237', 'Genève', '1203', 'Switzerland'),
	('69', 'Romero y tomillo', 'Alejandra Camino', '28', 'Gran Vía, 1', 'Madrid', '28001', 'Spain'),
	('70', 'Santé Gourmet', 'Jonas Bergulfsen', '83', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway'),
	('71', 'Save-a-lot Markets', 'Jose Pavarotti', '29', '187 Suffolk Ln.', 'Boise', '83720', 'USA'),
	('72', 'Seven Seas Imports', 'Hari Kumar', '49', '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK'),
	('73', 'Simons bistro', 'Jytte Petersen', '66', 'Vinbæltet 34', 'København', '1734', 'Denmark'),
	('74', 'Spécialités du monde', 'Dominique Perrier', '67', '25, rue Lauriston', 'Paris', '75016', 'France'),
	('75', 'Split Rail Beer & Ale', 'Art Braunschweiger', '73', 'P.O. Box 555', 'Lander', '82520', 'USA'),
	('76', 'Suprêmes délices', 'Pascale Cartrain', '40', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium'),
	('77', 'The Big Cheese', 'Liz Nixon', '45', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA'),
	('78', 'The Cracker Box', 'Liu Wong', '45', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA'),
	('79', 'Toms Spezialitäten', 'Karin Josephs', '66', 'Luisenstr. 48', 'Münster', '44087', 'Germany'),
	('80', 'Tortuga Restaurante', 'Miguel Angel Paolino', '80', 'Avda. Azteca 123', 'México D.F.', '5033', 'Mexico'),
	('81', 'Tradição Hipermercados', 'Anabela Domingues', '69', 'Av. Inês de Castro, 414', 'São Paulo', '05634-030', 'Brazil'),
	('82', 'Trail\'s Head Gourmet Provisioners', 'Helvetius Nagy', '35', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA'),
	('83', 'Vaffeljernet', 'Palle Ibsen', '67', 'Smagsløget 45', 'Århus', '8200', 'Denmark'),
	('84', 'Victuailles en stock', 'Mary Saveley', '88', '2, rue du Commerce', 'Lyon', '69004', 'France'),
	('85', 'Vins et alcools Chevalier', 'Paul Henriot', '52', '59 rue de l\'Abbaye', 'Reims', '51100', 'France'),
	('86', 'Die Wandernde Kuh', 'Rita Müller', '82', 'Adenauerallee 900', 'Stuttgart', '70563', 'Germany'),
	('87', 'Wartian Herkku', 'Pirkko Koskitalo', '22', 'Torikatu 38', 'Oulu', '90110', 'Finland'),
	('88', 'Wellington Importadora', 'Paula Parente', '36', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
	('89', 'White Clover Markets', 'Karl Jablonski', '73', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA'),
	('90', 'Wilman Kala', 'Matti Karttunen', '87', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland'),
	('91', 'Wolski', 'Zbyszek', '40', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland');

-- manipulation statements

-- 1
SELECT CustomerName AS 'Company', ContactName AS 'Name', ContactAge AS 'Age', 'Phone' AS `Contact Method`, YEAR(NOW()) - ContactAge AS `Year Born`
FROM Customer;

-- 2
SELECT MIN(ContactAge) AS `Minimum Age`, MAX(ContactAge) AS `Maximum Age`, AVG(ContactAge) AS `Average Age`
FROM Customer;

-- 3
SELECT * FROM Customer WHERE ContactAge < (SELECT AVG(ContactAge) FROM Customer);

DROP TABLE IF EXISTS OrderProduct;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS `Order`;
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

-- 3
SELECT *, Price AS `List Price`, ROUND(Price * 0.85, 2) AS `Discount Price`, ROUND((Price * 0.85) * 1.1, 2) AS `Price with Tax` FROM Product;