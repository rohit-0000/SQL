MATHS Functions

1. ABS(no); IT WILL return the absolute value of no.
    SELECT -5 "NUMBER",ABS('-5') "MOD";
    +--------+-----+
    | NUMBER | MOD |
    +--------+-----+
    |     -5 |   5 |
    +--------+-----+

2. cos(values in radian)   --> 180/pie * degree
    select cos(30);
    +---------------------+
    | cos(30)             |
    +---------------------+
    | 0.15425144988758405 |
    +---------------------+

    select cos(radians(30));
    +--------------------+
    | cos(radians(30))   |
    +--------------------+
    | 0.8660254037844387 |
    +--------------------+

3. radians(degr) - it convert degree to radians;
    select radians(30);
    +--------------------+
    | radians(30)        |
    +--------------------+
    | 0.5235987755982988 |
    +--------------------+

4. degrees(rad) - it convert radian to degree
    select degrees(0.5235987755982988);
    +-----------------------------+
    | degrees(0.5235987755982988) |
    +-----------------------------+
    |          29.999999999999996 |
    +-----------------------------+

5. log(num) - it gives  ln(num) 
    select log(10);
    +-------------------+
    | log(10)           |
    +-------------------+
    | 2.302585092994046 |
    +-------------------+

6. log10(10) - it return log base 10 value
    select log10(10);
    +-----------+
    | log10(10) |
    +-----------+
    |         1 |
    +-----------+

7. max(column_name)  -> max value from the column
   min(column_name)  -> min value from the column

        select  max(salary) from students;
        +-------------+
        | max(salary) |
        +-------------+
        |     1000000 |
        +-------------+
        1 row in set (0.00 sec)

        select  min(salary) from students;
        +-------------+
        | min(salary) |
        +-------------+
        |        9000 |
        +-------------+

8. pi() - it will return the value of pie
    select pi();
    +----------+
    | pi()     |
    +----------+
    | 3.141593 |
    +----------+

9. power(num,num1) - it return num ^ num1
    select power(3,4);
    +------------+
    | power(3,4) |
    +------------+
    |         81 |
    +------------+

10. SQRT(num) - it return the square root of num
    select sqrt(64);
    +----------+
    | sqrt(64) |
    +----------+
    |        8 |
    +----------+

11. floor(decimal) -> it return only natural part of decimal 
    select floor(25.987);
    +---------------+
    | floor(25.987) |
    +---------------+
    |            25 |
    +---------------+

12. exp(val) - it return e^val
    SELECT EXP(2);
    +------------------+
    | EXP(2)           |
    +------------------+
    | 7.38905609893065 |
    +------------------+

13. CEILING()- function returns the smallest integer value that is larger than or equal to a number.
    SELECT CEILING(25.75) AS CeilValue;
    +-----------+
    | CeilValue |
    +-----------+
    |        26 |
    +-----------+

14. The SIGN() function returns the sign of a number.
If number > 0, it returns 1
If number = 0, it returns 0
If number < 0, it returns -1

    select sign(-89);
    +-----------+
    | sign(-89) |
    +-----------+
    |        -1 |
    +-----------+

15. ROUND() function rounds a number to a specified number of decimal places.
    SELECT ROUND(235.415,1) AS RoundValue;
    +------------+
    | RoundValue |
    +------------+
    |      235.4 |
    +------------+

16. RAND() - it return random value b/w 0 & 1
    SELECT RAND();
    +---------------------+
    | RAND()              |
    +---------------------+
    | 0.48875097324024047 |
    +---------------------+

17. ACOS(val) it return the radian value;
     SELECT degrees(ACOS(0.25));
    +---------------------+
    | degrees(ACOS(0.25)) |
    +---------------------+
    |   75.52248781407008 |
    +---------------------+

    SELECT ACOS(0.25);
    +-------------------+
    | ACOS(0.25)        |
    +-------------------+
    | 1.318116071652818 |
    +-------------------+
