Primary key : constrains uniquely identifies each record in a table;
  > it is unique and cannot be null

foreign key : field in one table that  refers to primary key of other table;
--while creating forign key
create table [tables_name] (lid int ,model varchar(500) not null,price int, sidint, FORIGN KEY(sid) REFERENCES [students]([id]));
--add 
alter table [tablename] ADD FOREIGN KEY (column_name) REFERENCES [table_name](main_column_name);
  alter table laptops ADD foreign key (sid) references students(id);
  +-------+------------+--------+------+
  | lp_id | lp_model   | price  | sid  |
  +-------+------------+--------+------+
  |   123 | Victus     |  65000 |    3 |
  |   124 | HP OMEN    |  60000 |    5 |
  |   125 | tab        |  35000 |    1 |
  |   126 | Vivobook   |  90000 |    1 |
  |   127 | Mackbook   | 340000 |    2 |
  |   129 | ACER Alien |  38000 |    6 |
  |   130 | Zenbook    |  65000 |    4 |
  +-------+------------+--------+------+

create table qualification (qid int primary key auto_increment,Pass_year varchar(4) not null,name varchar(50),about varchar(100),sid int,foreign key(sid) references students(id));

  +-----------+--------------+------+-----+---------+----------------+
  | Field     | Type         | Null | Key | Default | Extra          |
  +-----------+--------------+------+-----+---------+----------------+
  | qid       | int          | NO   | PRI | NULL    | auto_increment |
  | Pass_year | varchar(4)   | NO   |     | NULL    |                |
  | name      | varchar(50)  | YES  |     | NULL    |                |
  | about     | varchar(100) | YES  |     | NULL    |                |
  | sid       | int          | YES  | MUL | NULL    |                |
  +-----------+--------------+------+-----+---------+----------------+

   insert into qualification (pass_year,name,about,sid) values ("2021","class X||","with 75 percent",1);
  +-----+-----------+-----------+-----------------+------+
  | qid | Pass_year | name      | about           | sid  |
  +-----+-----------+-----------+-----------------+------+
  |   1 | 2019      | class X   | with 85 percent |    1 |
  |   2 | 2021      | class X|| | with 75 percent |    1 |
  +-----+-----------+-----------+-----------------+------+ 

HERE WE CONNECT STUDENTS TABLE WITH LAPTOPS AND QUALIFICATION WITH THE HELP OF FOREIGN KEY AND THE CONNECTIONS IS CALLED ONE TO MANY RELATIONSHIPNBECAUSE ONE STUDENTS HAVE MORE THAN 1 LAPTOP AND QUALIFICATION.
-- drop
we can find constrain name
 SELECT CONSTRAINT_NAME from INFORMATION_SCHEMA.KEY_COLUMN_USAGE where table_name='qualification' and column_name='sid';
+----------------------+
| CONSTRAINT_NAME      |
+----------------------+
| qualification_ibfk_1 |
+----------------------+
for delete 
alter table [table_name] drop foreign key [CONSTRAINT_NAME] ;
alter table laptops drop foreign key qualification_ibfk_1 ;