use jayadb;
drop table dept;
create table dept (
DEPTNO int not null primary key comment 'department number',
DNAME varchar(20) not null comment 'Name of the department ',
LOC varchar(20) not null comment 'location of the department'
);
select * from dept;
describe dept;
show full columns from dept;
 
 create table EMP(
 EMPNO int not null primary key comment 'Employees number',
 ENAME varchar(20) not null comment 'empolyees name',
 JOB char(10) not null comment 'Desigation',
 MGR int null comment 'Respective managers EMPNO',
 HIERDATE date not null comment 'Date of Joining ',
 SAL numeric(9,2) not null comment 'Basic salary',
 COMM numeric(7,2) null comment 'Commision',
 DEPTNO int not null comment 'Department number'
 );
 select * from EMP;
 describe EMP;
 show full columns from EMP;
  alter table EMP add constraint fk_EMP foreign key (DEPTNO) references dept(DEPTNO)
  on delete cascade
  on update cascade ;
  show create table EMP;
   insert into dept values ( 10 , 'ACCOUNTING' ,'NEWYORK');
   insert into dept values (20 ,'RESEARCH', 'DALLAS');
   insert into  dept values (30 , 'SALES','CHAICGO');
   insert into dept values (40,'OPERATIONS','BOSTAIN');
   insert into EMP values ( 7399 , 'SMITH' ,'CLERK', 7902,'1980-12-17',800,NULL,20);
   insert into EMP values ( 7499 , 'ALLEN' ,'SALESMAN', 7698,'1981-02-20',1600,300,30);
   insert into EMP values ( 7521 , 'WARD' ,'SALESMAN', 7698,'1981-02-20',1250,500,30);
   insert into EMP values ( 7566 , 'JONES' ,'MANGER', 7839,'1981-04-01',2975,NULL,20);
   insert into EMP values ( 7654 , 'MARTIN' ,'SALESMAN', 7698,'1981-10-28',1260,null,30);
   insert into EMP values ( 7698 , 'BLAKE' ,'MANGER', 7839,'1980-05-02',2850,NULL,20);
   insert into EMP values ( 7782 , 'CLARK' ,'ANALYST', 7566,'1982-12-09',3000,NULL,30);
   insert into EMP values ( 7839 , 'KING' ,'PRESIDENT',NULL ,'1981-11-17',5000,NULL,10);
   insert into EMP values ( 7844 , 'TURNER' ,'SALESMAN', 7698,'1981-10-08',1500,NULL,30);
   insert into EMP values ( 7876 , 'ADAMS' ,'CLERK', 7788,'1983-01-12',1100,NULL,20);
   insert into EMP values ( 7900 , 'JAMES' ,'CLERK', 7698,'1981-12-03',950,NULL,30);
   insert into EMP values ( 7902 , 'FORD' ,'ALANYST', 7566,'1983-12-04',3000,NULL,20);
   update EMP value set COMM='1400' where EMPNO=7654 ;
   select * from EMP;   
   select * from dept;
   select ENAME, SAL from EMP;
   select DEPTNO ,EMPNO, MGR from EMP;
   select DNAME, LOC from dept;
   select * from EMP  where DEPTNO=20;
   select ENAME, SAL from EMP where SAL>1000;
   select EMPNO, ENAME from emp where job='MANGER';
   select ENAME from EMP Where JOB='CLERK' and DEPTNO=20;
   select ENAME from emp where job='ALANYST' or job= 'SALESMAN';
   select * from EMP where HIERDATE <='1981-09-30';
   select ENAME, HIERDATE from EMP;
   select ENAME, date_format (HIERDATE , '%m/%d/%y') as formateddate from EMP;
   select ENAME, date_format (HIERDATE , '%m/%d/%Y') as formateddate from EMP;
   select ENAME, date_format (HIERDATE , '%d/%m/%Y') as formateddate from EMP;
   select ENAME, date_format (HIERDATE , '%w ,%d ,%m ,%Y') as formateddate from EMP;
      select ENAME, date_format (HIERDATE , '%w ,%d ,%M ,%Y') as formateddate from EMP;
       select ENAME, date_format (HIERDATE , '%W ,%d ,%m ,%Y') as formateddate from EMP;
        select ENAME, date_format (HIERDATE , '%w ,%D ,%m ,%Y') as formateddate from EMP;
         select ENAME, date_format (HIERDATE , '%W ,%D ,%M ,%Y') as formateddate from EMP;
          select ENAME, date_format (HIERDATE , '%W ,%D ,%M ,%Y ,%h:%i %p') as formateddate from EMP;
          Select ENAME from EMP where JOB<>'MANGER' ;
