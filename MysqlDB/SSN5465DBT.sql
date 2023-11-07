prompt SSN5465-->

create database if not exists SSN5465;
use SSN5465;

CREATE TABLE EMP
       (EMPNO INT NOT NULL primary key,
        ENAME varchar(10),
        JOB varchar(9),
        MGR INT,
        HIREDATE DATE,
        SAL DECIMAL(7, 2),
        COMM DECIMAL(7, 2),
        DEPTNO INT);

INSERT INTO EMP VALUES
        (7369, 'SMITH',  'CLERK',     7902,
        STR_TO_DATE('17-DEC-1980', '%d-%b-%Y'),  800, NULL, 20);
INSERT INTO EMP VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,
        STR_TO_DATE('20-FEB-1981', '%d-%b-%Y'), 1600,  300, 30);
INSERT INTO EMP VALUES
        (7521, 'WARD',   'SALESMAN',  7698,
        STR_TO_DATE('22-FEB-1981', '%d-%b-%Y'), 1250,  500, 30);
INSERT INTO EMP VALUES
        (7566, 'JONES',  'MANAGER',   7839,
        STR_TO_DATE('2-APR-1981', '%d-%b-%Y'),  2975, NULL, 20);
INSERT INTO EMP VALUES
        (7654, 'MARTIN', 'SALESMAN',  7698,
        STR_TO_DATE('28-SEP-1981', '%d-%b-%Y'), 1250, 1400, 30);
INSERT INTO EMP VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,
        STR_TO_DATE('1-MAY-1981', '%d-%b-%Y'),  2850, NULL, 30);
INSERT INTO EMP VALUES
        (7782, 'CLARK',  'MANAGER',   7839,
        STR_TO_DATE('9-JUN-1981', '%d-%b-%Y'),  2450, NULL, 10);
INSERT INTO EMP VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,
        STR_TO_DATE('09-DEC-1982', '%d-%b-%Y'), 3000, NULL, 20);
INSERT INTO EMP VALUES
        (7839, 'KING',   'PRESIDENT', NULL,
        STR_TO_DATE('17-NOV-1981', '%d-%b-%Y'), 5000, NULL, 10);
INSERT INTO EMP VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,
        STR_TO_DATE('8-SEP-1981', '%d-%b-%Y'),  1500,    0, 30);
INSERT INTO EMP VALUES
        (7876, 'ADAMS',  'CLERK',     7788,
        STR_TO_DATE('12-JAN-1983', '%d-%b-%Y'), 1100, NULL, 20);
INSERT INTO EMP VALUES
        (7900, 'JAMES',  'CLERK',     7698,
        STR_TO_DATE('3-DEC-1981', '%d-%b-%Y'),   950, NULL, 30);
INSERT INTO EMP VALUES
        (7902, 'FORD',   'ANALYST',   7566,
        STR_TO_DATE('3-DEC-1981', '%d-%b-%Y'),  3000, NULL, 20);
INSERT INTO EMP VALUES
        (7934, 'MILLER', 'CLERK',     7782,
        STR_TO_DATE('23-JAN-1982', '%d-%b-%Y'), 1300, NULL, 10);

CREATE TABLE DEPT
       (DEPTNO INT primary key,
        DNAME varchar(14),
        LOC varchar(13) );

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

set Global log_bin_trust_function_creators = 1;
\d //
create procedure quno(asn int, qn double)
begin
declare str varchar(100);
set str = concat('THIS IS QUESTION NO = ',qn,' FROM ASSIGNMENT NO = ',asn);
select str as SSN5465 ; 
end //
\d ;

CREATE TABLE BONUS
        (ENAME varchar(10),
         JOB   varchar(9),
         SAL   INT,
         COMM  INT);


CREATE TABLE SALGRADE
        (GRADE INT,
         LOSAL INT,
         HISAL INT);

INSERT INTO SALGRADE VALUES (1,  700, 1200);
INSERT INTO SALGRADE VALUES (2, 1201, 1400);
INSERT INTO SALGRADE VALUES (3, 1401, 2000);
INSERT INTO SALGRADE VALUES (4, 2001, 3000);
INSERT INTO SALGRADE VALUES (5, 3001, 9999);

CREATE TABLE DUMMY
        (DUMMY INT);

INSERT INTO DUMMY VALUES (0);

COMMIT;

select 'THIS IS ASSIGNMENT NO-1';

call quno(1,1.1)\G

select * from emp where sal > 2000 and comm > 200;

call quno(1,1.2)\G

select * from emp where job ='CLERK' or sal > 2000;

call quno(1,1.3)\G

select * from emp where sal in (1250,1100,2850);

call quno(1,1.4)\G

select * from emp where sal between 1250 and 2850;

call quno(1,1.5)\G

select * from emp where ename like '%AS';

call quno(1,1.6)\G

select * from emp where job like 'C%K';

call quno(1,1.7)\G

select * from emp where job like '__L%M__';

call quno(1,1.8)\G

select * from emp where sal not in (1250,1100,2850);

call quno(1,1.9)\G

select * from emp where sal>1250 and sal<2850;

