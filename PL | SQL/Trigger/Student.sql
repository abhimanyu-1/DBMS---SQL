------------------------TABLE INSERTION---------------------------

create table student22(id int primary key,sname varchar(20),age int,address varchar(20));

insert into student22 values(1,'vineesha',21,'kollancode');

--------------------------TRIGGER----------------------------------

create or replace trigger trr99
before insert on student22
referencing old as o new as n
for each row
declare
m number(6);
c  number(6);
begin
select count(id) into  c from student22;
select max(id) into m from student22;
if(c>0)
then
:n.id:=m+1;
else
:n.id:=1;
end if;
end;
/
---------------------------QUERY-----------------------------------------

insert into student22 (sname, age, address) values('sheena',21,'poontura');