Select ENAME from EMP where EMPNO=7369 or EMPNO=7521 or EMPNO=7839 or EMPNO=7934 or EMPNO=7788;
Select ENAME from EMP where EMPNO IN (7369,7521,7839,7934,7788);
Select * from EMP where DEPTNO not in (10,30,40);
Select ENAME, SAL from EMP where SAL between 1000 and 2000;
Select ENAME from  EMP where HIERDATE not between '1981-06-30' and '1981-12-13';
Select ENAME from EMP where COMM Is null;
Select ENAME, JOB from EMP where MGR is null;
Select ENAME from EMP where COMM is not null;
Select ENAME from EMP where ENAME like 'S%';
Select ENAME from EMP where ENAME like '%S';
Select ENAME from EMP where ENAME like '_____';
Select ENAME from EMP where ENAME like '_I';
Select ENAME from EMP where ENAME like '_A';
Select empno, ename, sal from emp order by sal;
Select ENAME, HIERDATE  as date_of_joining from EMP order by date_of_joining desc;
Select DEPTNO,JOB, ENAME, SAL from EMP order by DEPTNO desc, SAL desc;
Select EMPNO, ENAME, SAL from EMP order by 3;
Select ENAME, SAL, SAL * .1 “PF” , SAL * .5 “HRA”, SAL * .3 “DA” , SAL+(SAL * .5) + (SAL * .3) + (SAL * .1) “GROSS” from EMP order by 6 ;
Select count(*) from emp;
Select count(distinct job) from emp;
Select sum(sal) from emp;
Select max(sal) from emp where job='salesman';
Select min(sal) from emp;
Select avg(sal), count(*) from emp where deptno=20;
Select deptno, count(*) from emp group by deptno;
Select deptno, sum(sal) from emp group by deptno;
Select job, count(*) from emp group by job order by 2 desc;
Select job, sum(sal), avg(sal), max(sal), min(sal) from emp group by job;
Select job, avg(sal) from emp where job !=’manager’ group by job;
Select deptno, avg(sal) from emp group by deptno having count(*) >5;
Select job, max(sal) from emp group by job having max(sal) >=5000;
select ename , job , coalesce(mgr,'not applicable') from emp;
select ename , job , coalesce(comm,0) from emp;
select ename , job , ifnull(comm,0) as commision from emp;
select ename , job   from emp where isnull(comm);
 update EMP value set COMM='1400' where EMPNO=7839 ;
 update emp set comm=coalesce(comm,2300) where empno=7902;
 select * from EMP;
 update emp set mgr=0000 where isnull(mgr);
 select ename, mgr ,job , if(isnull(mgr),'no manger',mgr)  as manger from emp;
select ename, mgr ,job , if(isnull(mgr),0000 ,mgr)  as manger from emp;
 select * from emp where isnull(mgr);
 select ename ,sal, isnull(comm ,3) as no_commission from EMP;
 
 
 create table orders (
orderid int not null primary key auto_increment comment 'order number',
ordername  varchar(20) not null comment 'order name  ',
orderdate date not null comment 'date on which order was placed',
ordervalue int not null  comment 'order value ',
check(ordervalue>0)
);
select * from orders;
insert into orders values (3,'birayani','21-03-23',6);