call quno(1,1.10)\G

select * from emp where job REGEXP '^C.E.*K$';

call quno(1,1.11)\G

select * from emp where comm is null;

call quno(1,1.12)\G

select * from emp where sal is null and ename REGEXP '^S';

call quno(1,1.13)\G

select * from emp where job REGEXP '^.{5}$';

call quno(1,1.14)\G

select * from emp where ename like 'A%' and job REGEXP '^.{5}$';

call quno(1,2.1)\G

select ename,sal,deptno from emp where deptno in (20,30,40);

call quno(1,2.2)\G

select ename,sal,(sal+ifnull(comm,0)+sal*0.10) Totalsalary from emp;

call quno(1,2.3)\G

select ename NAME,job OCCUPATION from emp where hiredate<'1986-01-01' and sal between 1200 and 2500;

call quno(1,2.4)\G

select empno,ename,deptno from emp where mgr = 7698;

call quno(1,2.5)\G

select ename,job,sal from emp where deptno in (10,30);

call quno(1,2.6)\G

select concat(ename,', ',ifnull(deptno,0)) 'Emp Info' from emp;

call quno(1,2.7)\G

select * from emp where mgr is null;

call quno(1,2.8)\G

select ename,deptno,hiredate from emp where hiredate between '1981-01-01' and '1983-03-31' order by hiredate;

call quno(1,2.9)\G

select * from emp where job REGEXP '.*AGE.*';

call quno(1,2.10)\G

call quno(1,2.11)\G

select * from emp where ename REGEXP '^A.*S$|..?N.*[NS]$';

call quno(1,2.12)\G

select * from emp where ename REGEXP '.*_.*';
insert into emp values(8000,'V_ORTAN','CLERK',8000,'1981-05-06',2600,150,30);
select * from emp where ename REGEXP '.*_.*';
delete from emp where empno = 8000;

call quno(1,3.1)\G

select empno,ename,job,concat(substr(ename,2,5),substr(job,2,4),'@mycompany.com') from emp; 

call quno(1,3.2)\G

select * from emp where month(hiredate)=09;

call quno(1,3.3)\G

select empno,ename,deptno,floor(datediff(curdate(),hiredate)/365) Experience from emp where floor(datediff(curdate(),hiredate)/365)>=18 order by Experience;

call quno(1,3.4)\G

select * from emp where day(hiredate)=3;

call quno(1,3.5)\G

select * from emp where year(hiredate) between 1981 and 1983;

call quno(1,3.6)\G

select ceil(max(sal)) Maximum,ceil(min(sal)) Minium,ceil(sum(sal)) Total ,ceil(avg(sal)) Average from emp group by deptno;

call quno(1,3.7)\G

select deptno,count(*) 'Total Number Of Managers' from emp where job = 'MANAGER' group by deptno;

call quno(1,3.8)\G

select deptno,sum(sal)over() from emp where job!='MANAGER';


select 'THIS IS ASSIGNMENT NO-2';

call quno(2,1.1)\G

select ename,sal,deptno from emp where deptno in (20,30,40);

call quno(2,1.2)\G

select ename,sal,(sal+ifnull(comm,0)+sal*0.10) Totalsalary from emp;

call quno(2,1.3)\G

select ename NAME,job OCCUPATION from emp where hiredate<'1986-01-01' and sal between 1200 and 2500;

call quno(2,1.4)\G

select empno,ename,deptno from emp where mgr = 7698;

call quno(2,1.5)\G

select ename,job,sal from emp where deptno in (10,30);

call quno(2,1.6)\G

select concat(ename,', ',ifnull(deptno,0)) 'Emp Info' from emp;

call quno(2,1.7)\G

select * from emp where mgr is null;

call quno(2,1.8)\G

select ename,deptno,hiredate from emp where hiredate between '1981-01-01' and '1983-03-31' order by hiredate;

call quno(2,1.9)\G

select * from emp where job REGEXP '.*AGE.*';

call quno(2,1.10)\G

call quno(2,1.11)\G

select * from emp where ename REGEXP '^A.*S$|..?N.*[NS]$';

call quno(2,1.12)\G

select * from emp where ename REGEXP '.*_.*';
insert into emp values(8000,'V_ORTAN','CLERK',8000,'1981-05-06',2600,150,30);
select * from emp where ename REGEXP '.*_.*';
delete from emp where empno = 8000;

call quno(2,1.13)\G

select empno,ename from emp order by sal desc limit 2,1;

call quno(2,1.14)\G

select empno,ename from emp order by comm desc limit 1;

call quno(2,1.15)\G

select ASCII(job) from emp;

call quno(2,1.16)\G

select empno,ename,job,concat(substr(ename,1,3),substr(job,1,3)) CODE from emp;

call quno(2,2.1)\G

select empno,ename,job,concat(substr(ename,2,5),substr(job,2,4),'@mycompany.com') from emp; 

call quno(2,2.2)\G

select * from emp where month(hiredate)=09;

call quno(2,2.3)\G

