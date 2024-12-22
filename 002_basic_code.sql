show databases;
create database [db_name]; --create database learnsql;
drop database [db_name]; --drop database learnsql;
use [db_name]; --use learnsql;

--how to create table syntax
create table [tablename]([col1] colType(size)extra.....); --CREATE TABLE students (id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),city VARCHAR(100));


--show all tables
show tables

--describe the table
desc [tablename];-- desc students; 

--delete table
drop table [table_name]; 

--Table Alter
--add column
alter table [tablename] ADD [column_name] datatype; -- alter table students ADD salary int;
--modify colum
alter table [tablename] MODIFY [column_name] datatype [changes];
--rename column
alter table [tablename] rename column [old_col_name] to [new_col_name];
--delete column
alter table [tablename] drop column [col_name];

--insert data to a table
insert into [tablesname]([cols]) values ([values]);  
insert into [tablesname] values ([values]);  --we have to maintain order of column as in the table


--insert multiple values into column
insert into [tablename] ([cols]) values (),(),();

--edit data from tables
update [tablename] set [col_name]=[new_value] where [col_name]=[present_col_value];
if we have to change whole rows ,then use below command
    SET SQL_SAFE_UPDATE =0;

--delete data from table
delete from [tablename] where [column_name]=[column_data] ;
delete from [tablename] where [column_name]=[column_data] and [column_name1]=[column_data1] and .....;

--show tables
select * from [tablename];
select [column_name],[....] from [table_name];

--Alias
select [col_name] as [nick_name] ,... from [tablename];
select [col_name]  "[nick_name]" ,... from [tablename];
select [table_nk_name].[colm_name],.... from [table_name] [table_nk_name];

-- we can use where and ,or to get row in tables;
select * from [table_name] where [col_name]=[col_value],..; -- we can use and ,or , NOT

-- sorting of tables
select*from [table_name] order by [col_name] ;
select*from [table_name] order by [col_name] desc,[col_name1] asc,...;

--limit in table 
select*from [table_name] limit[number];
--limit in table by leaving some value
select*from [table_name] limit [number] offset[number];


-- count function
select count[column_name] from [table_name];

-- sum function
select sum[column_name] from [table _name];

-- avg function
select avg[column_name] from [table _name];

--group by
select city ,count(city) from students group by city;
+--------------+-------------+
| city         | count(city) |
+--------------+-------------+
| BIHAR SHARIF |           2 |
| RAJGIR       |           1 |
| BIDAR        |           1 |
| BANGLORE     |           1 |
| SAMASTIPUR   |           1 |
+--------------+-------------+

--group by having - it is just like where
select city ,count(city) from students group by city having count(city)>1;
