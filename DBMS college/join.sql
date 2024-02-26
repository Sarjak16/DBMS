/* creating tables*/
create table demo_employee (Ename varchar(30) not null,
address varchar(30) not null,
age number(5) not null );

create table demo_worker (Ename varchar(30) not null,
designation varchar(30) not null,
salary number(30) not null );

/*inserting values in the table*/
insert all into demo_employee (Ename, address, age) values( 'ram', 'ktm', 29)
into demo_employee (Ename, address, age) values( 'hari', 'bkt', 35)
into demo_employee (Ename, address, age) values( 'sita', 'ltp', 24)

into demo_worker(Ename, designation, salary) values( 'ram', 'manager', 25000)
into demo_worker(Ename, designation, salary) values( 'hari', 'staff', 12000)
into demo_worker(Ename, designation, salary) values( 'shyam', 'director', 35000)

select * from dual;

/*Natural join*/
select * from demo_employee natural join demo_worker ;

/* Left outer join */
select * from demo_employee left outer join demo_worker on demo_employee.ename = demo_worker.ename;

/*not to display two ename inoutput*/

select demo_employee.ename,address, age, designation, salary from demo_employee left outer join demo_worker on demo_employee.ename = demo_worker.ename;

/* right outer join */
select demo_employee.ename,address, age, designation, salary from demo_employee right outer join demo_worker on demo_employee.ename = demo_worker.ename;

/* full outer join */
select * from demo_employee full outer join demo_worker on demo_employee.ename = demo_worker.ename;

/*inner join*/
select * from demo_employee inner join demo_worker on demo_employee.ename = demo_worker.ename;