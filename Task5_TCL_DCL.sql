USE PlaystoreDB;
 -- Level 0
set sql_safe_updates=0;
UPDATE Apps SET Rating=4.8 WHERE AppName='Googlekeep';
commit;
select * from Apps;

set sql_safe_updates=0;
set autocommit=0;
UPDATE Apps SET Price=450 WHERE AppName='BYJUS Learning';
select * from Apps;
rollback;
select * from Apps;
SELECT @@autocommit;

 -- INSERT INTO Apps Values(1010,"FreeFire",104,201,306,4.9,500000000,566);
commit;
select * From Apps;
INSERT INTO Developers Values(107,'Zoho','India', 2023);
select * From Developers;
rollback;
select * from Developers;

UPDATE Apps SET Rating=4.9 WHERE AppName='Googlekeep';
savepoint sp1;
select * from Apps;

-- Level 1
UPDATE Apps SET Rating=4.1 WHERE AppName='TempleRun';
savepoint sp2;
UPDATE Apps SET Rating=4.2 WHERE AppName='Canva';
select * from Apps;


UPDATE Apps SET Rating=4.7 WHERE AppName='Instagram';
savepoint sp3;
UPDATE Apps SET Rating=5.0 WHERE AppName='Spotify';
select * from Apps;
rollback  to sp3;
select *from Apps;
DELETE FROM Apps WHERE AppName="Inshot";
INSERT INTO Apps Values(1011,"Inshot",105,204,303,4.3,400000000,0.00);
select * from Apps;
savepoint sp4;
UPDATE Apps SET Price=299.0 WHERE AppName="Inshot";
select * From Apps;
rollback to sp4;
select  * from Apps;

CREATE USER 'tejaswini'@'localhost' IDENTIFIED BY 'teja2007';
GRANT SELECT ON playstoreDB.Apps TO 'tejaswini'@'localhost';
GRANT SELECT ,INSERT ON playstoreDB.Apps TO 'tejaswini'@'localhost';
SHOW GRANTS FOR 'tejaswini'@'localhost';
REVOKE INSERT ON playstoreDB.Apps From 'tejaswini'@'localhost';
SHOW GRANTS FOR 'tejaswini'@'localhost';

-- Level 2
UPDATE Apps SET Price=490 WHERE AppName='Googlekeep';
savepoint sp1;
select * from Apps;
UPDATE Apps SET Price=41 WHERE AppName='TempleRun';
savepoint sp2;
select * from Apps;
UPDATE Apps SET Price=452 WHERE AppName='Canva';
savepoint sp3;
select * from Apps;
rollback to sp2;
select * from Apps;

Insert Into Categories Values(306,'Coding',10);
Insert Into categories Values(307,'Health',11);
savepoint sp5;
rollback to sp5;
commit;
select * from Categories;

GRANT SELECT ,INSERT,UPDATE ON playstoreDB.Apps TO 'tejaswini'@'localhost';
SHOW GRANTS FOR 'tejaswini'@'localhost';
REVOKE UPDATE ON playstoredb.Apps FROM 'tejaswini'@'localhost';
SHOW GRANTS FOR 'tejaswini'@'localhost';

GRANT SELECT  ON playstoreDB.Developers TO 'tejaswini'@'localhost';
SHOW GRANTS FOR 'tejaswini'@'localhost';
REVOKE SELECT ON playstoredb.Developers FROM 'tejaswini'@'localhost';
SHOW GRANTS FOR 'tejaswini'@'localhost';

START TRANSACTION;

UPDATE Apps SET Rating = 4.8 WHERE  AppName='TempleRun';
UPDATE Apps SET Rating = 4.6 WHERE AppName ='Inshot';
INSERT INTO Categories VALUES (308, 'Travelling',12);
COMMIT;
select * from Apps;
select * from Categories;

start transaction;
update Apps set Rating=4.5 where AppName='BYJUS Learning';
commit;
select * from Apps;

start transaction;
update Apps set Rating=5.0 where AppName='BYJUS Learning';
select * from Apps where AppName='BYJUS Learning';
rollback;
select * from Apps where AppName='BYJUS Learning';

