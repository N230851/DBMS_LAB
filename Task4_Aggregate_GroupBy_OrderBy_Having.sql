USE PlaystoreDB;
 -- Level 0
SELECT COUNT(*) FROM Apps;
SELECT AVG(Rating) from Apps;
select max(Rating) from Apps;
select min(Rating) from Apps;
SELECT sum(Downloads) FROM Apps;
select * from Apps Order by Rating desc;

 -- Level 1
select categoryId, count(categoryID) from Apps group by categoryId;
select categoryId, avg(Rating) from Apps group by categoryId;
select max(price),min(price) from Apps;
select * from Apps order by Downloads desc;
select DeveloperId, count(DeveloperID) from Apps group by DeveloperId;
select categoryId, count(categoryID) from Apps group by categoryId having count(categoryId)>1;

 -- Level 2
select DeveloperId ,sum(Downloads) from Apps group by DeveloperId;
select PublisherId ,avg(Rating) from Apps group by PublisherId;
select DeveloperId ,count(DeveloperId) from Apps group by DeveloperId having count(DeveloperId)>1;
select categoryId, avg(Rating) from Apps group by categoryId having  avg(Rating)>4.3 ;
select categoryId, count(categoryID) as countcategory from Apps group by categoryId order by countcategory desc;
select * from Apps where Rating =(select max(Rating) from Apps);
select DeveloperId ,sum(price) from Apps group by DeveloperId;

