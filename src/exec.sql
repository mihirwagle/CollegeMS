 conn system/oracle;
 create user mihir identified by oracle;
grant connect to mihir identified by oracle;
 grant all privileges to mihir identified by oracle;
create user shreesh identified by oracle;
grant connect to shreesh identified by oracle;
 grant all privileges to shreesh identified by oracle;
create user mahak identified by oracle;
grant connect to mahak identified by oracle;
 grant all privileges to mahak identified by oracle;
 conn mihir/oracle;
create database link "MiSh"
 connect to "Shreesh" identified by "oracle"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
/
create database link "MiMa"
 connect to "Mahak" identified by "oracle"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
/

conn mahak/oracle;

create database link "MaSh"
 connect to "Shreesh" identified by "oracle"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
/
create database link "MaMi"
 connect to "Mihir" identified by "oracle"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
/

conn shreesh/oracle;

create database link "ShMi"
 connect to "Mihir" identified by "oracle"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
/
create database link "ShMa"
 connect to "Shreesh" identified by "oracle"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
/
conn mihir/oracle;
CREATE TABLE College
(
  EmailId VARCHAR(20) NOT NULL,
  ContactNo INT NOT NULL,
  Principal VARCHAR(20) NOT NULL,
  CollegeId INT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Address VARCHAR(20) NOT NULL,
  PRIMARY KEY (CollegeId)
);

CREATE TABLE Department
(
  StudentCount INT NOT NULL,
  CollegeId INT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  DeptId INT NOT NULL,
  HOD VARCHAR(20) NOT NULL,
  PRIMARY KEY (DeptId),
  FOREIGN KEY (CollegeId) REFERENCES College(CollegeId)
);

CREATE TABLE Teacher
(
  TeacherID INT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Salary INT NOT NULL,
  DOB DATE NOT NULL,
  DOJ DATE NOT NULL,
  Experience FLOAT NOT NULL,
  Qualifications VARCHAR(20) NOT NULL,
  Type VARCHAR(20) NOT NULL,
  EmailId VARCHAR(20) NOT NULL,
  DeptId INT NOT NULL,
  PRIMARY KEY (TeacherId),
  FOREIGN KEY (DeptId) REFERENCES Department(DeptId)
);

CREATE TABLE Student
(
  StudentId INT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  DeptId INT NOT NULL,
  EmailId VARCHAR(20) NOT NULL,
  Address VARCHAR(20) NOT NULL,
  GPA FLOAT NOT NULL,
  Attendance FLOAT NOT NULL,
  Placement VARCHAR(20) NOT NULL,
  DOB DATE NOT NULL,
  PRIMARY KEY (StudentId),
  FOREIGN KEY (DeptId) REFERENCES Department(DeptId)
);


insert into college values('vivekanad@mail.com' , 25360187 , ' J. M. Nair' , 1, 'VESIT' , 'Chembur');

insert into college values('thadomal@mail.com' , 25372543 , 'G. T. Thampi' , 2, 'TSEC' , 'Bandra');

insert into college values('vjti@mail.com' , 29458234 , 'O. G. Kakde' , 3, 'VJTI' , 'Matunga');

insert into college values('sies@mail.com' , 27532876 , 'Narayan R.K' , 4, 'SIES' , 'Nerul');

insert into college values('vidyalankar@mail.com' , 22745970 , ' S.A.Patekar' , 5, 'VIT' , 'Wadala');

insert into college values('sndt@mail.com' , 28739648 , '  C. Vidyasagar Rao' , 6, 'SNDT' , 'Santacruz');

insert into college values('kj@mail.com' , 22827635 , 'Monica Khanna ' , 7, 'KJS' , 'Ghatkopar');

insert into college values('tcet@mail.com' , 9734974523 , ' B. K. Mishra' , 8, 'TCE' , 'Kandivali');

insert into college values('dbit@mail.com' , 27629837 , '  Prasanna Nambiar' , 9, 'DBIT' , 'Kurla');

