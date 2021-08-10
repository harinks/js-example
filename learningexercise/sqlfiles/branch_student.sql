-- Table - branch

create table branch(
id int primary key,
name varchar(50) not null
);


insert into branch(id,name) values(1,'CSE');
insert into branch(id,name) values(2,'IT');

select * from branch;

-- delete from branch


-- Table - student

create table student(
id int primary key,
name varchar(50) not null
);


insert into student(id,name) values(1,'Jay');
insert into student(id,name) values(2,'Sanjay');
insert into student(id,name) values(3,'Rajesh');

select * from student;

-- delete from student where name='Rajesh';


--Table - branch_student

create table branch_student(
id int primary key,
branch_id int not null,
student_id int not null,
foreign key (branch_id) references branch (id),
foreign key (student_id) references student (id)
)


insert into branch_student values(1,1,1);
insert into branch_student values(2,2,2);
insert into branch_student values(3,2,1);
insert into branch_student values(4,1,3);

select * from branch_student;

-- delete from branch_student;
select bs.id,bs.branch_id,b.name as branch_name ,bs.student_id,s.name as student_name from branch_student bs, branch b, student s 
where bs.branch_id=b.id and bs.student_id=s.id;


SELECT branch_student.id,branch_id,branch.name as branch_name,student_id,student.name as student_name
FROM branch_student
inner join branch on branch_student.branch_id=branch.id
inner join student on branch_student.student_id=student.id