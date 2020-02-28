 insert into person values
 (1,'TOm','23','m',8000,'2020-1-1',1),
 (2,'Lily','22','w',6000,'2019-5-1',5),
 (3,'Jame','27','m',8500,'2020-2-12',3),
 (4,'Barson','33','m',12000,'2017-4-1',4),
 (5,'Jane','25','w',9000,'2019-9-1',2),
 (5,'Abby','30','w',18000,'2018-11-3',3);

mysql> create table athlete_item (
aid int not null,
tid int not null,
primary key (aid,tid),
constraint athlete_fk foreign key (aid) references ahtlete (id),
constraint item_fk foreign key (tid) references item (id)
);

#ERROR 1215 (HY000): Cannot add foreign key constraint

mysql> CREATE TABLE `athlete_item` (
`aid` int NOT NULL,
`tid` int NOT NULL,
PRIMARY KEY (`aid`,`tid`),
CONSTRAINT `athlete_fk` FOREIGN KEY (`aid`) REFERENCES `athlete` (`id`),
CONSTRAINT `item_fk` FOREIGN KEY (`tid`) REFERENCES `item` (`id`)
);


威信朋友圈
create table user (
id int primary key,
name varchar(30),
passwd varchar(64)
);

create table pyq (
id int primary key,
content text,
time datetime,
address text,
u_id int,
constraint u_fk1 foreign key (u_id) references user (id)
);

create table user_pyq(
id int primary key,
uid int,
pid int,
comment text,
constraint u_fk2 foreign key (uid) references user(id),
constraint p_fk foreign key (pid) references pyq (id)
);


学生选课表格
create table teacher (
id varchar(32) primary key,
name varchar(32),
title varchar(32),
age int
);

create table course (
id varchar(32) primary key,
name varchar(32),
credit integer,
tid varchar(32),
constraint t_idfk foreign key (tid) references teacher(id)
);

create table students (
id varchar(32) primary key,
name varchar(32),
age tinyint,
sex enum('m','w'),
place varchar(64),
cid varchar(32),
'constraint c_idfk foreign key (cid) references course(id)'
);

create table course_students(
cid varchar(32),
sid varchar(32),
score float,
primary key (cid,sid),
constraint c_idfk foreign key (cid) references course(id),
constraint s_idfk foreign key (sid) references students(id)
);


select * from 购物信息 having count(购物人)>=2 group by 购物人;