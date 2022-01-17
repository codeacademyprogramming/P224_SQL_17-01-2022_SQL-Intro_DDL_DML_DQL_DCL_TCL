--DDL(DATA DEFINITION LANGUAGE)
--CREATE DATABASE(NAME)
CREATE DATABASE P224SecondDB

--USE DATABASE(NAME)
USE P224FIrstDB

--DELETE DATABASE(NAME)
--DROP DATABASE P224SecondDB

--CREATE TABELE
CREATE TABLE Students
(
	Name nvarchar(25),
	SurName nvarchar(25)
)

--EDIT TABLE(ADDED NEW COLUMN)
ALTER TABLE Students
ADD Id Int

--EDIT TABLE(DELETE COLUM)
ALTER TABLE Students 
DROP COLUMN AGE

--EDIT TABLE(EDIT COLUMN)
ALTER TABLE Students 
ALTER COLUMN Name nvarchar(25)

TRUNCATE Table Students

--RENAME TABLE COLUMN NAME
exec sp_rename 'Students.name', 'FirstName'

--RENAME TABLE NAME
exec sp_rename 'TELEBELER', 'Students'

--DML(DATA MANIPULATION LANGUAGE)
--CREATE DATA
INSERT INTO Students
VALUES('ALIM','QASIMOV',25,1)
--CREATE DATA
INSERT INTO3 Students(Id,Age,FirstName,SurName) 
VALUES(2,30,'Rustem','Rustemli')
--CREATE DATA
INSERT INTO Students(FirstName,Age,SurName) 
VALUES('Rustem',30,'Rustemli')
--CREATE DATA
INSERT INTO Students(Id,FirstName,Age,SurName) 
VALUES(4,'Ilkin',30,'Abbasli'),
(5,'Asif',20,'Qulamli'),
(6,'Pervin',35,'Rustemov'),
(7,'Ramin',25,'Quliyev')

--Update Data
Update Students Set Id = 4 Where Age = 25 AND FirstName = 'ALIM'

--Delete Data
DELETE Students Where Age = 30 And FirstName = 'Ilkin'

--Update Data
Update Students Set FirstName = 'Akif' Where FirstName is null

--DQL(DATA QUERY LANGUAGE)
Select * From Students

Select * From Students Where Age = 25

Select FirstName From Students Where Age = 25

Select FirstName,SurName From Students Where Age = 25

Select FirstName as 'Ad',SurName From Students Where Age = 25

Select FirstName as 'Ad',SurName 'SoyAd'  From Students Where Age = 25

Select (FirstName+' '+SurName) 'Ad Soyad'  From Students Where Age = 25

Select (FirstName+' '+SurName) 'Ad Soyad'  From Students Where Age > 25

Select (FirstName+' '+SurName) 'Ad Soyad'  From Students Where Age >= 25

Select 
(FirstName+' '+SurName) 'Ad Soyad'  
From Students Where Age >= 25 And SurName = 'Qasimov'

Select 
(FirstName+' '+SurName) 'Ad Soyad'  From Students 
Where Age >= 25 OR SurName = 'Qasimov'

Select 
(FirstName+' '+SurName) 'Ad Soyad', Age 'Yas'  From Students 
Where Age >= 25 OR SurName = 'Qasimov'

Select 
UPPER((FirstName+' '+SurName)) 'Ad Soyad', Age 'Yas'  From Students 
Where Age >= 25 OR SurName = 'Qasimov'

Select 
Lower((FirstName+' '+SurName)) 'Ad Soyad', Age 'Yas'  From Students 
Where Age >= 25 OR SurName = 'Qasimov'

Select 
Charindex('i',FirstName) 'Index', Age 'Yas'  From Students 
Where Age >= 25 OR SurName = 'Qasimov'

Select 
SUBSTRING(FirstName, 3,5) 'SUBS' From Students 
Where Age >= 25 OR SurName = 'Qasimov'

Select 
LEN(FirstName) 'LENGTH' From Students 
Where Age >= 25 OR SurName = 'Qasimov'

Select 
SUBSTRING(FirstName, 3,LEN(FirstName)) 'SUBS' From Students 
Where Age >= 25 OR SurName = 'Qasimov'

Select * From Students
Where SurName Like'Rus%'

Select * From Students
Where SurName Like'%li'

Select * From Students
Where SurName Like'%em%'

Select MIN(Age) [Minimum Age] From Students

Select MAX(Age) [Maximmum Age] From Students

Select AVG(Age) [Average Age] From Students

ALTER TABLE Students
ADD Email nvarchar(100)

Select SUBSTRING(Email,CHARINDEX('@',Email)+1,LEN(Email)) From Students

Select * From Students Where Age > (Select AVG(Age) From Students)