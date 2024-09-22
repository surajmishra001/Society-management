-- Create database
create database society_management;

use society_management;

create schema society
-- Table for owner
CREATE TABLE societymanagement_owners	
(
    OwnerID INT identity PRIMARY KEY,
    OwnerName VARCHAR(50) ,
	pp_Share VARCHAR(50) ,
    Email VARCHAR(100) UNIQUE ,
    Phone VARCHAR(15),
);	
select * from societymanagement_owners
-- Table for Staff
CREATE TABLE societymanagement_Staffs
(
    Staff_ID INT identity PRIMARY KEY,
    Staff_Name VARCHAR(50) ,
    Staff_Email VARCHAR(100) UNIQUE,
    Staff_Phone VARCHAR(15),
    Enroll_Date  VARCHAR(50) 
);
select * from societymanagement_Staffs

--Table for staff Attendence
CREATE TABLE societymanagement_StaffAttendence
(
    Attendence_ID INT identity PRIMARY KEY,
	Desk_No varchar (10),
	IsPresent varchar (90)
);
select * from societymanagement_StaffAttendence

-- Table for Holder
CREATE TABLE societymanagement_Holder
(
    Holder_ID INT identity PRIMARY KEY,
    Holder_Name VARCHAR(50) ,
    Holder_FatherName VARCHAR(50) ,
    Holder_Phone VARCHAR(15),
	Holder_level VARCHAR(50) ,
    Registered_Date DATETIME DEFAULT CURRENT_TIMESTAMP	
);
select * from societymanagement_Holder
----------------------------------
--Table for mode of amount--
CREATE TABLE societymanagement_amount
(
    Holder_ID INT identity PRIMARY KEY,
	Amount_paid VARCHAR(50) ,
	payment_mode VARCHAR(50) ,
	payment_date DATETIME DEFAULT CURRENT_
);
select * from societymanagement_amount

insert into societymanagement_owners values('NAG NARAYAN',60,'nagamm258@gmail.com',8294443070),
('RAHUL',40,'rahulmm258@gmail.com',9076540047)
-----------------------------------------------
insert into societymanagement_Staffs values('suraj Mishra','surajmm258@gmail.com',7080669365,12/3/2020),
('Shalini Mishra','sona258@gmail.com',7080669365,20/5/2020),
('nikki Singh','nikki999@gmail.com',7080669365,2/6/2020),
('Avnis Mishra','avnis28@gmail.com',7080669365,21/6/2020),
('Deepak Gupta','deepak58@gmail.com',9935592935,19/4/2020),
('priyanshu Tiwari','priyanshu258@gmail.com',7080669365,7/4/2020)
-------------------------------------------------------------
insert into societymanagement_StaffAttendence values(121,'True'),
(122,'True'),
(123,'False'),
(124,'True'),
(125,'True'),
(126,'True')
-------------------------------------------------------------------
insert into societymanagement_Holder values('Gyatri','jamuna',9076540047,'Premium',2/03/2020),
('priyanshu','jamuna',9076302895,'GOLD',2/03/2020),
('Prashant','jamuna',7563917203,'Premium',2/03/2020),
('Sarita','jamuna',9695457829,'Premium',3/03/2020),
('Dhanji','jamuna',8957267168,'GOLD',3/03/2020),
('Anand','jamuna',8809656698,'Premium',3/03/2020),
('Chandrashekhar ','jamuna',7568465102,'Silver',3/03/2020),
('Dilip','jamuna',9199618217,'Silver',4/03/2020),
('Manish','jamuna',7383415343,'Silver',4/03/2020),
('Alka','jamuna',8160641021,'Silver',4/03/2020),
('Jitendra','jamuna',9153204749,'Silver',4/03/2020),
('Birendra','jamuna',9693890525,'GOLD',5/03/2020),
('Pinky ','jamuna',9905763407,'GOLD',10/03/2020),
('Lukhi','jamuna',9934702749,'Silver',10/03/2020),
('Shalini Mishra','jamuna',9076540047,'GOLD',11/03/2020),
('Suraj Mishra','jamuna',7080669365,'GOLD',12/03/2020),
('Nikki Singh','jamuna',7080669365,'GOLD',20/03/2020)
-------------------------------------------------------------------------------------------------------
insert into societymanagement_amount  values(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020),
(8000,'ONLINE',2/09/2020)
------------------------------------------------------------------------------------------------------
-- How to add the column in table
alter table societymanagement.Holder
add Holder_adhar varchar (50)