select empno,ename,deptno,floor(datediff(curdate(),hiredate)/365) Experience from emp where floor(datediff(curdate(),hiredate)/365)>=18 order by Experience;

call quno(2,2.4)\G

select * from emp where day(hiredate)=3;

call quno(2,2.5)\G

select * from emp where year(hiredate) between 1981 and 1983;

select 'THIS IS DATE ASSIGNMENT';

call quno(3,1.1)\G

select date_sub(date_sub(curdate(),interval 3 month),interval dayofmonth(curdate())-1 day) 'First day of month before 3 months';

call quno(3,1.2)\G

select LAST_DAY(date_sub(curdate(),interval 3 month)) 'Last day of month before 3 months';

call quno(3,1.3)\G

select distinct dayname(hiredate) from emp where dayname(hiredate) = 'MONDAY';

call quno(3,1.4)\G 

select concat(year(curdate()),'-01-01') 'First day of current year';

call quno(3,1.5)\G

select concat(year(curdate()),'-12-31')'Last day of year';

call quno(3,1.6)\G

set @birthday = '1998-08-17';
select floor(datediff(curdate(),@birthday)/365) AGE ;

call quno(3,1.7)\G

select date_format(curdate(),'%M %d, %Y') DATE;

call quno(3,1.8)\G

select date_format(curdate(),'%W %M %Y') DATE;

call quno(3,1.9)\G

select year(curdate());

call quno(3,1.10)\G

select ename,hiredate from emp where hiredate between '1981-06-01' and '1987-07-30';

call quno(3,1.11)\G

select date_format(now(),'%W %D %M %Y %l:%i:%s') DATE;

call quno(3,1.12)\G

select date_format(curdate(),'%d/%m/%Y') DATE;

call quno(3,1.13)\G

select date_format(now(),'%l:%i %p %b %d, %Y') DATE;

call quno(3,1.14)\G

select * from emp where month(hiredate)= 5;

call quno(3,1.15)\G

select year(hiredate) year from emp e where (select count(*) from emp m where year(m.hiredate)=year(e.hiredate))>=10 group by year;

call quno(3,1.16)\G

select ename from emp where year(hiredate)=1981;

call quno(3,1.17)\G

select * from emp where floor(datediff(curdate(),hiredate)/365)>40;

call quno(3,1.18)\G

select empno,ename,date_sub(date_add(hiredate,interval 1 month),interval dayofmonth(hiredate)-1 day) 'First salary date' from emp;

call quno(3,1.19)\G

select ename,hiredate,floor(datediff(curdate(),hiredate)/365) 'Experience' from emp;

call quno(3,1.20)\G

select deptno,year(hiredate),count(*) from emp group by deptno,year(hiredate);


select 'THIS IS DBT ASSIGNMENT';


call quno(4,1.1)\G

select * from emp where job = 'MANAGER' and sal>1500;

call quno(4,1.2)\G

select * from emp where sal between 1200 and 2000;

call quno(4,1.3)\G

select * from emp where sal in(1600,800,1900);
 
call quno(4,1.4)\G

select * from emp where ename REGEXP 'R.$';

call quno(4,1.5)\G

select * from emp where ename REGEXP '^A.*N$';

call quno(4,1)\G

select * from emp where sal>1250 and deptno=30;

call quno(4,2)\G

select * from emp where sal between 1250 and 3000;

call quno(4,3)\G

select * from emp where sal between 1251 and 2999;

call quno(4,4)\G

select * from emp where sal in(3000,1250,2500);

call quno(4,5)\G

select * from emp where ename = 'SMITH';

call quno(4,6)\G

select * from emp where ename like 'S%';

call quno(4,7)\G

select * from emp where ename like '%S';

call quno(4,8)\G

select * from emp where ename like '_l%';
select * from emp where ename like '_i%';

call quno(4,9)\G

select * from emp where ename REGEXP '^A.*L.*N$';

call quno(4,10)\G

insert into emp values(8000,'AKBDDNS','CLERK',8000,'1981-05-06',1020,150,20);
select * from emp where ename REGEXP '^A.B.*N.$';
delete from emp where empno=8000;

call quno(4,11)\G

select * from emp where ename REGEXP '^[ASW]';

call quno(4,12)\G

select job,max(sal) MAX,min(sal) MIN from emp group by job;

call quno(4,13)\G

select count(*) from emp where comm is null or comm=0;

call quno(4,14)\G

select sum(sal) from emp where deptno = 10;

call quno(4,15)\G

select job,deptno,max(sal) MAX,avg(sal) MIN from emp group by job,deptno;

call quno(4,16)\G

select deptno,max(sal) MAX from emp where deptno>15 group by deptno order by deptno;

call quno(4,17)\G

select deptno,sum(sal) SUM from emp group by deptno having sum(sal)>3000;

call quno(4,18)\G

select deptno from emp group by deptno having count(*)>=5;

call quno(4,19)\G

select job,count(*) 'emp count' from emp where sal>2000 group by job;

call quno(4,20)\G

select lower(ename),lower(job) from emp;

call quno(4,21)\G

select lpad(ename,15,' ') NAME,job from emp;

