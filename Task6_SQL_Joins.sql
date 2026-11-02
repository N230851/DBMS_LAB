USE PlaystoreDB;

 -- Level 0
select a.AppName,p.PublisherName from Apps a INNER JOIN Publishers p on p.PublisherId=a.PublisherId;
select a.AppName,c.CategoryName from Apps a INNER JOIN Categories c on c.CategoryId=a.CategoryId;
select  a.AppName,d.DeveloperName,c.CategoryName from Apps a
 INNER JOIN Developers d on d.DeveloperId=a.DeveloperId
 INNER JOIN Categories c on c.CategoryId=a.CategoryId;
select c.CategoryName ,a.Appname From Categories c   LEFT JOIN Apps a ON c.CategoryId=a.CategoryId;

 -- Level 1
 select p.publisherName ,a.Appname From Publishers  p LEFT JOIN Apps a ON p.publisherId=a.PublisherId;
 select a.appname ,p.publishername from Apps a RIGHT JOIN Publishers p on a.publisherid=p.publisherid;
 select a.AppName,d.DeveloperName,d.country from Apps a INNER JOIN Developers d on d.DeveloperId=a.DeveloperId;
 select  a.AppName ,d.DeveloperName , p.publisherName,c.CategoryName from Apps a 
 INNER JOIN Developers d on d.DeveloperId=a.DeveloperId 
 INNER JOIN Publishers p on p.publisherid=a.publisherid 
 INNER JOIN Categories c on c.CategoryId=a.CategoryId;
select a.AppName,d.DeveloperName,d.country from Apps a INNER JOIN Developers d on d.DeveloperId=a.DeveloperId where d.country='usa';
select a.AppName ,c.CategoryName,p.Publishername from Apps a INNER JOIN Categories c on a.categoryid=c.categoryid INNER JOIN Publishers p on p.publisherid=a.publisherid where c.categoryname='gaming';
select  a.AppName,d.DeveloperName,a.rating from Apps a
 INNER JOIN Developers d on d.DeveloperId=a.DeveloperId where a.rating>=4.5;
 
  -- Level 2
select d1.Developername as developer1,d2.Developername as developer2 ,d1.country from Developers d1 JOIN Developers d2 on d1.developerid=d2.developerid;
select p.publishername ,c.categoryname from publishers p CROSS JOIN categories c;
select p.publishername ,a.appname from Publishers p LEFT JOIN Apps a on p.publisherid=a.publisherid 
UNION select p.publishername ,a.appname from Publishers p RIGHT JOIN Apps a on p.publisherid=a.publisherid ;
select  a.AppName ,d.DeveloperName , p.publisherName,c.CategoryName from Apps a 
 JOIN Developers d on d.DeveloperId=a.DeveloperId 
 JOIN Publishers p on p.publisherid=a.publisherid 
 JOIN Categories c on c.CategoryId=a.CategoryId where c.categoryname in ('gaming','social');
select a.AppName,d.DeveloperName,d.country from Apps a INNER JOIN Developers d on d.DeveloperId=a.DeveloperId where not d.country='india';



