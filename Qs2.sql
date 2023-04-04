mysql> create table department(depid int primary key , name varchar(20));
mysql> create table company(cmpid int primary key , name varchar(20) , city varchar(20) , no_emp int);
mysql> create table employee(empid int primary key , name varchar(20) , cmpid int , desig varchar(20) , salary int, city varchar(20) , foreign key(cmpid) references company(cmpid));
mysql> create table staff(id int primary key, name varchar(20) , deptid int , desig varchar(20) , salary int , city varchar(20) , foreign key(deptid) references department(depid));
 create table students(stdid int , name varchar(20) , class varchar(20) , city varchar(20) , tmark int , depid int , foreign key(depid) references department(depid));
 
 mysql> desc department;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| depid | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.06 sec)

mysql> desc company;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| cmpid  | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| city   | varchar(20) | YES  |     | NULL    |       |
| no_emp | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> desc employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| empid  | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| cmpid  | int         | YES  | MUL | NULL    |       |
| desig  | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| city   | varchar(20) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> desc students;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| stdid | int         | YES  |     | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| class | varchar(20) | YES  |     | NULL    |       |
| city  | varchar(20) | YES  |     | NULL    |       |
| tmark | int         | YES  |     | NULL    |       |
| depid | int         | YES  | MUL | NULL    |       |
+-------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)
