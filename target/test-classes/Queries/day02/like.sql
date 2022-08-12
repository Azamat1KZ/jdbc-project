select * from EMPLOYEES;

/*
 LIKE
 Percent (%) --> for matching any sequence of chars
 Underscore (_) --> for matching any single char

 - contains
 - startwith
 - endswith
 */

 --get all empl whose firstname startswith "B"

select * from EMPLOYEES
where FIRST_NAME like 'B%';

--get all empl whose firstname startswith "B" and has 5 letters

select * from EMPLOYEES
where FIRST_NAME like 'B____';

-- get me 5 letter names where middle char is z
select * from EMPLOYEES
where FIRST_NAME like '__z__';

-- get me firstname where second char is a
select * from EMPLOYEES
where FIRST_NAME like '_a%';

--get me all info whose firstname ends with R
select * from EMPLOYEES
where FIRST_NAME like '%r';

--get me any job title info endswith manager from jobs table
select * from JOBS
where JOB_TITLE like '%Manager';

--how many employee we have (get me any job title info endswith manager from jobs table)
select count(*) from JOBS
where JOB_TITLE like '%Manager';