call quno(4,22)\G

select min(sal),max(sal),avg(sal),mgr from emp e group by mgr;

call quno(4,23)\G

select sum(sal+ifnull(comm,0)) 'Sum of total earnings',avg(sal+ifnull(comm,0)) avg from emp where sal>2000 and deptno in(10,20);

call quno(4,24)\G

select * from emp where year(hiredate)=1980 and month(hiredate)=8 and sal between 1501 and 2499;
insert into emp values(8000,'AKBDDNS','CLERK',8000,'1980-08-06',1520,150,20);
select * from emp where year(hiredate)=1980 and month(hiredate)=8 and sal between 1501 and 2499;
delete from emp where empno=8000;

call quno(4,25)\G

select * from emp where month(hiredate) in (8,5,12);

call quno(4,26)\G

select ename,date_format(hiredate,'%d/%m/%y') hiredate from emp where job='CLERK' and comm>0;
insert into emp values(8000,'AKBDDNS','CLERK',8000,'1980-08-06',1520,150,20);
select ename,date_format(hiredate,'%d/%m/%y') hiredate from emp where job='CLERK' and comm>0;
delete from emp where empno=8000;

call quno(4,27)\G

select concat(substr(ename,3,5),substr(job,-2))empcode,empno,ename,job from emp;

call quno(4,28)\G

select concat('$',format(ifnull(comm,0),2)) comm from emp where ename REGEXP '^A.*N$';

call quno(4,29)\G

select empno,ename,sal,comm,
case when comm>=600 then 'EXCELLENT KEEP IT UP'
when comm<600 and comm is not null then 'GOOD'
else 'NEED IMPROVEMENT' end REMARK 
from emp;

call quno(4,30)\G

select empno,ename,deptno,
case when deptno=10 then 'HR'
when deptno=20 then 'ADMIN'
when deptno=30 then 'ACCOUNTS'
else 'PURCHASE' end department_name
from emp;

call quno(4,31)\G

create table mydept_dbda(
deptid int primary key,
dname varchar(20) not null unique,
dloc varchar(20));

insert into mydept_dbda values(30,'PURCHASE','MUMBAI');

create table myemployee(
empno int primary key,
fname varchar(15) not null,
mname varchar(15),
lname varchar(15) not null,
sal double(9,2) check(sal>=1000),
doj date default(curdate()),
passportnum varchar(15) unique,
deptno int,
constraint fk_deptno foreign key(deptno)
references mydept_dbda(deptid)
on delete CASCADE
on UPDATE CASCADE);

call quno(4,32)\G

create table student(
sid int primary key,
sname varchar(30));

create table course(
cid int primary key,
cname varchar(30));

create table mark(
studid int,
courseid int,
marks int,
constraint pk primary key(studid,courseid),
constraint fk_cid foreign key(courseid)
references course(cid)
on delete CASCADE
on update CASCADE,
constraint fk_sid foreign key(studid)
references student(sid)
on delete CASCADE
on update CASCADE);

insert into student values(1,'VELVIN');
insert into student values(2,'TAYLOR');

insert into course values(1,'ASTRO');
insert into course values(2,'THEO');
insert into course values(3,'APPLIED');

insert into mark values(1,1,99);
insert into mark values(1,3,98);
insert into mark values(2,1,95);
insert into mark values(2,2,97);

select * from student;
select * from course;
select * from mark;

call quno(4,33)\G

create table emp10(
select * from emp where 1=2
);

call quno(4,34)\G

alter table emp 
add primary key(empno);

alter table dept 
add primary key(deptno);

alter table salgrade 
add primary key(grade);

alter table emp 
add constraint fk_dno foreign key(deptno)
references dept(deptno)
on delete CASCADE
on update CASCADE;

alter table emp
add column netsal double(9,2) default 1000;

call quno(4,35)\G

update emp set sal=sal+0.15*(sal+ifnull(comm,0)),job='MANAGER',mgr=7777
where deptno =10;
select * from emp;

call quno(4,36)\G

update emp set job='SR_CLERK' where ename='SMITH';
select * from emp;

call quno(4,37)\G

update emp set sal=sal+0.15*sal where comm>0;
select * from emp;

call quno(4,38)\G

select * from emp where sal>(select sal from emp where ename='SMITH');

call quno(4,39)\G

select * from emp where deptno=(select deptno from emp where ename='SMITH');

call quno(4,40)\G

insert into emp values(8000,'RAJAN','CLERK',8000,'1980-08-06',4000,150,20,2000);
insert into emp values(8001,'REVATI','CLERK',8001,'1980-08-06',2000,200,30,2000);

select * from emp where sal<(select sal from emp where ename='RAJAN') and sal>(select sal from emp where ename='REVATI');

call quno(4,41)\G

select * from emp;
delete from emp where deptno=(select deptno from (select * from emp) E where E.ename='ALLEN');
select * from emp;

call quno(4,42)\G

select * from emp;
update emp
set sal=(select sal from (select * from emp) E where E.ename='MILLER')
where ename= 'ALLEN';
select * from emp;

call quno(4,43)\G