show databases;
use classicmodels;
show tables;
select * from customers;
select * FROM orders;
 
 
use jayadb;
 show tables;
 select * from emp;
 select hierdate from emp;
 select empno, cast(hierdate as date ) as dateofjoining from emp;
  select empno, cast(hierdate as datetime )  from emp;
  select empno, cast(date_format(hierdate ,'%Y-%M-%D') as char ) as  doj from emp;
    select empno, cast(year(hierdate) as char  ) as dateofjoining  from emp  ;
    select empno,
    case 
    when cast(year(hierdate)as char)> 1982 then cast(year(hierdate)as char)
    else 'olderemployee'
    end as name from emp;
    select empno, convert (hierdate using utf8mb4 ) as dateofjoining from emp;
     select empno, convert (year(hierdate), unsigned ) as dateofjoining from emp;
      select empno, convert (hierdate ,signed ) as dateofjoining from emp;
      select empno, convert (hierdate ,unsigned ) as dateofjoining from emp;
       select empno, convert (hierdate using utf8mb3 ) as dateofjoining from emp;
    
    select empno , convert(ename using utf16 ) as empname from emp;
    select convert ('mphasis' using utf16le);
    select cast('12345' as unsigned);
      select cast('123.5' as unsigned);
      select cast('12345' as signed);
       select cast('12.45' as signed);
       
	show tables;
    rename table employees to person;
    select * from person;
    alter table person rename column employeenumber to empid;
    describe person;
    alter table person change firstname firstname varchar(20);
    select * from person;
    alter table person change firstname fname varchar(20);
    alter table person change email email varchar(50);
    alter table person modify email varchar(50)  null;
    alter table person modify empid int not null primary key;
    insert into person values( 1005,'john','wick','x5667','johnny',7,'null','dierctor');
    insert into person values( 1006,'jayre','rick','x76879','jhoy',2,null,'hero');
    update person set email='johnywick@classic.com' where empid=1005;
    update person set email='jayreddy@classicmodel.com' where empid=1006 and email is null;
    delete from person where empid=1006;
    insert into person values(1009,'jaaaa','hertw','q45678','jhode',4,'chota','joker');
    update person set email='chotabheem@classicmodel.com' where empid=1009 and email is  not null;
    select * from orders where ordervalue=2;
    select *  from orders where ordervalue> '2';
    desc orders;
    delete from orders where orderid=10 in (1,4);
    select * from orders;
    start transaction;
    delete from orders where orderid=10;
    commit;
    rollback;
    select * from orders where ordervalue>5 and ordervalue<10;
    
    
    use classicmodels;
select * from employees,customers;    
create table emp_cust as select lastname , firstname ,email ,jobtitle ,customername ,addressline1 ,city from empolyees, customers;
select * from emp_cust ;
  desc emp_cust;
  create table empdata as select * from empolyees;
  select * from empdata;
  create table emp_structure as select * from employees where 1=0;
  select * from emp_structre ;
  desc emp_structure ;
  select * from emp_structure;
  
  use jayadb;
create table mydata(
slno int primary key ,
name char(20) not null,
marks int not null
);
insert into mydata values (1 ,'a',10),(2,'a',20),(3,'b',30),(4,'c',40),(5,'c',50),(6,'b',90);
select * from mydata;
select name,sum(marks) from mydata group by name;
select name,avg(marks) from mydata group by name;

 use classicmodels;
  select * from products;
select * from productlines;
select productline,avg(buyprice) as averageprice  from products group by productline order by productline ;
select count(*) as totalrows  from products;
select productline,count(*) as totalcount  from products group by productline order by productline ;
select productcode, sum(priceeach*quantityordered) total from orderdetails  group by productcode order by total desc;
select productcode,  productname,sum(priceeach*quantityordered) total from orderdetails inner join products  using( productcode) group by productcode  order by total desc;
select max(buyprice) highestprice from products;
select min(buyprice) highestprice from products;
select * from customers ;
select customername,city, coalesce(state,'not provided ') as state ,country from customers;
select customername,city, state ,country from customers where isnull(state);
select customername,city, state ,country from customers where state is not null;
select * from products ;

select productname, greatest(buyprice) , least(buyprice) from products;

select greatest(10,20,30) , least(10,20,30,40);

select upper(customername), upper(contactlastname) from customers;
select lower(customername), lower(contactlastname) from customers;
select contactlastname, contactfirstname, concat(contactlastname, '|', contactfirstname) as fullname from customers;
select contactlastname, contactfirstname, concat(contactlastname, '    ', contactfirstname) as fullname from customers;
select contactlastname, contactfirstname,city,state,concat_ws( ',', contactlastname,'', contactfirstname,city,state) as fullname from customers;




show character set;
select @@character_set_database;
select length ('varshini') as numofcharacters;
use jayadb;
select * from person;
update person set email=replace(email,'classicmodelcars','mphasis') where empid>1000 or email like '%classicmodelcars.%';
desc person;
set sql_safe_updates =0;
select curdate() ,current_date(),current_date(),now(),sysdate(),utc_date(),utc_time();
select convert_tz('current_date()','','america/newyork');

use classicmodels;

show tables;
select * from employees;
 select contactfirstname, contactlastname from customers union select lastname, firstname from employees;
select lastname, firstname from empolyees union select contactfirstname, contactlastname from customers;
select lastname, firstname from empolyees union all select contactfirstname, contactlastname from customers;
  select concat(lastname, ' ',contactlastname ), 'employee' as contacttype from empolyees
  union
  select concat(contactfirstname, ' ' ,contactlastname),'customers' as contacttype from customers order by 2 ;
  
  DESCRIBE employees;
  
  select firstname from employees except all select contactfirstname from customers order by firstname; 
  select firstname from employees  intersect  select contactfirstname from customers order by firstname;
  select firstname from employees intersect all select contactfirstname from customers order by firstname;
  select firstname from employees intersect distinct all select contactfirstname from customers order by firstname;
  
