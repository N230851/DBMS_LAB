USE PlaystoreDB;
 -- Level 0
SELECT UPPER(DeveloperName) FROM  Developers;
SELECT LOWER(DeveloperName) FROM  Developers;
SELECT LENGTH(AppName) FROM  Apps;
SELECT CategoryName,LENGTH(CategoryName) FROM Categories;
SELECT CURRENT_DATE(),CURRENT_TIME();
SELECT ROUND(Rating,0) FROM Apps;
 -- LEVEL 1
 SELECT SUBSTRING(AppName,1,5) FROM Apps;
 SELECT CONCAT(DeveloperName, '   ',Country) FROM Developers;
 SELECT ROUND(Rating) FROM Apps;
 SELECT CEIL(Price) From  Apps;
 SELECT DeveloperName , Foundedyear From Developers;
 SELECT CONVERT(Downloads,CHAR) From Apps;
 SELECT CAST(Downloads AS CHAR) FROM Apps;
  -- LEVEL 2
SELECT UPPER(AppName),Rating FROM  Apps;
SELECT SUBSTRING(CategoryName,1,3) FROM Categories;
SELECT ABS(price-200) as Difference FROM Apps;
SELECT DeveloperName,LENGTH(DeveloperName) From Developers;
SELECT CURRENT_DATE(),CURRENT_TIMESTAMP();
 SELECT CAST(Rating AS CHAR) FROM Apps;

  
 
 