select * from emp;
update emp 
set sal=(select sal from (select * from emp) E where E.ename='MILLER')
where deptno=(select deptno from (select * from emp) M where M.ename ='WARD');
select * from emp;

call quno(4,44)\G

select * from emp where sal>(select sal from emp where ename='SMITH') or sal>(select sal from emp where ename='ALLEN');

call quno(4,45)\G

select * from emp where sal>(select avg(sal) from emp where deptno=10);

call quno(4,46)\G

select * from emp where sal>(select avg(sal) from emp where deptno=(select deptno from emp where ename='ALLEN'));

call quno(4,47)\G

update dept 
set dname='PURCHASE'
where deptno=30;

select * from emp where deptno=(select deptno from dept where dname='PURCHASE');

call quno(4,48)\G

select * from emp e where sal>(select avg(sal) from emp m where m.deptno=e.deptno);

call quno(4,49)\G

select * from emp e where sal<(select sal from emp m where m.empno=e.mgr);

call quno(4,50)\G

select * from emp e where sal>(select avg(sal) from emp m where m.job=e.job);

call quno(4,51)\G

select ename,dname from emp,dept where emp.deptno=dept.deptno ;

call quno(4,52)\G

select empno,ename,dname,grade
from emp e,dept d,salgrade s
where e.deptno=d.deptno and sal between s.losal and s.hisal;

call quno(4,53)\G

select empno,ename,mgr,(select ename from emp m where e.mgr=m.empno) mname
from emp e;

call quno(4,54)\G

create table salesman(
sid int primary key,
sname varchar(30),
address varchar(100));

create table category(
cid int primary key,
cname varchar(30),
description varchar(100));

create table product(
pid int primary key,
pname varchar(30),
price double(9,2),
qty int,
cid int,
sid int,
constraint fk_catid foreign key(cid)
references category(cid)
on delete CASCADE
on update CASCADE,
constraint fk_salid foreign key(sid)
references salesman(sid)
on delete CASCADE
on update CASCADE);

insert into salesman values(1,'JACK','BOSTON');
insert into salesman values(2,'LANCE','STROLL');
insert into salesman values(3,'MAX','VER');

insert into category values(80,'ONE','LLKKLL');
insert into category values(90,'TWO','LKLKLK');
insert into category values(70,'THREE','KLKLK');

insert into product values(101,'BLUE',500,3,80,2);
insert into product values(102,'BROWN',600,8,90,1);
insert into product values(103,'RED',700,4,70,3);
insert into product values(104,'YELLOW',800,7,80,1);
insert into product values(105,'BOBA',900,5,90,3);

call quno(4,54.1)\G

select pname,cname,sname 
from category c,product p, salesman s
where p.cid=c.cid and p.sid=s.sid;


call quno(4,54.2)\G

select pname,sname 
from product p, salesman s
where p.sid=s.sid and s.address='BOSTON';

call quno(4,54.3)\G

select pname,cname
from category c,product p
where p.cid=c.cid ;

call quno(4,55)\G

create table room(
roomid int primary key,
rname varchar(30),
rloc varchar(100));

create table faculty(
fid int primary key,
fname varchar(30),
spskill1 varchar(20),
spskill2 varchar(20));

create table courses(
cid int primary key,
cname varchar(30),
rid int,
fid int,
constraint fk_roomid foreign key(rid)
references room(roomid)
on delete CASCADE
on update CASCADE,
constraint fk_faid foreign key(fid)
references faculty(fid)
on delete CASCADE
on update CASCADE);

insert into faculty values(10,'TOTO','A','B');
insert into faculty values(11,'MAGNUS','C','D');
insert into faculty values(12,'OSCAR','E','F');
insert into faculty values(13,'CARLOS','G','H');

insert into room values(100,'JASMIN','FLOOR 1');
insert into room values(101,'ROSE','FLOOR 2');
insert into room values(103,'LOTUS','FLOOR 3');
insert into room values(105,'VELVET','FLOOR 2');

insert into courses values(121,'DBDA',100,10);
insert into courses values(131,'DAC',101,11);
insert into courses values(141,'DTISS',null,null);
insert into courses values(151,'DIOT',105,null);

call quno(4,55.1)\G

select * from courses 
left join room on roomid=rid
where rid is null
union
select null,null,null,null,roomid,rname,rloc from room
left join courses on roomid=rid
where rid is null;


call quno(4,55.2)\G

select f.fid,f.fname,null roomid,null rname from faculty f
left join courses c on c.fid=f.fid
where c.fid is null
union 
select null,null,roomid,rname from courses
right join room on roomid=rid
where rid is null;

call quno(4,55.3)\G

select roomid,rname from courses
right join room on roomid=rid
where rid is not null
union
select roomid,rname from courses
right join room on roomid=rid
where rid is null;


call quno(4,55.4)\G

select roomid,rname,rloc from courses
right join room on roomid=rid
where rid is null;

call quno(4,55.5)\G

select cname,fname from faculty f,courses c
where f.fid=c.fid and f.spskill1='A';

call quno(4,55.6)\G

