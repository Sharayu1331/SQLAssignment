create database AssignmentWork
use AssignmentWork

-- 1.Create a table Product as per the following specifications.
create table ProductDetail(
       ProductId int not null primary key identity(1,1),
	   Descriptions varchar(50) not null unique,
	   setqty int not null
	   check (setqty = 1 or setqty = 5 or setqty = 10)
	   default 1,
	   Rate decimal(10,2)
	   check (Rate >=51 and Rate <= 5000)
)

--2.	Insert 20 records in the above Product table
insert into ProductDetail values('Dark Fantacy',1,100.33)
insert into ProductDetail values('Hide n seek',5,75.88)
insert into ProductDetail values('Oreo',10,70.5)
insert into ProductDetail values('Monacco',5,567.87)
insert into ProductDetail values('Parle -G',5,668.79)
insert into ProductDetail values('Bourbon',10,554.33)
insert into ProductDetail values('Bounce',1,786.54)
insert into ProductDetail values('Tiger',1,345.2)
insert into ProductDetail values('Bournvita',5,765.6)
insert into ProductDetail values('Horlicks',10,57.8)
insert into ProductDetail values('chocos',1,98.66)
insert into ProductDetail values('Coconut crunch',5,887.88)
insert into ProductDetail values('Patanjali',1,126.6)
insert into ProductDetail values('Unibic',5,165.7)
insert into ProductDetail values('sunfeast',10,768.55)
insert into ProductDetail values('Britania',1,265.77)
insert into ProductDetail values('Butter cracker',5,676.55)
insert into ProductDetail values('Bisk Farm',1,563.89)
insert into ProductDetail values('Saltino',1,67.88)
insert into ProductDetail values('Black jack',5,687.99)

select * from ProductDetail

--3.	Update all the rates with 10% rate hike.
update ProductDetail set Rate = Rate * 1.1
from ProductDetail

--4.	Delete last record by providing the ProductID.
delete from ProductDetail
where ProductId = 20

--5.	Alter the above table and add the following column.
alter table ProductDetail add MarginCode char(1)
check (MarginCode = 'A' or MarginCode = 'B' or MarginCode = null)

--6.	Update few records to set MarginCode to A and some records MarginCode to B
update ProductDetail set MarginCode = 'A'
where ProductId < 10

update ProductDetail set MarginCode = 'B'
where ProductId > 14

--7.	Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1.
update ProductDetail set setqty = 10
where MarginCode = 'A'and setqty = 1