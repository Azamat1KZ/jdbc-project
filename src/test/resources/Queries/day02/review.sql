select * from employees;
select * from JOBS
where JOB_TITLE='President' or JOB_TITLE='Sales Manager' or JOB_TITLE='Finance Manager';

select * from JOBS
where JOB_TITLE IN('President', 'Sales Manager', 'Finance Manager');

select * from DEPARTMENTS
where MANAGER_ID is null;

select * from LOCATIONS
where COUNTRY_ID IN('US', 'UK');

select * from LOCATIONS
where COUNTRY_ID NOT IN('US', 'UK');

--Three ways to deselect Belgium as a country to be displayed:
select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME !='Belgium';

select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME <>'Belgium';

select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME NOT IN('Belgium');


