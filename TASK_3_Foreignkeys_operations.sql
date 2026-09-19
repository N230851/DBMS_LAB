 USE PlaystoreDB;
 -- Level 0
ALTER TABLE Apps
ADD CONSTRAINT fk_DeveloperID
FOREIGN KEY (DeveloperID)
REFERENCES Developers(DeveloperID);
SELECT *FROM Apps;

ALTER TABLE Apps
ADD CONSTRAINT fk_PublisherID
FOREIGN KEY (PublisherID)
REFERENCES Publishers(PublisherID);
SELECT *FROM Apps;

ALTER TABLE Apps
ADD CONSTRAINT fk_CategoryID
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategorID);
SELECT *FROM Apps;

SELECT *FROM Apps WHERE Rating > 4.5;
SELECT * FROM Apps WHERE Price=0;
SELECT * FROM Apps WHERE CategoryID=305;
 -- LEVEL 1
SELECT *FROM Apps WHERE Downloads>50000000;
SELECT *FROM Apps WHERE 4.3< Rating < 4.7;
SELECT *FROM Apps Where price IN(0,299);
SELECT *FROM Apps Where AppName LIKE 'G%';
SELECT *FROM Apps Where AppName LIKE '%Google%';
SELECT *FROM Apps WHERE Rating > 4.0 AND Downloads>50000000;
SELECT * FROM Apps Where CategoryID=301 OR CategoryID=305;

 -- Level 2
 SELECT *FROM Apps Where NOT AppName LIKE 'G%';
 SELECT *FROM Apps WHERE Rating < 4.5 OR Downloads>1000000000;
 SELECT *FROM Developers Where DeveloperName  LIKE '%a%';
 SELECT *FROM Apps WHERE 0<Price< 300;
 SELECT * FROM Apps Where PublisherID=201 OR PublisherID=204;
 INSERT INTO Apps VALUES
(1008,'VSCODE',106,205,306,4.6,5000000000,299.0334);
SELECT * FROM Developers;
 SELECT * FROM Apps Where NOT CategoryID=305;







