CREATE TABLE Employes(
staffid varchar (120) NOT NULl,
FirstName Varchar (225) NOT NULL,
SecondName Varchar(120),
Gender varchar (10),
Date_of_Birth date,
HireDate datetime,
primary key (staffid)
)

-----to insert into table -----

insert into Employes (staffid, firstname, secondname, gender,Date_of_Birth,hiredate) 
values ( 'AB301','ayan', 'olakun', 'female', '1992-08-22', '2018-02-09'), 
( 'AB312', 'okorie', 'mercy', 'female','1988-10-09', '2018-10-09'),
( 'AB323', 'joshua', 'chukwuemeka', 'male','1980-10-09', '2022-02-09'), 
( 'AB334', 'sanni', 'ibrahim', 'male','1958-10-09', '2019-09-23'), 
( 'AB354', 'mercy', 'olanipekun', 'female','1982-10-09', '2020-02-09'), 
( 'AB349', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'), 
( 'AB398', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'), 
( 'AB360', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'), 
( 'AB381', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09'), 
( 'AB320', 'olabisi', 'adrail','female',' 1977-06-04','2016-12-05'),
( 'AB370', 'adebola', 'ethan', 'male', '1982-05-31','2006-08-05');

delete from employes
where staffid = 'ab398'

-----truncate sql command ----

truncate table emplose

-------identity in sql -------

Create Table persons (
personsid int identity (1,1) primary key not null,
personsname varchar (255) not null,
age int
)

insert into persons (personsname, age)
values ('Petra', 47),
('Petricia', 37),
('Petal', 40),
('praise', 27),
('Opeyemi', 29),
('Folake', 41),
('Anjolajesu', 22),
('Feranmi', 27),
('Fadekemi', 23),
('Ajoke', 60)

select * from persons

------insert more records into employes table------

insert into [dbo] .[Employes]
values ('AB510', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
('AB202', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'), 
( 'AB105', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB182', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09'),
( 'AB378', 'shukurat', 'lasisi', 'female','1982-10-09', '2018-02-08'),
( 'AB168', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB586', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09'),
( 'AB470', 'shukurat', 'lasisi', 'female','1982-10-09', '2018-02-09')

 Select * from [dbo].[Employes]

 -------to create second table call salary table--------
 Create Table Salary (salary_id int identity (1,1) not null,
 Staffid varchar (255),
 firstname varchar (225),
 lastname varchar (255),
 department varchar (max),
 salary decimal (10, 3) ----(10:precision, 3:scale)
 )

 select * from [dbo].[Salary]
 
 -----insert records into Salary table-------------

insert into salary (staffid, FirstName, lastname, Department, Salary)
values ( 'AB401', 'ayan', 'olakun', 'Information Tech.', 45000.45),
( 'AB212', 'okorie', 'mercy','Account',500000.99999),
( 'AB223', 'joshua', 'chukwuemeka', 'Human Resources',100560.9339999),
( 'AB234', 'sanni', 'ibrahim', 'Sales and Marketing',845688.99),
( 'AB254', 'mercy', 'olanipekun', 'Account',8889.999999),
( 'AB249', 'johnson', 'mercy', 'Information Tech.',234000.90909090),
( 'AB298', 'ayomide', 'halleluyah', 'Logistics', 678000.991999),
( 'AB260', 'deborah', 'justin', 'Logistics',900099.00697969),
( 'AB281', 'wale', 'olanipekun', 'Information Tech',873093.2344)

insert into [dbo].[Salary]
values ( 'AB200', 'ayomide', 'halleluyah', 'Human Resources',45699.8585),
( 'AB405', 'deborah', 'justin', 'Account',898349.900222),
( 'AB282', 'wale', 'olanipekun', 'Sales and Marketing',362636.564848),
( 'AB278', 'shukurat', 'lasisi', 'Logistics',100000.464647),
( 'AB240', 'johnson', 'mercy', 'Information Tech',3855590.9890093),
( 'AB299', 'ayomide', 'halleluyah', 'Account', 8585858.9292),
( 'AB268', 'deborah', 'justin', 'Human Resources',76767.93939)

select * from [dbo].[Salary]

----SUM, COUNT, MAX, MIN, AVERAGE---------------------------------

SELECT SUM(Salary) AS TOTALSALARY FROM Salary

SELECT AVG(Salary) AS AVERAGESALARY FROM Salary

SELECT COUNT(Staffid) AS EmployeeCount FROM EMPLOYEE

SELECT COUNT(Staffid) AS NumberOfEmployee FROM Salary

-----update--------

update Salary
set salary = 7056999.9994
where Staffid = 'AB401'