insert into college values('xie@mail.com' , 9847629871 , 'Padma Patil ' , 10, ' XIE', 'Mahim');


insert into department values(4,1,'CSE',101,'Kajal Singh');
insert into department values(4 ,1,'EXTC',102,'Mayur Roopkumar');
insert into department values(1, 2,'CSE',201,'Arvind Jayaramana');
insert into department values(5,2,'IT',202,'Sushrut Agarwal');
insert into department values(5,3,'EXTC',301,'Kishan Ramani');
insert into department values(3,3,'CSE',302,'Meena Saraf');

insert into department values(4,4,'CSE',401,'Guldeep D.');
insert into department values(3,5,'CSE',501,'Richard Joseph');
insert into department values(3,6,'CSE',601,'Amit Mishra');
insert into department values(2,7,'EXTC',701,'Carl Steyn');
insert into department values(2,8,'EXTC',801,'Marcus T.');


insert into department values(2,9,'EXTC',901,'Asaf Patel');
insert into department values(2,10,'IT',1001,'Tina Khan');

insert into teacher values(1,'Patra Kesab' , 400,TO_DATE('1970/08/19', 'yyyy/mm/dd') , TO_DATE('2007/09/07', 'yyyy/mm/dd') ,11 , 'PHD' , 'P' , 'Patra@gmail.com',101);
insert into teacher values(2,'Mainty Sandip ', 300,TO_DATE('1975/09/09', 'yyyy/mm/dd') , TO_DATE('2004/01/19', 'yyyy/mm/dd') , 13 , 'PHD', 'P' , 'Mainty@gmail.com',102);
insert into teacher values(3,'Mallick Mehebub' , 200,TO_DATE('1965/05/18', 'yyyy/mm/dd') , TO_DATE('2005/07/07', 'yyyy/mm/dd') , 12 , 'BE', 'P' , 'Mallick@gmail.com',201);
insert into teacher values(4,'Mondal Uttam', 400,TO_DATE('1976/04/14', 'yyyy/mm/dd') , TO_DATE('2007/01/29', 'yyyy/mm/dd') , 10 , 'BE', 'P', 'Mondal@gmail.com',202);
insert into teacher values(5,'Samanta Tapas' , 500,TO_DATE('1980/03/11', 'yyyy/mm/dd') , TO_DATE('2001/02/10', 'yyyy/mm/dd') , 16, 'ME', 'P', 'Samanta@gmail.com',301);

insert into teacher values(6, 'Das Sanjit', 100,TO_DATE('1982/01/22', 'yyyy/mm/dd') , TO_DATE('2010/07/29', 'yyyy/mm/dd') , 7, 'BE', 'P' , 'Dassanjit@gmail.com',302);
insert into teacher values(7,'Hait Swarup' , 300,TO_DATE('1977/09/27', 'yyyy/mm/dd') , TO_DATE('2009/01/17', 'yyyy/mm/dd') , 8, 'PHD', 'P', 'Hait@gmail.com',401);
insert into teacher values(8, 'Ghorai Shamsunder', 400,TO_DATE('1980/03/15', 'yyyy/mm/dd') , TO_DATE('2008/07/01', 'yyyy/mm/dd') , 9 ,'ME', 'P', 'Ghorai@gmail.com',501);
insert into teacher values(9, 'M. Patra', 200,TO_DATE('1976/04/14', 'yyyy/mm/dd') , TO_DATE('2007/01/29', 'yyyy/mm/dd') ,10 ,'ME', 'P', 'Mpatra@gmail.com',601);
insert into teacher values(10, 'Das Nepal',300,TO_DATE('1985/03/11', 'yyyy/mm/dd') , TO_DATE('2014/07/12', 'yyyy/mm/dd') ,3 , 'BE', 'P', 'Dasnepal@gmail.com',701);

