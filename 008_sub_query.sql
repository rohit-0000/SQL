subquery : 
it is alternate to joints .
Outer query depends on inner query. 
Alternative to joins. 
Nested queries. 

we have 3 tables employee,client,project.

+----+-------+--------+-----+-----------------+-------+----------+
| id | fname | lname  | age | email           | phone | city     |
+----+-------+--------+-----+-----------------+-------+----------+
|  1 | aman  | raj    |  32 | aman@gmail.com  | 89776 | delhi    |
|  2 | ram   | singh  |  44 | ram@gmail.com   |   222 | pawapuri |   Employee
|  3 | rahul | pandey |  22 | rahul@gmail.com |   444 | Kolkata  |
|  4 | jatin | Kumar  |  31 | jatin@gmail.com |   666 | Raipur   |
|  5 | pk    | prasas |  21 | pk@gmail.com    |   555 | jaipur   |
+----+-------+--------+-----+-----------------+-------+----------+

+----+------------+-----------+-----+-------------------+----------+----------+-------+
| id | first_name | last_name | age | email_id          | phone_no | city     | empid |
+----+------------+-----------+-----+-------------------+----------+----------+-------+
|  1 | mac        | Rogers    |  47 | mac@hotmail.com   |      333 | Kolkata  |     3 |
|  2 | max        | poirier   |  27 | max@gmail.com     |      222 | Kolkata  |     3 |
|  3 | peter      | jain      |  24 | peter@abc.com     |      111 | Delhi    |     1 |        client
|  4 | sushant    | Aggarwal  |  23 | sushant@yahoo.com |    45454 | Hydrabad |     5 |
|  5 | Pratap     | Singh     |  36 | p@xyz.com         |    77767 | Mumbai   |     2 |
+----+------------+-----------+-----+-------------------+----------+----------+-------+

+----+-------+------+------------+-----------+
| id | empid | name | start_date | client_id |
+----+-------+------+------------+-----------+
|  1 |     1 | A    | 2021-04-21 |         3 |
|  2 |     2 | B    | 2021-03-12 |         1 |   Project
|  3 |     3 | C    | 2021-01-16 |         5 |
|  4 |     3 | D    | 2021-04-27 |         2 |
|  5 |     5 | E    | 2021-05-01 |         4 |
+----+-------+------+------------+-----------+


 select *  from  employee where age in(select age from  employee where age>30);
+----+-------+-------+-----+-----------------+-------+----------+
| id | fname | lname | age | email           | phone | city     |
+----+-------+-------+-----+-----------------+-------+----------+
|  1 | aman  | raj   |  32 | aman@gmail.com  | 89776 | delhi    |
|  2 | ram   | singh |  44 | ram@gmail.com   |   222 | pawapuri |
|  4 | jatin | Kumar |  31 | jatin@gmail.com |   666 | Raipur   |
+----+-------+-------+-----+-----------------+-------+----------+

-- employee working in more than 1 project;
select *from employee where id in(select empid from project group by empid having(count(empid)>1));
+----+-------+--------+-----+-----------------+-------+---------+
| id | fname | lname  | age | email           | phone | city    |
+----+-------+--------+-----+-----------------+-------+---------+
|  3 | rahul | pandey |  22 | rahul@gmail.com |   444 | Kolkata |
+----+-------+--------+-----+-----------------+-------+---------+

--employee detail having age greator than average age;
select * from employee where id having age>(select avg(age) from employee);
+----+-------+-------+-----+-----------------+-------+----------+
| id | fname | lname | age | email           | phone | city     |
+----+-------+-------+-----+-----------------+-------+----------+
|  1 | aman  | raj   |  32 | aman@gmail.com  | 89776 | delhi    |
|  2 | ram   | singh |  44 | ram@gmail.com   |   222 | pawapuri |
|  4 | jatin | Kumar |  31 | jatin@gmail.com |   666 | Raipur   |
+----+-------+-------+-----+-----------------+-------+----------+

from clause - derive class
select max age person whose first name contain 'a'
    select max(age) max_age from (select * from employee where fname like "%a%") d_table;
    +---------+
    | max_age |
    +---------+
    |      44 |
    +---------+
for derived class we must have to assign allias

corelated subarray
find 3rd oldest employee

select * from employee e1 where 3=(select count(age) from employee e2 where e2.age>=e1.age);
+----+-------+-------+-----+-----------------+-------+--------+
| id | fname | lname | age | email           | phone | city   |
+----+-------+-------+-----+-----------------+-------+--------+
|  4 | jatin | Kumar |  31 | jatin@gmail.com |   666 | Raipur |
+----+-------+-------+-----+-----------------+-------+--------+

--view
create view custom_view as select fname,age,city from employee;
select * from custom_view;
+-------+-----+----------+
| fname | age | city     |
+-------+-----+----------+
| aman  |  32 | delhi    |
| ram   |  44 | pawapuri |
| rahul |  22 | Kolkata  |
| jatin |  31 | Raipur   |
| pk    |  21 | jaipur   |
+-------+-----+----------+

-- alter
alter view custom_view as select  fname,lname,age from employee;
select*from custom_view;
+-------+--------+-----+
| fname | lname  | age |
+-------+--------+-----+
| aman  | raj    |  32 |
| ram   | singh  |  44 |
| rahul | pandey |  22 |
| jatin | Kumar  |  31 |
| pk    | prasas |  21 |
+-------+--------+-----+

--dropping the view
drop view if exists custom_view; 