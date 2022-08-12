/*
 Distinct

 removes duplicate from requested result. Original one still into database
 */

 select FIRST_NAME from EMPLOYEES;

select Distinct FIRST_NAME from EMPLOYEES;

select distinct JOB_ID from EMPLOYEES;

select distinct COUNTRY_ID from LOCATIONS;


SELECT FIRST_NAME FROM employees

WHERE FIRST_NAME LIKE  'H%l';

SELECT * FROM employees
ORDER BY FIRST_NAME ASC , LAST_NAME DESC ;

SELECT FIRST_NAME FROM employees

WHERE LENGTH ( FIRST_NAME ) = 6 ;

SELECT FIRST_NAME FROM employees

WHERE LENGTH = 6 ;

SELECT FIRST_NAME FROM employees

WHERE FIRST_NAME LIKE '______';

SELECT * FROM employees

WHERE salary = (SELECT MAX ( salary ) FROM employees ) ;

SELECT * from  EMPLOYEES
order by SALARY desc;

SELECT * FROM employees

WHERE salary = MAX( salary ) ;


SELECT LAST_NAME FROM EMPLOYEES

WHERE LAST_NAME LIKE '%th';

