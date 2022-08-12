select * from employees;

-- CREATE TABLE

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

CREATE TABLE scrumteam777(

                          employeeId Integer PRIMARY KEY, --empid is Employee ID --> NOT NULL and UNIQUE
                          firstname varchar(30) not null,  -- cant be null
                          jobtitle varchar(20) not null,   -- cant be null
                          age Integer,    -- there is no constraints
                          salary Integer
);


select  * from scrumteam777;


/*
 INSERT
INSERT INTO tableName (column1, column2,...)
 VALUES (value1, value2 ... );
 */


INSERT INTO scrumteam777 (employeeId, firstname, jobtitle, age, salary)
VALUES (1,'Mike','Tester',25,120000);

INSERT INTO scrumteam777 (employeeId, firstname, jobtitle, age, salary)
VALUES (2,'John','Tester',27,130000);

INSERT INTO scrumteam777 (employeeId, firstname, jobtitle)
VALUES (3,'Dembe','Developer');

INSERT INTO scrumteam777
VALUES (4,'Henry','SM',30,150000);

select * from scrumteam777;

/*
 UPDATE
  UPDATE table_name
  SET column1 = value1,
        column2 = value2 , ...
  WHERE condition;
 */

-- Increase all employees salary
UPDATE scrumteam777
SET salary=salary+5000;

-- Increase Testers employees salary
UPDATE scrumteam777
SET salary=salary+50000
where jobtitle='Tester';

select * from scrumteam777;

-- Add age for Dembe
UPDATE scrumteam777
SET age=34,salary=160000
where firstname='Dembe';

/*
 DELETE
DELETE FROM table_name
WHERE condition;
 */

DELETE from scrumteam777
where firstname='Dembe';

select * from scrumteam777;

-- commit work or commit --> BOTH works
commit ;

/*
 ALTER
 we will use this keyword to update table structure
 */
 -- Add new column
ALTER table scrumteam777
ADD gender varchar(20);

select  * from  scrumteam777;

--update all scrumteam gender as male
UPDATE  scrumteam777
set gender='Male';

select * from scrumteam777;

--rename the column
ALTER table scrumteam777
rename column salary to annual_salary;

--drop column
alter table scrumteam777
drop column gender;

--rename table
alter table scrumteam777
rename to agileteam777;

select * from scrumteam777; --> scrumteam --> agileteam (renamed)

select * from agileteam777;

--truncate
truncate table agileteam777;

--drop
drop table agileteam777;

--IQ--> What is the difference between DROP and TRUNCATE?

--Trunc --> will delete all table content/data
--drop --> delete table itself with datas

commit; -- to save changes
--view --> it does not exist in db with data. It is just a virtual table to reuse that query
---table--> it exists in db with it's data