select c.cid,c.cname,f.fid,f.fname,r.roomid,r.rname
from room r,courses c,faculty f
where r.roomid=c.rid and f.fid=c.fid;

call quno(4,56)\G

create table food_salesman(
sid int primary key,
sname varchar(30) not null,
address varchar(100));

create table food_category(
cid int primary key,
cname varchar(30) not null unique,
description varchar(100));

create table food_product(
pid int primary key,
pname varchar(30) not null unique,
qty int check(qty>0) default 20,
price double(9,2),
cid int,
sid int,
constraint fk_fcatid foreign key(cid)
references food_category(cid)
on delete CASCADE
on update CASCADE,
constraint fk_fsalid foreign key(sid)
references food_salesman(sid)
on delete CASCADE
on update CASCADE);

insert into food_salesman values(11,'RAHUL','PUNE');
insert into food_salesman values(12,'KRITI','MUMBAI');
insert into food_salesman values(13,'PRASAD','NASHIK');
insert into food_salesman values(14,'ARNAV','AMARAVATI');

insert into food_category values(1,'CHIPS','CRUNCHY');
insert into food_category values(2,'CHOCOLATE','VERY_CHOKS');
insert into food_category values(3,'SNACKS','YUMMY');
insert into food_category values(4,'COLD_DRINKS','TANDA');

insert into food_product values(123,'LAYS',30,30,1,12);
insert into food_product values(111,'PEPSI',40,50,4,11);
insert into food_product values(134,'NACHOS',50,50,1,12);
insert into food_product values(124,'DAIRYMILK',50,60,1,14);
insert into food_product values(125,'PRINGLES',40,60,2,14);

call quno(4,56.1)\G

select pid,pname,qty,price,p.cid,p.sid from food_product p
left join food_category c on p.cid=c.cid
where c.cname='CHIPS';

call quno(4,56.2)\G

select pid,pname,qty,price,p.cid,p.sid from food_product p
left join food_salesman s on p.sid=s.sid
where s.sname='KRITI';


call quno(4,56.3)\G

select s.sid,sname,address from food_salesman s 
left join food_product p on p.sid=s.sid
where p.sid is null;

call quno(4,56.4)\G

select c.cid,cname,description from food_category c 
left join food_product p on p.cid=c.cid
where p.cid is null;

call quno(4,56.5)\G

select pid,pname,qty,price,p.cid,p.sid from food_product p
left join food_category c on p.cid=c.cid
where p.cid is null;

call quno(4,56.6)\G

select * from food_salesman where sname REGEXP '^[PN]';

call quno(4,56.7)\G

alter table food_salesman
add column cridit_limit int;

desc food_salesman;

select 'THIS IS VIEW ASSIGNMENT';

call quno(5,1)\G

create table vehicle(
vid int primary key,
vname varchar(30),
price double(9,2),
descr varchar(50)
);

create table customer(
custid int primary key,
cname varchar(30),
address varchar(50)
);

create table v_salesman(
sid int primary key,
sname varchar(30),
address varchar(50)
);

create table cust_vehicle(
custid int,
vid int,
sid int,
buy_price double(9,2),
primary key(custid,vid),
constraint fkcus foreign key(custid)
references customer(custid)
on delete CASCADE
on update CASCADE,
constraint fkveh foreign key(vid)
references vehicle(vid)
on delete CASCADE
on update CASCADE
);

insert into vehicle values(1,'ACTIVA',80000,'FAST');
insert into vehicle values(2,'SANTRO',90000,'MEDIUM');
insert into vehicle values(3,'YAMAHA',100000,'VERY_FAST');

insert into customer values(1,'NILIMA','PIMPARI');
insert into customer values(2,'GANESH','WAGHOLI');
insert into customer values(3,'PANKAJ','AKURDI');

insert into v_salesman values(10,'RAJESH','MUMBAI');
insert into v_salesman values(11,'SEEMA','KOLKATA');
insert into v_salesman values(13,'RAJESH','NAGPUR');

insert into cust_vehicle values(1,1,10,75000);
insert into cust_vehicle values(1,2,10,95000);
insert into cust_vehicle values(2,3,11,80000);
insert into cust_vehicle values(3,3,11,75000);
insert into cust_vehicle values(3,2,10,90000);

call quno(5,2)\G

create index price_index on vehicle(price);

show index from vehicle;

call quno(5,3)\G

select c.cname,v.vname,s.sname,(v.price-cv.buy_price) discount
from vehicle v,customer c,v_salesman s, cust_vehicle cv
where cv.custid=c.custid and cv.sid=s.sid and cv.vid=v.vid;

call quno(5,4)\G

select c.cname,v.vname,s.sname
from vehicle v,customer c,v_salesman s, cust_vehicle cv
where cv.custid=c.custid and cv.sid=s.sid and cv.vid=v.vid and s.address in ('KOLKATA','NAGPUR');

call quno(5,5)\G

select count(*) from cust_vehicle cv, customer c, vehicle v
where cv.custid=c.custid and cv.vid=v.vid and v.vname='YAMAHA';

