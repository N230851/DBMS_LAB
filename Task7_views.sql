use playstoreDB;
select * from Developers;
select * from Publishers;
select * from Categories;
select * from Apps;

 -- Level 1
 create VIEW application_record as select Appid,Appname,Rating,price from Apps;
 create VIEW application_rating as select Appid,Appname,Rating from Apps where Rating>=4.5;
 create VIEW free_application as select Appid,Appname,Price from Apps where price=0;
 select * from application_rating;
SHOW FULL TABLES WHERE TABLE_TYPE='VIEW';

 -- level 2
 create VIEW  app_publisher  as select a.AppName,p.PublisherName from Apps a INNER JOIN Publishers p on p.PublisherId=a.PublisherId;
 select * from app_publisher;
  create VIEW  app_Developers  as select a.AppName,d.DeveloperName from Apps a INNER JOIN Developers d on d.DeveloperId=a.DeveloperId;
 select * from app_Developers;
  create VIEW app_category  as select a.AppName,c.categoryname from Apps a INNER JOIN Categories c on c.categoryId=a.categoryId;
 select * from app_category;
create view app_details as select a.*,d.Developername,d.country from Apps a JOIN Developers d on a.DeveloperId = d.DeveloperId ;
select * from app_details;
create view app_count_categories as select c.categoryname,count(a.Appid) as total_no_of_apps from Apps a right join categories c on a.categoryid=c.categoryid group by categoryname;
select * from app_count_categories;
create view app_count_Developers as select d.Developername,count(a.Appid) as total_no_of_apps from Apps a right join Developers d on a.developerid=d.developerid group by Developername;
select * from app_count_Developers;
create view app_count_Ratings as select c.categoryname,avg(a.Rating) as total_no_of_apps from Apps a right join categories c on a.categoryid=c.categoryid group by categoryname;
select * from app_count_Ratings;
create view app_Rating_Developer as select d.Developername,a.appname ,a.Rating from Apps a join Developers d on a.developerid=d.developerid where a.Rating>=4.5;
select * from app_Rating_Developer;
select appname,rating,developername from app_Rating_Developer where rating>4.5;
show create view app_developers;

 -- level 3
 create view developer_count1 as select d.Developername,count(a.appname) as app_count from Apps a right join Developers d on d.developerid=a.developerid group by d.developerid having count(a.appname)>1;
 select * from developer_count1;
 create view minmax_category as select c.categoryname,min(a.rating) as lowest_rating ,max(a.rating) as highest_rating from Apps a right join Categories c on a.categoryid=c.categoryid group by c.categoryname;
 select * from minmax_category;
  create view developer_count as select d.Developername,count(a.appname) as app_count from Apps a right join Developers d on d.developerid=a.developerid group by d.developerid;
 select * from developer_count;
 create view alltables as select  a.AppName ,d.DeveloperName , p.publisherName,c.CategoryName from Apps a 
 INNER JOIN Developers d on d.DeveloperId=a.DeveloperId 
 INNER JOIN Publishers p on p.publisherid=a.publisherid 
 INNER JOIN Categories c on c.CategoryId=a.CategoryId;
 select * from alltables;
 CREATE VIEW HighlyRatedApps AS
SELECT
    a.AppName,
    a.Rating,
    d.DeveloperName,
    c.CategoryName
FROM Apps a INNER JOIN Developers d ON a.DeveloperID = d.DeveloperID INNER JOIN Categories c ON a.CategoryID = c.CategoryID WHERE a.Rating >= 4.5;
select * from HighlyRatedApps;

create view publishercount as SELECT p.PublisherName,Count(a.AppID) AS Application_count,SUM(a.Downloads) AS total_Downloads FROM Publishers p right JOIN Apps a On p.PublisherID=a.PublisherID
GROUP BY p.PublisherID,p.PublisherName ;
select * from publishercount;
select * from HighlyRatedApps where rating>4.5 order by rating  DESC;

create view app_rating_view as select appid,appname,rating from Apps;
update app_rating_view set rating=4.9 where appid=1006;
select * from app_rating_view;
select * from Apps;

drop view  HighlyRatedApps;
show full tables where table_type='VIEW';