insert into teacher values(11, 'Patra Sujit',800,TO_DATE('1986/09/21', 'yyyy/mm/dd') , TO_DATE('2013/07/12', 'yyyy/mm/dd') , 4 , 'BE', 'P', 'Patrasujit@gmail.com',801);
insert into teacher values(12, 'Sk Sabir Ali',400,TO_DATE('1981/01/28', 'yyyy/mm/dd') , TO_DATE('2012/01/12', 'yyyy/mm/dd') , 5, 'PHD', 'P', 'Sabir@gmail.com',901);
insert into teacher values(13, 'Pramanik Subrata',300,TO_DATE('1980/05/21', 'yyyy/mm/dd') , TO_DATE('2011/07/12', 'yyyy/mm/dd') , 6 ,'ME', 'P', 'Pramanik@gmail.com',1001);
insert into teacher values(14, 'Nandi Somnath',200,TO_DATE('1979/08/21', 'yyyy/mm/dd') , TO_DATE('2011/01/12', 'yyyy/mm/dd') , 6, 'PHD', 'P', 'Nandi@gmail.com',101);
insert into teacher values(15, 'Bera Bablu',100,TO_DATE('1985/09/20', 'yyyy/mm/dd') , TO_DATE('2010/07/12', 'yyyy/mm/dd') , 7 , 'BE', 'P', 'Bera@gmail.com',601);

insert into teacher values(16,'Haldar Buddha' ,300,TO_DATE('1977/09/27', 'yyyy/mm/dd') , TO_DATE('2009/01/17', 'yyyy/mm/dd') , 8 , 'PHD' , 'T', 'Haldar@gmail.com',101);
insert into teacher values(17, 'Jana Shankar',400,TO_DATE('1980/03/15', 'yyyy/mm/dd') , TO_DATE('2008/07/01', 'yyyy/mm/dd') , 9 ,'ME' , 'T', 'Jana@gmail.com',102);
insert into teacher values(18, 'Mal Sandip',300,TO_DATE('1976/04/14', 'yyyy/mm/dd') , TO_DATE('2007/01/29', 'yyyy/mm/dd'), 10 , 'BE', 'T', 'Mal@gmail.com',201);
insert into teacher values(19, 'Belel Shekhar S',500,TO_DATE('1965/05/18', 'yyyy/mm/dd') , TO_DATE('2005/07/07', 'yyyy/mm/dd') , 12, 'PHD', 'T', 'Belel@gmail.com',301);
insert into teacher values(20, 'Pakhira Biswajit',400,TO_DATE('1975/09/09', 'yyyy/mm/dd') , TO_DATE('2004/01/19', 'yyyy/mm/dd') , 13, 'ME', 'T', 'Pakhira@gmail.com',401);

insert into teacher values(21,'Hazra Amit' ,500,TO_DATE('1970/07/19', 'yyyy/mm/dd') , TO_DATE('2003/01/11', 'yyyy/mm/dd') , 14 ,'PHD', 'T', 'Hazra@gmail.com',701);
insert into teacher values(22, 'Mondal Anirban',300,TO_DATE('1969/12/19', 'yyyy/mm/dd') , TO_DATE('2001/01/01', 'yyyy/mm/dd') , 15, 'ME', 'T', 'Mondu@gmail.com',801);
insert into teacher values(23,'Patra Madhu Sudan' ,300,TO_DATE('1980/03/11', 'yyyy/mm/dd') , TO_DATE('2001/02/10', 'yyyy/mm/dd') , 16, 'PHD' , 'T', 'Patru@gmail.com',901);
insert into teacher values(24, 'Chowdhuri Animesh',400,TO_DATE('1965/10/27', 'yyyy/mm/dd') , TO_DATE('2000/07/12', 'yyyy/mm/dd') , 17 , 'BE', 'T', 'Chowdhuri@gmail.com',1001);
insert into teacher values(25, 'See Dilip Murari',100,TO_DATE('1965/02/17', 'yyyy/mm/dd') , TO_DATE('1999/07/01', 'yyyy/mm/dd') , 18 , 'ME', 'T', 'Seedilip@gmail.com',901);

