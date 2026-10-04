create database college_db;
use college_db;

create table faculty (
    name varchar(100) not null,
    f_id int primary key,
    phone_no varchar(15) unique,
    block char(1) default 'A'
);

create table course (
    name varchar(100) not null,
    c_id int primary key,
    credits int check (credits > 0),
    dept varchar(100),
    dept_id int not null,
    f_id int,
    foreign key (f_id) references faculty(f_id)
);

insert into faculty
values
('Mr. Ankit Kumar', 213, '987720', 'A'),
('Ms. Neeru Kalia', 661, '054270', 'B'),
('Mr. Pankaj Raina', 135, '975032', 'D'),
('Mr. Sunil Sharma', 22, '998809', 'A'),
('Ms. Preeti Sharma', 307, '767524', 'C');

insert into course
values
('DBMS', 21, 3, 'CSE', 62, 213),
('Biology', 26, 3, 'Pharmacy', 311, 661),
('Mathematics', 72, 5, 'CSE', 62, 135),
('Soft Skills', 93, 1, 'DCPD', 112, 22),
('Medical Forensic', 11, 3, 'Forensic Science', 451, 307);

select name from course
where credits between 2 and 4;

select name from course
where name like 'B%';

select name from course
where dept in ('CSE', 'Pharmacy');

select distinct dept
from course;

update course
set f_id = 307
where c_id = 21;

select name, f_id
from course;

delete from course
where c_id = 11;

alter table course
add column room_no int;

update course set room_no = 120 where c_id = 21;
update course set room_no = 211 where c_id = 26;
update course set room_no = 321 where c_id = 72;
update course set room_no = 461 where c_id = 93;

select * from course;