grant all privileges on jayadb.* to jaya@localhost;
create user 'tom'@'localhost' identified by 'tom@123';
create user 'jerry'@'localhost' identified by 'jerry@123';

grant select on jayadb.* to tom@localhost;
grant select on jayadb.* to jerry@localhost;
grant insert on jayadb.dept to tom@localhost;
grant update on jayadb.dept to tom@localhost;
revoke all on jayadb.* from jerry@localhost;
grant select on jayadb.dept to jerry@localhost;
select * from jayadb.emp;
select user from mysql.user;
grant select (ename,job,sal,comm) on jayadb.emp to jerry@localhost ;
select * from emp;
alter user 'tom'@'localhost' identified by 'tom@123' account lock;
select user,host,account_locked from mysql.user;
alter user 'tom'@'localhost' account unlock;
  
  
  create role datawriter@localhost;
  show grants  for datawriter@localhost; 
  grant select,insert,update,delete on jayadb.* to datawriter@localhost ;
grant  datawriter@localhost to tom@localhost;
show grants for tom@localhost;
show grants for tom@localhost using datawriter@localhost ;

use classicmodels;
select * from payments;
select max(amount) from payments ;
select customernumber,checknumber ,amount   from payments where amount= (select max(amount) from payments) ;
select customernumber,checknumber ,amount   from payments where amount> (select max(amount) from payments) ;
select * from customers ;
select * from orders ;
select distinct customernumber from orders;
select customername from customers where customernumber not in (select distinct customernumber from orders );
select * from orders where customernumber=125;

select * from orderdetails;

select max(items),min(items),floor(avg(items)) from 
(select ordernumber ,count(ordernumber) as items from orderdetails
 group by ordernumber) as lineitems;
 
 select ordernumber,count(ordernumber) as items from orderdetails group by ordernumber;
 select productname,buyprice from products p1;
  select productname,buyprice from products p1 where buyprice > 
  (select avg(buyprice) from products where productline=p1.productline);
  select * from products;
  select * from productlines;
  select * from orderdetails ;
  show tables;
   select ordernumber,sum(priceeach*quantityordered) as totalamount from orderdetails 
   inner join  orders using(ordernumber) group by ordernumber having totalamount >60000;  
 
 select customernumber,customername from customers where exists( select ordernumber,sum(priceeach*quantityordered) as totalamount from orderdetails 
   inner join  orders using(ordernumber) where customernumber=customers.customernumber group by ordernumber having totalamount >60000);  
   
   select customernumber,customername from customers where not exists( select ordernumber,sum(priceeach*quantityordered) as totalamount from orderdetails 
   inner join  orders using(ordernumber) where customernumber=customers.customernumber group by ordernumber having totalamount >60000);  
 
 
select customername, checknumber ,paymentdate,amount from customers
   inner join payments using (customernumber);
   create view customerpayments as select customername,checknumber,paymentdate,amount from customers
   inner join payments using (customernumber);
  select * from customerpayments;
  create view dayofweek (day) as select 'mon'
union select 'tue'
union select 'wed'
union select 'thus'
union select 'fri'
union select 'sat'
union select 'sun';
select * from dayofweek;
create view bigsalesorder as 
select customernumber,customername from customers where exists
( select ordernumber,sum(priceeach*quantityordered) as totalamount from orderdetails 
   inner join  orders using(ordernumber) where customernumber=customers.customernumber
   group by ordernumber having totalamount >57000);  
   
   select * from bigsalesorder;
   select ordernumber,sum(priceeach*quantityordered) as totalamount from orderdetails group by ordernumber;
   create view salesperorder as select ordernumber,sum(priceeach*quantityordered) as totalamount from orderdetails group by ordernumber;
	select * from salesperorder;
   select ordernumber , round(totalamount, 2) as total from salesperorder where totalamount>57000;
   create view bigsales as select ordernumber , round(totalamount, 2) as total from salesperorder where totalamount>57000;
   select * from bigsales;
   
   show tables;
   show full tables where table_type='VIEW';
   rename table salesperorder to orderpersales;
   drop view dayofweek;
   



  
  
  





  
    
    
       
    
    
    
    
  
  
 
 





          
          
          
          

