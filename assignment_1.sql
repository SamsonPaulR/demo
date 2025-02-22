create table College(
college_code varchar(5) primary key,
college_name varchar(50),
city varchar(20),
fee int
);


INSERT INTO College (college_code, college_name, city, fee) VALUES
('C1', 'Akshaya Bharathi institute of Technology', 'Hyderabad', 75000),
('C2', 'Institute of Information Technology and Management', 'Delhi', 90000),
('C3', 'Aarupadai Veedu Institute of Technology', 'Kancheepuram', 60000),
('C4', 'M S Ramaiah Institute of technology', 'Bangalore', 90000),
('C5', 'Vellore Institute of Technology', 'Vellore', 90000),
('C6', 'PES Institute of Technology', 'Bangalore', 80000),
('C7', 'East West College of Engineering', 'Bangalore', 78000);


CREATE TABLE candidate (
    register_number INTEGER PRIMARY KEY,
    name VARCHAR(100),
    elective VARCHAR(50),
    college_code VARCHAR(5)
);


INSERT INTO candidate (register_number, name, elective, college_code) VALUES
(2345, 'Rakesh', 'Computer Science', 'C5'),
(1356, 'Rohit', 'Electrical', 'C4'),
(4578, 'Rahul', 'Industrial Management', 'C7'),
(7888, 'Yatin', 'Computer Science', 'C3'),
(9676, 'Amita', 'Electronics', 'C4'),
(4567, 'Ananya', 'Computer Science', 'C5'),
(2893, 'Bhavin', 'Electrical', 'C2'),
(8923, 'Vinod', 'Industrial Management', 'C1');

select c.college_name, s.name, c.fee , c.city
from college c join candidate s on c.college_code = s.college_code
where c.city = 'Bangalore';

select * from college
where fee = (
select min(fee) from college
);

select college_name, fee+(fee*5/100) as "Increased Fees"
from college
where city = 'Delhi';

update college
set fee = fee+(fee*5/100)
where city = 'Delhi';

Delete from candidate
where name like 'B%';

select * from candidate;

select count(elective)
from candidate
where elective = 'Computer Science';
