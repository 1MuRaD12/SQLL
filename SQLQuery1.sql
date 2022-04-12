CREATE DATABASE Market

use Market

CREATE TABLE Employeers(
Id int primary key identity,
Salary int ,
Position_id int foreign key references Position(Id)
)

insert into Employeers
values(450,1),
(500,2),(550,3)

CREATe TABLE Position(
Id int primary key identity,
Name nvarchar(20),
Surname nvarchar(20)
)

insert into Position(Name,Surname)
values('Murad','Aslanov'),
('Elvin','Huseynli'),
('Rusdem','Aslanov')


CREATE TABLE Product(
Id int primary key identity,
Name nvarchar(max),
purchase int,
sales int
)
insert into Product
values('cipsi',2,2.5),
('pepsi',1.8,2.6),
('corey',30,60)

Create TABLE Branch(
Id int primary key identity,
Name nvarchar(20),
Product_Id int foreign key references Product(Id)
)
insert into Branch
values('Bravo',1),
('Oba',2),
('Al market',3)

CREATE TABLE Sales(
Id int primary key identity,
Employeers_Id int foreign key references Employeers(Id),
Branch_Id int foreign key references Branch(Id),
Salestime nvarchar(30)
)

insert into Sales(Employeers_Id,Branch_Id,Salestime)
VALUES(4,1,'04-06-2022'),
(5,2,'20-06-2022'),
(6,3,'25-06-2022')

select  SUM(Sales.Id) AS SATIS from Sales 

select AVG(Sales.Branch_Id) as Ortaqiymet from Sales

SELECT COUNT(Employeers.Position_id) AS SATISSAYI FROM  Employeers

select  MAX(Sales.Branch_Id) as Encoxsatan from Sales