-- insert the remaining vlaues in table..
update societymanagement.Holder set Holder_adhar = 473953962934
where Holder_ID=1
update societymanagement.Holder set Holder_adhar = 473953992934
where Holder_ID=2
update societymanagement.Holder set Holder_adhar = 473953964934
where Holder_ID=3
update societymanagement.Holder set Holder_adhar = 473953962934
where Holder_ID=4
update societymanagement.Holder set Holder_adhar = 473953972934
where Holder_ID=5
update societymanagement.Holder set Holder_adhar = 473953862934
where Holder_ID=6
update societymanagement.Holder set Holder_adhar = 473958962934
where Holder_ID=7
update societymanagement.Holder set Holder_adhar = 473953962934
where Holder_ID=8
update societymanagement.Holder set Holder_adhar = 473953962234
where Holder_ID=9
update societymanagement.Holder set Holder_adhar = 473953962934
where Holder_ID=10
update societymanagement.Holder set Holder_adhar = 473953962093
where Holder_ID=11
update societymanagement.Holder set Holder_adhar = 473955962934
where Holder_ID=12
update societymanagement.Holder set Holder_adhar = 473958962934
where Holder_ID=13
update societymanagement.Holder set Holder_adhar = 473965962934
where Holder_ID=14
update societymanagement.Holder set Holder_adhar = 473953962934
where Holder_ID=15
update societymanagement.Holder set Holder_adhar = 473959962934
where Holder_ID=16
update societymanagement.Holder set Holder_adhar = 473953998934
where Holder_ID=17
------------------------------------------------------------------------------------
--WE can also delete the whole table using drop let's see

DROP TABLE societymanagement_StaffAttendence
-------------------------------------------------------------------------------------
--How to delet the column from table let's check-
ALTER TABLE societymanagement.Holder DROP
COLUMN  Holder_FatherName;
------------------------------------------------------------------------------------
-----Now we will use  Aggregate function() to perform different operations----

select MAX(Amount_paid) as 'Max_amount'
from  societymanagement.amount

select MIN(Amount_paid)as 'MIN_amount'
from  societymanagement.amount

select SUM(Amount_paid)as 'Total_amount'
from  societymanagement.amount


select AVG(Amount_paid)as 'Avg_amount'
from  societymanagement_amount

select count(Amount_paid)as 'Number of Emp'
from  societymanagement_amount
----------------------------------------------------------------------
--check how many people are there in the premium amount
select Holder_ID FROM societymanagement_amount
WHERE Amount_paid=8000
---------------------------------------------------------------------------------
---HOW TO USE ORDER BY CLAUSE AND LIMIT CLAUSE
SELECT *FROM societymanagement_Holder
ORDER BY Holder_Name ASC
-------------------------------------------------------------------------------
--NOW we will use join in our project let's do it 
SELECT h.Holder_Name,a.Amount_paid,a.payment_mode,a.payment_date
FROM societymanagement_Holder AS h
INNER JOIN societymanagement_amount AS a
ON h.Holder_id = a.Holder_id 
 
 ----------------------------------------------------------------------------------
 
--lets see currency format in the auction amount.
select 
format (123456,'c','INR-in')'india',
format (987654,'c','th-TH')'thailand'

-- HOW to use of the substring..
select 'DIVAKAR'+' '+'SIR'+' '+'TEACH'+' '+'ME'+' '+'SQL'
as WHOTEACHYOUSQL

----------------------------------------------------------------------------------

select * from societymanagement_owners
select * from societymanagement_Staffs
select * from societymanagement_Holder
select * from societymanagement_amount
