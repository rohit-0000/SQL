String  Functions
1. Length(str)-find the Length
select length("i am rohit") from students;
select name as nm, length(name)   from students;

2. CONCATE(STR1,STR2) - FOR Concatination
select concat("a + b" , " = " ," b + a") as concatination;
select concat (name ," --> ",city) concatination from students;

3. LCASE(str) - to lowercase
select concat(name , " --> " , lcase(name)) "UPPERCASE to lowercase" from students;

4. SUBSTRING(str,start,Length) - extract part of the String
select substring(name,1,3) from students;

5. TRIM(str) - removes leading and trailing spaces
select trim("           it will   romove extra starting and ending spaces               ");

6. REVERSE(str) - reverse the String
select reverse(" IT WILL REVERSE THE STRING");

7. STRCMP(str1,str2) -it will compare two string.
                     return 1 if (str1>str2)
                     return 0 if (str1=str2)
                     return -1 if(str1<str2)

8. LOCATE(char,str);->it will return the position of char in string
    SELECT LOCATE('H','ROHIT');
    +---------------------+
    | LOCATE('H','ROHIT') |
    +---------------------+
    |                   3 |
    +---------------------+

Other IMPORTANT Functions

8. CURDATE- It will return current date in format yyyy-mm-dd;
    select curdate();
    +------------+
    | curdate()  |
    +------------+
    | 2024-06-07 |
    +------------+

9. CURTIME - It will return current time in format hh-mm-substring.
    select curtime();
    +-----------+
    | curtime() |
    +-----------+
    | 23:38:26  |
    +-----------+

10. NOW - It will return current date and time 
    select now();
    select now();
    +---------------------+
    | now()               |
    +---------------------+
    | 2024-06-07 23:39:59 |
    +---------------------+

11. IF(condition,true,false);
    select *,if(salary<50000,"POOR","RICH") from students;
    +----+---------+--------------+---------+------------+--------------------------------+
    | id | name    | city         | salary  | phone_no   | if(salary<50000,"POOR","RICH") |
    +----+---------+--------------+---------+------------+--------------------------------+
    |  1 | ROHIT   | BIHAR SHARIF | 1000000 | 9135408056 | RICH                           |
    |  2 | ABHINAV | RAJGIR       | 100000  | 123456789  | RICH                           |
    |  3 | VINEET  | BIDAR        | 10000   | 987654321  | POOR                           |
    |  4 | AMAN    | BANGLORE     | 500000  | 999847651  | RICH                           |
    |  5 | RAJAN   | BIHAR SHARIF | 900000  | 989573245  | RICH                           |
    |  6 | MITHI   | SAMASTIPUR   | 9000    | 965489354  | POOR                           |
    +----+---------+--------------+---------+------------+--------------------------------+

12. IFNULL(null,test) - it will check for null if present then return "test" else value itself.
    select ifnull(NULL,"condition satisfied");
    +------------------------------------+
    | ifnull(NULL,"condition satisfied") |
    +------------------------------------+
    | condition satisfied                |
    +------------------------------------+

    select ifnull("ROHIT","condition satisfied");
    +---------------------------------------+
    | ifnull("ROHIT","condition satisfied") |
    +---------------------------------------+
    | ROHIT                                 |
    +---------------------------------------+

13. database(); -it will return the database opened.
     select database();
    +-------------+
    | database()  |
    +-------------+
    | boot_course |

14. version();-it will return the version of current sql
    select version();
    +-----------+
    | version() |
    +-----------+
    | 8.0.37    |
    +-----------+
15. user(); - it will return the user name;
    select user();
    +----------------+
    | user()         |
    +----------------+
    | root@localhost |
    +----------------+

select database()"DB",version()"VER",user()"USER";
+-------------+--------+----------------+
| DB          | VER    | USER           |
+-------------+--------+----------------+
| boot_course | 8.0.37 | root@localhost |
+-------------+--------+----------------+

16. IN()- we use IN inplace of multiple or
        select * from students where id=1 or id=3 or id=5;  OR
        select * from students where id in(1,3,5);
        +----+--------+--------------+---------+------------+
        | id | name   | city         | salary  | phone_no   |
        +----+--------+--------------+---------+------------+
        |  1 | ROHIT  | BIHAR SHARIF | 1000000 | 9135408056 |
        |  3 | VINEET | BIDAR        |   10000 | 987654321  |
        |  5 | RAJAN  | BIHAR SHARIF |  900000 | 989573245  |
        +----+--------+--------------+---------+------------+
17. BETWEEN - we use betweent to select condition in between two given value.
        select * from students where id in(1,3,4,5);
        select * from students where id BETWEEN 1 and 5;
18 . LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
Wildcard characters are used with the LIKE
%	Represents zero or more characters
_	Represents a single character

    select * from students where city like "B%";  -- 1st char is b
    +----+--------+--------------+---------+------------+
    | id | name   | city         | salary  | phone_no   |
    +----+--------+--------------+---------+------------+
    |  1 | ROHIT  | BIHAR SHARIF | 1000000 | 9135408056 |
    |  3 | VINEET | BIDAR        |   10000 | 987654321  |
    |  4 | AMAN   | BANGLORE     |  500000 | 999847651  |
    |  5 | RAJAN  | BIHAR SHARIF |  900000 | 989573245  |
    +----+--------+--------------+---------+------------+

    select * from students where name like '_i%'; --2nd char is i
    +----+--------+------------+--------+-----------+
    | id | name   | city       | salary | phone_no  |
    +----+--------+------------+--------+-----------+
    |  3 | VINEET | BIDAR      |  10000 | 987654321 |
    |  6 | MITHI  | SAMASTIPUR |   9000 | 965489354 |
    +----+--------+------------+--------+-----------+

19. DISTINCT gives the distinct values in a row
    select distinct city from students;
    +--------------+
    | city         |
    +--------------+
    | BIHAR SHARIF |
    | RAJGIR       |
    | BIDAR        |
    | BANGLORE     |
    | SAMASTIPUR   |
    +--------------+