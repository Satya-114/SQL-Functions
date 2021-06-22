Select ASCII('A')
Select ASCII('A') as UpperCase, ASCII('a') as LowerCase
DECLARE @Number int
SET @Number = 65
WHILE(@Number <= 90)
BEGIN
  PRINT CHAR(@Number)
  SET @Number = @Number + 1
END
DECLARE @Number int
SET @Number = 97
WHILE(@Number <= 122)
BEGIN
  PRINT CHAR(@Number)
  SET @Number = @Number + 1
END
Select LTRIM('   Hello')
Select RTRIM('Hello   ')
Select LTRIM(RTRIM('   Hello   '))
Select LOWER('CONVERT This String Into Lower Case')
Select UPPER('CONVERT This String Into Lower Case')
Select REVERSE('ABCDEFGHIJKLMNOPQRSTUVWXYZ')
 Select LEN(' Functions   ')
 Select LEFT('ABCDE', 3)
 Select RIGHT('ABCDE', 3)
 CREATE TABLE Employees
( ID INT,Name VARCHAR(50),Department VARCHAR(50),Salary int)
INSERT INTO Employees Values (1, 'James', 'IT', 15000)
INSERT INTO Employees Values (2, 'Smith', 'IT', 35000)
INSERT INTO Employees Values (3, 'Rasol', 'HR', 15000)
INSERT INTO Employees Values (4, 'Rakesh', 'Payroll', 35000)
INSERT INTO Employees Values (5, 'Pam', 'IT', 42000)
INSERT INTO Employees Values (6, 'Stokes', 'HR', 15000)
INSERT INTO Employees Values (7, 'Taylor', 'HR', 67000)
INSERT INTO Employees Values (8, 'Preety', 'Payroll', 67000)
INSERT INTO Employees Values (9, 'Priyanka', 'Payroll', 55000)
INSERT INTO Employees Values (10, 'Anurag', 'Payroll', 15000)
INSERT INTO Employees Values (11, 'Marshal', 'HR', 55000)
INSERT INTO Employees Values (12, 'David', 'IT', 96000)
select * from Employees
SELECT  Department, 
 COUNT(*) AS NoOfEmployees, 
 SUM(Salary) AS TotalSalary,
 AVG(Salary) AS AvgSalary,
 MIN(Salary) AS MinSalary, 
 MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Department
create table emp(empid int,ename varchar(40),salary money , deptno int)
select * from emp
select ename, salary , ROW_NUMBER()over (order by salary desc)as ranks from emp
select ename, salary , Rank()over (order by salary desc)as ranks from emp
select ename, salary , Dense_Rank()over (order by salary desc)as ranks from emp
delete from emp
select ename,deptno, salary , ROW_NUMBER()over (partition by deptno order by salary desc)as ranks from emp
select ename,deptno, salary , Rank()over (partition by deptno order by salary desc)as ranks from emp
select ename,deptno, salary , DENSE_RANK()over (partition by deptno order by salary desc)as ranks from emp