select count(*) from (select c.cname from cust_vehicle cv, customer c, vehicle v
where cv.custid=c.custid and cv.vid=v.vid and v.vname='YAMAHA'
UNION
select c.cname from cust_vehicle cv, customer c, vehicle v
where cv.custid=c.custid and cv.vid=v.vid and v.vname='YAMAHA') E;

call quno(5,6)\G

create view find_discount
as
select c.cname,v.vname,v.price,cv.buy_price,(v.price-cv.buy_price) “discount”
from customer c inner join cust_vehicle cv on c.custid=cv.custid 
inner join vehicle v on v.vid=cv.vid;

select * from find_discount;

call quno(5,7)\G

select c.cname,v.vname,s.sname,(v.price-cv.buy_price) discount
from vehicle v,customer c,v_salesman s, cust_vehicle cv
where cv.custid=c.custid and cv.sid=s.sid and cv.vid=v.vid;

call quno(5,8)\G

create view my_hr
as
select empno,ename,job,comm
from emp
where comm is not null and comm>0;

select * from my_hr;

call quno(5,9)\G

create view mgr30
as
select *
from emp
where deptno=30;

select * from mgr30;

call quno(5,10)\G

insert into mgr30 values(9000,'AKDNS','CLERK',9000,'1980-08-06',1520,150,20,1000);
insert into mgr30 values(9001,'AKBD','CLERK',9001,'1980-08-06',2320,250,10,1000);
insert into mgr30 values(9003,'AKBDK','CLERK',9003,'1980-08-06',2360,290,30,1000);

select * from mgr30;

select * from emp;


call quno(5,11)\G

insert into dept values(50,'CYCLING','BOSTON');
insert into dept values(60,'MODELING','LA');
insert into dept values(70,'HR','TEXAS');

select * from dept;

call quno(5,12)\G

set autocommit=0;

delete from emp;

select * from emp;

rollback;

commit;

set autocommit=1;

call quno(5,13)\G

set autocommit=0;

insert into emp values(100,'AKDrrNS','CLERK',100,'1980-08-06',1520,150,20,1000);
insert into emp values(101,'AKBrrD','CLERK',101,'1980-08-07',2320,250,10,1000);
insert into emp values(102,'AKBrrDK','CLERK',102,'1980-08-08',2360,290,30,1000);

SAVEPOINT A;

insert into emp values(103,'AKDvvNS','CLERK',103,'1980-08-06',1520,150,20,1000);
insert into emp values(104,'AKBvvD','CLERK',104,'1980-08-07',2320,250,10,1000);
insert into emp values(105,'AKBvvDK','CLERK',105,'1980-08-08',2360,290,30,1000);

SAVEPOINT B;

delete from emp where empno=100;
delete from emp where empno=104;

rollback to B;

select * from emp;

rollback to A;

select * from emp;

commit;

select * from emp;

rollback;

set autocommit=1;

call quno(5,14)\G

\d //
create procedure getmin(in dno int,out minsal double(9,2))
BEGIN
select min(sal) into minsal from emp where deptno=dno ;
end//
\d ;

call getmin(20,@M);

select @M ;



select 'THIS IS PLSQL ASSIGNMENT';

call quno(6,1.1)\G

\d //
create procedure insert_rec(
peno int,
pnm varchar(20),
psal decimal(9,2),
pjob varchar(20),
phiredate date)
begin
 insert into emp(empno,ename,sal,job,hiredate) values(peno,pnm,psal,pjob,phiredate);
end//
\d ;

call insert_rec(8005,'DAVID',4500,'CLERK','1982-08-09');

select * from emp where empno=8005;

call quno(6,1.2)\G

\d //
create procedure delete_emp(
peno int)
begin
 DELETE from emp where empno=peno;
end//
\d ;

call delete_emp(8005);

select * from emp where empno=8005;

call quno(6,1.3)\G

\d //
create procedure display(
salary double(9,2))
begin
 select empno,ename,e.deptno,dname
 from emp e,dept d
 where e.deptno=d.deptno and e.sal>salary;
end//
\d ;

call display(1650);

call quno(6,1.4)\G

\d //
create procedure mman(in dno int,out mi double(9,2),out ma double(9,2),out av double(9,2),out cnt int)
begin
select min(sal), max(sal),avg(sal),count(*) into mi,ma,av,cnt from emp e
where deptno=dno;
end//
\d ;

call mman(10,@m1,@m2,@a1,@ca);

select @m1,@m2,@a1,@ca ;

call quno(6,1.5)\G

\d //
create procedure dispcs()
begin
 select pid,pname,c.cid,cname,s.sid,sname
 from product p,salesman s,category c
 where s.sid=p.sid and c.cid=p.cid;
end//
\d ;

call dispcs();

call quno(6,1.6)\G

#write a procedure to display all vehicles bought by a customer. pass cutome name as 
#parameter.(use vehicle,salesman,custome and relation table)

\d //
create procedure dis_veh(name varchar(20))
begin
select c.cname,v.vname
from vehicle v,customer c,cust_vehicle cv
where cv.custid=c.custid and cv.vid=v.vid and c.cname=name;
end//
\d ;

