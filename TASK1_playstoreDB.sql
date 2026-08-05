 -- CREATE DATABASE PlaystoreDB;
USE PlaystoreDB;
DROP TABLE Developers;
DROP TABLE Apps;
DROP TABLE Publishers;
DROP TABLE Categories;
CREATE TABLE Developers
(
DeveloperId INT PRIMARY KEY,
DeveloperName VARCHAR(60) NOT NULL,
Country VARCHAR(30),
Foundedyear INT
);

CREATE TABLE Publishers
(
PublisherId INT PRIMARY KEY,
PublisherName VARCHAR(60),
HeadOffice VARCHAR(40),
SupportEmail VARCHAR(40)
);

CREATE TABLE Categories
(
CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(40),
MinimumAge INT
);

CREATE TABLE Apps
(
AppID INT PRIMARY KEY,
AppName VARCHAR(60),
DeveloperID INT,
PublisherID INT,
CategoryID INT,
Rating DECIMAL(2,1),
Downloads BIGINT,
Price DECIMAL(6,2)
);

INSERT INTO Developers VALUES
(101,'Googble LLC','USA', 1998),
(102,'Meta platforms','USA',2004),
(103,'Spotify AB','Sweden',2006),
(104,'Canva Pty Ltd','Australia',2012),
(105,'BYJUS','India',2011);

INSERT INTO Publishers VALUES
(201,'Google play','California','support@google.com'),
(202,'Samsung galaxy store','seoul','support@samsung.com'),
(203,'Huawei App Gallery','shenzhen','support@huawei.com'),
(204,'Amazon Appstore','seattle','support@amazon.com');

INSERT INTO Categories VALUES
(301,'Education',3),
(302,'Productivity',3),
(303,'Music',12),
(304,'Social',13),
(305,'Gaming',16);

INSERT INTO Apps VALUES
(1001,'GoogleClassroom',101,201,301,4.6,50000000,0),
(1002,'GoogleKeep',101,201,302,4.5,100000000,0),
(1003,'Instagram',102,201,304,4.4,500000000,0),
(1004,'Spotify',103,201,303,4.5,100000000,0),
(1005,'Canva',104,201,301,4.3,50000000,0),
(1006,'BYJUS Learning',105,201,301,4.3,100000000,299),
(1007,'CandyCrush',102,204,305,4.6,100000000,0),
(1008,'TempleRun',104,203,305,4.2,50000000,0);


SELECT * FROM Developers;
SELECT *FROM Publishers;
SELECT *FROM Categories;
SELECT *FROM Apps;
DESC Apps;

INSERT INTO Developers VALUES
(106,'OpenAI','USA',2015);
SELECT *FROM Developers;

INSERT INTO Categories VALUES
(306,'Artificial Intelligence',12);
SELECT *FROM categories;

INSERT INTO Apps VALUES
(1009,'ChatGPT',104,205,305,4.7,5000000,0);
SELECT *FROM Apps;
UPDATE Apps SET Rating=4.5 WHERE AppName='TempleRun' AND Rating=4.2;
SELECT *FROM Apps;

DELETE FROM Developers WHERE DeveloperID=105;
SELECT *FROM Developers;

UPDATE Publishers SET SupportEmail='SamsungGalaxy@gmail.com' WHERE PublisherName='Samsung galaxy store';
SELECT *FROM Publishers;
INSERT INTO Apps VALUES
(1010,'Claude',103,204,304,4.7,5000000000,0),
(1011,'AntiGravity',103,453,355,4.8,50000000,1);
SELECT *FROM Apps;

UPDATE Apps SET price=199 WHERE AppName='BYJUS Learning';
SELECT *FROM Apps;

DELETE FROM Categories WHERE CategoryName='Music';
SELECT *FROM Categories;

SELECT *FROM Developers;
SELECT *FROM Publishers;
SELECT *FROM Categories;
SELECT *FROM Apps;

