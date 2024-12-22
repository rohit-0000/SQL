union : 
we have two department 
+-------+------+-----------+                               
| empid | name | role      |                               +-------+------+-----------+
+-------+------+-----------+                               | empid | name | role      |
|     1 | A    | engineer  |                               +-------+------+-----------+                
|     2 | B    | salesman  |                               |     3 | C    | manager   |
|     3 | C    | manager   |                               |     6 | F    | marketing |
|     4 | D    | salesman  |                               |     7 | G    | salesman  |
|     5 | D    | engineer  |                               +-------+------+-----------+
|     6 | F    | marketing |
|     7 | G    | salesman  |
+-------+------+-----------+    

UNION :

select * from department1
union 
select * from department2;

+-------+------+-----------+
| empid | name | role      |
+-------+------+-----------+
|     1 | A    | engineer  |
|     2 | B    | salesman  |
|     3 | C    | manager   |
|     4 | D    | salesman  |
|     5 | D    | engineer  |
|     6 | F    | marketing |
|     7 | G    | salesman  |
+-------+------+-----------+

MINUS :
dep1 - dep2
select department1.* from department1 left join department2 using (empid) where department2.empid is NULL;
+-------+------+----------+
| empid | name | role     |
+-------+------+----------+
|     1 | A    | engineer |
|     2 | B    | salesman |
|     4 | D    | salesman |
|     5 | D    | engineer |
+-------+------+----------+

department2 - department1
select department2.* from department2 left join department1 using (empid) where department1.empid is NULL;
+-------+------+-----------+
| empid | name | role      |
+-------+------+-----------+
|     6 | F    | marketing |
|     7 | G    | salesman  |
+-------+------+-----------+

Intersection:
select department1.*,department2.* from department1 left join department2 using(empid) where department2.empid is not null ;
select department1.*,department2.* from department1 inner join department2 using(empid) ;
+-------+------+---------+-------+------+---------+
| empid | name | role    | empid | name | role    |
+-------+------+---------+-------+------+---------+
|     3 | C    | manager |     3 | C    | manager |
+-------+------+---------+-------+------+---------+