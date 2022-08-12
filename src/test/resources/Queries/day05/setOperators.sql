select * from employees;

create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers777(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers777 values (1, 'Steven', 110000);
insert into testers777 values(2, 'Adam', 105000);
insert into testers777 values (3, 'Lex', 100000);

commit work;

select * from developers;
select * from TESTERS777;


select * from  DEVELOPERS
UNION
select * from TESTERS777;

select Names from  DEVELOPERS
UNION
select Names from TESTERS777;

/*
 Union All
 -- Doesn't remove Dups
 -- Doesn't sort results
 */
select * from  DEVELOPERS
UNION ALL
select * from TESTERS777;

select Names from  DEVELOPERS
UNION ALL
select Names from TESTERS777;

--Minus

select * from  DEVELOPERS
MINUS
select * from TESTERS777;

select Names from  DEVELOPERS
MINUS
select Names from TESTERS777;

--Intersect
select * from  DEVELOPERS
intersect
select * from TESTERS777;

select Names from  DEVELOPERS
intersect
select Names from TESTERS777;