call dis_veh('NILIMA');




call quno(6,1.7)\G

drop procedure display_status;
\d //
create procedure display_status()
begin
select empno,ename,job,sal,
case when (select avg(sal) from emp m where m.deptno=e.deptno)>e.sal then 'GREATER'
when (select avg(sal) from emp m where m.deptno=e.deptno)=e.sal then 'EQUAL'
when (select avg(sal) from emp m where m.deptno=e.deptno)<e.sal then 'Lesser'
end Status, deptno from emp e;
end //
\d ;

call display_status(); 

call quno(6,1.8)\G

set Global log_bin_trust_function_creators = 1;
\d //
create function experience(hrd date) returns int
begin
return floor(datediff(curdate(),hrd)/365);
end // 
\d ;

\d //
create procedure upsal()
begin
declare eno int;
declare sl double(9,2);
declare hrdt date;
declare expr int default 0;
declare vstop int default 0;
declare emp_cur cursor for select empno,sal,hiredate from emp;
declare CONTINUE handler for not found set vstop = 1;

open  emp_cur;

label1:loop
fetch emp_cur into eno,sl,hrdt;

if vstop=1 then
leave label1;
end if;

set expr=experience(hrdt);

if expr<=40 then
set sl = sl;
elseif expr>40 and expr<=42 then
set sl=sl*1.2;
elseif expr>42 then
set sl = sl*1.25;
end if;

update emp set sal=sl where empno = eno;
end loop;
close emp_cur;
end //
\d ;

call upsal();

select * from emp;

call quno(6,1.9)\G

create table emp_allowance(
empno int,
ename varchar(20),
hiredate date,
experience int,
allowance double(9,2));


\d //
create procedure exp_allowance()
begin
declare eno int;
declare enm varchar(20);
declare sl double(9,2);
declare hrdt date;
declare expr int default 0;
declare vstop int default 0;
declare emp_cur cursor for select empno,ename,sal,hiredate from emp;
declare CONTINUE handler for not found set vstop = 1;

open  emp_cur;

label1:loop
fetch emp_cur into eno,enm,sl,hrdt;

if vstop=1 then
leave label1;
end if;

set expr=experience(hrdt);
insert into emp_allowance values(eno,enm,hrdt,expr,expr*3000);
end loop;
close emp_cur;
end //
\d ;

call exp_allowance();
select * from emp_allowance;

call quno(6,1.10)\G

set Global log_bin_trust_function_creators = 1;
\d //
create function CTC(sal double(9,2),hrdt date) returns double(9,2)
begin
declare costtocom double(9,2);
declare DA double(9,2);
declare HRA double(9,2);
declare TA double(9,2);
declare SPA double(9,2);
set DA=0.15*sal;
set HRA=0.20*sal;
set TA=0.08*sal;
if experience(hrdt)<40 then 
set SPA=0;
elseif experience(hrdt)>=40 and experience(hrdt)<41 then
set SPA=0.1*sal;
elseif experience(hrdt)>=41 and experience(hrdt)<42 then
set SPA=0.2*sal;
elseif experience(hrdt)>42 then
set SPA=0.3*sal;
end if;
set costtocom=DA+HRA+TA+SPA;
return costtocom;
return floor(datediff(curdate(),hrd)/365);
end // 
\d ;

select CTC(5000,'1982-09-08') CTC;

call quno(6,1.11)\G

select empno,ename,sal,CTC(sal,hiredate) CTC from emp;

call quno(6,2.1)\G

create table emp_back(
empno int,
ename varchar(20),
oldsal decimal(9,2),
newsal decimal(9,2)
);

\d//
create trigger up_emp before update on emp
for each row
begin
insert into emp_back values(old.empno,old.ename,old.sal,new.sal);
end//
\d ;

call upsal();

select * from emp_back;

call quno(6,2.2)\G

create table empaudit(
empno int,
ename varchar(20),
username varchar(20),
chdate date,
action varchar(20)
);

\d//
create trigger insert_emp before insert on emp
for each row
begin
insert into empaudit values(new.empno,new.ename,user(),curdate(),'INSERT');
end//
\d ;

insert into emp values(9000,'AKDNS','CLERK',9000,'1980-08-06',1520,150,20,100);
insert into emp values(9001,'AKBD','CLERK',9001,'1980-08-06',2320,250,10,1000);

\d//
create trigger delete_emp before delete on emp
for each row
begin
insert into empaudit values(old.empno,old.ename,user(),curdate(),'DELETE');
end//
\d ;

delete from emp where empno=9000;
delete from emp where empno=9001;

select * from empaudit;

call quno(6,2.3)\G

create table vehicle_history(
vno int,
vname varchar(20),
oldprice decimal(9,2),
newprice decimal(9,2),
chdate date,
username varchar(20)
);

\d//
create trigger up_vehicle before update on vehicle
for each row
begin
insert into vehicle_history values(old.vid,old.vname,old.price,new.price,curdate(),user());
end//
\d ;

update vehicle set price= 50000 where vid=1;

select * from vehicle_history;

