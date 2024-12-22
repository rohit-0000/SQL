join-when we have to fetch data from multiple tables.

SIMPLE JOIN :- there is no need of keywords that's ' why we call it as equi join
Q) what column name , city,lp_model,price
    select students.name,students.city,laptops.lp_model,laptops.price from students,laptops where students.id=laptops
    .sid;
    +---------+--------------+------------+--------+
    | name    | city         | lp_model   | price  |
    +---------+--------------+------------+--------+
    | ROHIT   | BIHAR SHARIF | tab        |  35000 |
    | ROHIT   | BIHAR SHARIF | Vivobook   |  90000 |
    | ABHINAV | RAJGIR       | Mackbook   | 340000 |
    | VINEET  | BIDAR        | Victus     |  65000 |
    | AMAN    | BANGLORE     | Zenbook    |  65000 |
    | RAJAN   | BIHAR SHARIF | HP OMEN    |  60000 |
    | MITHI   | SAMASTIPUR   | ACER Alien |  38000 |
    +---------+--------------+------------+--------+

INNER JOIN: WE GOT SAME RESULT AS EQUI JOIN

SELECT S.NAME,S.CITY,L.LP_MODEL,L.PRICE FROM STUDENTS S INNER JOIN LAPTOPS L ON S.ID=L.SID;
+---------+--------------+------------+--------+
| NAME    | CITY         | LP_MODEL   | PRICE  |
+---------+--------------+------------+--------+
| ROHIT   | BIHAR SHARIF | tab        |  35000 |
| ROHIT   | BIHAR SHARIF | Vivobook   |  90000 |
| ABHINAV | RAJGIR       | Mackbook   | 340000 |
| VINEET  | BIDAR        | Victus     |  65000 |
| AMAN    | BANGLORE     | Zenbook    |  65000 |
| RAJAN   | BIHAR SHARIF | HP OMEN    |  60000 |
| MITHI   | SAMASTIPUR   | ACER Alien |  38000 |
+---------+--------------+------------+--------+