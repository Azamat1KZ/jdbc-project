select * from employees;
/*
 Inner Joins
 Only matching portion of the tables
 */

select * from CUSTOMER;
select *from ADDRESS;

select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER inner join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, ADDRESS.ADDRESS_ID,PHONE
from CUSTOMER inner join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--Aliases
--instead of using table name we can use alias to specify table
select FIRST_NAME, LAST_NAME, a.address_id, c.address_id, ADDRESS, PHONE
from CUSTOMER c join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;

/*
 Left Outer Join

 Matching part + only unique for LEFT table
 */
select FIRST_NAME, LAST_NAME, a.address_id, c.address_id, ADDRESS, PHONE
from CUSTOMER c left outer join ADDRESS a
                     on c.ADDRESS_ID = a.ADDRESS_ID;


/*
 Right Outer Join

 Matching part + only unique for Right table
 */
select FIRST_NAME, LAST_NAME, a.address_id, c.address_id, ADDRESS, PHONE
from CUSTOMER c right outer join ADDRESS a
                                on c.ADDRESS_ID = a.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, a.address_id, c.address_id, ADDRESS, PHONE
from ADDRESS a left join CUSTOMER c
on a.ADDRESS_ID = c.ADDRESS_ID

/*
 Full Outer Join

 Matching part + only unique for Right+ Left tables

 full outer join - full join
 */
select FIRST_NAME, LAST_NAME, a.address_id, c.address_id, ADDRESS, PHONE
from CUSTOMER c full join ADDRESS a
                                 on c.ADDRESS_ID = a.ADDRESS_ID;