insert into student values(1,'Dolvi Anup Kumar',101,'Kumar@gmail.com','Kalbadevi' ,8 ,76,'Y',TO_DATE('1996/07/28', 'yyyy/mm/dd'));
insert into student values(2,'Baital Tapas',101,'tapas@gmail.com','Kalbadevi',7,85,'Y',TO_DATE('1995/09/18', 'yyyy/mm/dd'));
insert into student values(3,'Manik Sikanto',102,'sikanto@gmail.com','Diva (e)',9,60,'Y',TO_DATE('1999/04/28', 'yyyy/mm/dd'));
insert into student values(4,'Porel Debastisti',102,'porel@gmail.com','Kalbadevi',8,90,'N',TO_DATE('1998/08/14', 'yyyy/mm/dd'));
insert into student values(5,'Dutta Babcu',201,'babchu@gmail.com','Kalbadevi',6,100,'N',TO_DATE('1994/04/05', 'yyyy/mm/dd'));

insert into student values(6,'Mondal Rahim',201','Rahim@gmail.com','Kalbadevi',7,76,'Y',TO_DATE('1998/04/12', 'yyyy/mm/dd'));
insert into student values(7,'Pradhan Somnath',202,'omnath@gmail.com','Diva (e)',9,85,'N',TO_DATE('1995/01/28', 'yyyy/mm/dd'));
insert into student values(8,'Khandu Gajendra',202,'Gajendra@gmail.com','Kalbadevi',8,60,'Y',TO_DATE('1995/01/28', 'yyyy/mm/dd'));
insert into student values(9,'Dolai Narendru',301,'Narendru@gmail.com','Kalbadevi',6,90,'Y',TO_DATE('1998/07/28', 'yyyy/mm/dd'));
insert into student values(10,'Shasmal Bapi',301,'Bapi@gmail.com','19 Anant Wadi ',10,100,'N',TO_DATE('1995/09/28', 'yyyy/mm/dd'));

insert into student values(11,'Sasmal Rabin',301,'Rabin@gmail.com','Diva (e)',7,76,'N',TO_DATE('1999/03/23', 'yyyy/mm/dd'));
insert into student values(12,'Sanki Rajkumar',301,'Sanki@gmail.com','Kalbadevi',9,85,'Y',TO_DATE('1998/04/28', 'yyyy/mm/dd'));
insert into student values(13,'Mondal Biswajtt',401,'Biswajtt@gmail.com','Kalbadevi',8,60,'Y',TO_DATE('1995/09/28', 'yyyy/mm/dd'));
insert into student values(14,'Maiti Ranjit',401,'Ranjit@gmail.com','Kalbadevi',6,90,'N',TO_DATE('1996/06/15', 'yyyy/mm/dd'));
insert into student values(15,'Shee Somnath',501,'Somnath@gmail.com','Kalbadevi',10,55,'Y',TO_DATE('1997/10/29', 'yyyy/mm/dd'));

insert into student values(16,'Bagh Lakhikanta',501,'Lakhu@gmail.com','Kalbadevi',8,76,'Y',TO_DATE('1995/05/31', 'yyyy/mm/dd'));
insert into student values(17,'Maity Subhankar',501,'Subhan@gmail.com','Diva (e)',7,85,'N',TO_DATE('1995/03/10', 'yyyy/mm/dd'));
insert into student values(18,'Bagh Salil',501,'Salil@gmail.com','Kalbadevi',9,60,'Y',TO_DATE('1996/06/15', 'yyyy/mm/dd'));
insert into student values(19,'Gayan Dipankar',601,'Somnath@gmail.com','Kalbadevi',6,90,'N',TO_DATE('1997/07/19', 'yyyy/mm/dd'));
insert into student values(20,'Ali Sk Sabir',601,'Somnath@gmail.com','Kalbadevi',9.5,67,'Y',TO_DATE('1995/09/28', 'yyyy/mm/dd'));

insert into student values(21,'Shah Pruthu',601,'Salil@gmail.com','Kalbadevi',8,76,'Y',TO_DATE('1997/10/29', 'yyyy/mm/dd'));
insert into student values(22,'Samanta Ranjit',601,'Ranjit@gmail.com','19 Anant Wadir',7,85,'N',TO_DATE('1995/10/12', 'yyyy/mm/dd'));
insert into student values(23,'Brahmbhatt Day',701,'Salil@gmail.com','Diva (e)',9,60,'N',TO_DATE('1998/09/29', 'yyyy/mm/dd'));
insert into student values(24,'Koley Bikash',701,'Biswajtt@gmail.com','Kalbadevi',6,90,'N',TO_DATE('1997/01/30', 'yyyy/mm/dd'));
insert into student values(25,'Mukherjee Pratu',701,'sikanto@gmail.com','Kalbadevi',9.5,95,'Y',TO_DATE('1997/11/17', 'yyyy/mm/dd'));

insert into student values(26,'Bera Sameer',701,'sikanto@gmail.com','19 Anant Wadi',8,76,'N',TO_DATE('1997/10/22', 'yyyy/mm/dd'));
insert into student values(27,'Santra Bholu',801,'Salil@gmail.com','Kalbadevi',7,85,'N',TO_DATE('1998/10/29', 'yyyy/mm/dd'));
insert into student values(28,'Maity Sushanta',801,'Ranjit@gmail.com','Kalbadevi',9,60,'Y',TO_DATE('1996/10/16', 'yyyy/mm/dd'));
insert into student values(29,'Ghosh Bhim',801,'babchu@gmail.com','19 Anant Wadi',6,90,'Y',TO_DATE('1995/11/11', 'yyyy/mm/dd'));
insert into student values(30,'Mondu',801,'Biswajtt@gmail.com','Diva (e)',9.5,79,'N',TO_DATE('1995/05/29', 'yyyy/mm/dd'));

conn shreesh/oracle;

CREATE TABLE SGPAL9
AS
(
	SELECT * FROM STUDENT@ShMi
	WHERE GPA < 9);

CREATE TABLE SALRL
AS
(
	SELECT * FROM TEACHER@ShMi
	WHERE SALARY<300);

CREATE TABLE HYBRID11
AS
(
	SELECT TEACHERID, EXPERIENCE, QUALIFICATIONS, TYPE, EMAILID FROM SALRL);


CREATE TABLE HYBRID12
AS
(
	SELECT TEACHERID, NAME, SALARY, DOB, DOJ, DEPTID FROM SALRL);

conn mahak/oracle;

CREATE TABLE SGPAG9
AS
(
	SELECT * FROM STUDENT@MaMi
	WHERE GPA >= 9);

CREATE TABLE SALRG
AS
(
	SELECT * FROM TEACHER@MaMi
	WHERE SALARY>=300);

CREATE TABLE HYBRID21
AS
(
	SELECT TEACHERID, EXPERIENCE, QUALIFICATIONS, TYPE, EMAILID FROM SALRG);


CREATE TABLE HYBRID22
AS
(
	SELECT TEACHERID, NAME, SALARY, DOB, DOJ, DEPTID FROM SALRG);

connect sys/oracle as sysdba;
grant sysdba to mihir;
grant sysdba to mahak;
grant sysdba to shreesh;
conn mihir/oracle as sysdba;

CREATE OR REPLACE TRIGGER UPDATE1
AFTER INSERT OR UPDATE
ON mihir.STUDENT
FOR EACH ROW
BEGIN
IF:new.GPA>=9 THEN 
INSERT INTO mahak.SGPAG9
VALUES
(:new.STUDENTID, :new.NAME, :new.DEPTID, :new.EMAILID, :new.ADDRESS, :new.GPA, :new.ATTENDANCE, :new.PLACEMENT, :new.DOB);
ELSE 
INSERT INTO shreesh.SGPAL9
VALUES
(:new.STUDENTID, :new.NAME, :new.DEPTID, :new.EMAILID, :new.ADDRESS, :new.GPA, :new.ATTENDANCE, :new.PLACEMENT, :new.DOB);
END IF;
END;
/

CREATE OR REPLACE TRIGGER DELETE1
BEFORE DELETE
ON Mihir.STUDENT
FOR EACH ROW
BEGIN
DELETE FROM Shreesh.SGPAL9 WHERE STUDENTID = :old.STUDENTID;
DELETE FROM Mahak.SGPAG9 WHERE STUDENTID = :old.STUDENTID;
END;
/
CREATE OR REPLACE TRIGGER UPDATE2
AFTER INSERT OR UPDATE
ON Mihir.TEACHER
FOR EACH ROW
BEGIN
IF:new.SALARY<300 THEN 
INSERT INTO Shreesh.SALRL
VALUES
(:new.TEACHERID, :new.NAME, :new.SALARY, :new.DOB, :new.DOJ, :new.EXPERIENCE, :new.QUALIFICATIONS, :new.TYPE, :new.EMAILID, :new.DEPTID);
ELSE 
INSERT INTO Mahak.SALRG
VALUES
(:new.TEACHERID, :new.NAME, :new.SALARY, :new.DOB, :new.DOJ, :new.EXPERIENCE, :new.QUALIFICATIONS, :new.TYPE, :new.EMAILID, :new.DEPTID);
END IF;
END;
/

CREATE OR REPLACE TRIGGER DELETE2
BEFORE DELETE
ON Mihir.TEACHER
FOR EACH ROW
BEGIN
DELETE FROM Shreesh.SALRL WHERE TEACHERID = :old.TEACHERID;
DELETE FROM Mahak.SALRG WHERE TEACHERID = :old.TEACHERID;
END;
/
CREATE OR REPLACE TRIGGER UPDATE3
AFTER INSERT OR UPDATE
ON Shreesh.SALRL
FOR EACH ROW
BEGIN 
INSERT INTO Shreesh.HYBRID11
VALUES
(:new.TEACHERID, :new.EXPERIENCE, :new.QUALIFICATIONS, :new.TYPE, :new.EMAILID);
INSERT INTO Shreesh.HYBRID12
VALUES
(:new.TEACHERID, :new.NAME, :new.SALARY, :new.DOB, :new.DOJ, :new.DEPTID);
END;
/
CREATE OR REPLACE TRIGGER DELETE3
BEFORE DELETE
ON Shreesh.SALRL
FOR EACH ROW 
BEGIN 
DELETE FROM Shreesh.HYBRID11 WHERE TEACHERID = :old.TEACHERID;
DELETE FROM Shreesh.HYBRID12 WHERE TEACHERID = :old.TEACHERID;
END;
/

CREATE OR REPLACE TRIGGER UPDATE4
AFTER INSERT OR UPDATE
ON Mahak.SALRG
FOR EACH ROW
BEGIN 
INSERT INTO Mahak.HYBRID21
VALUES
(:new.TEACHERID, :new.EXPERIENCE, :new.QUALIFICATIONS, :new.TYPE, :new.EMAILID);
INSERT INTO Mahak.HYBRID22
VALUES
(:new.TEACHERID, :new.NAME, :new.SALARY, :new.DOB, :new.DOJ, :new.DEPTID);
END;
/
CREATE OR REPLACE TRIGGER DELETE4
BEFORE DELETE
ON Mahak.SALRG
FOR EACH ROW 
BEGIN 
DELETE FROM Mahak.HYBRID21 WHERE TEACHERID = :old.TEACHERID;
DELETE FROM Mahak.HYBRID22 WHERE TEACHERID = :old.TEACHERID;
END;
/