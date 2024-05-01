/*

Today's Topic: Stored Procedures

*/
CREATE PROCEDURE TEST
AS 
Select *
From [SQL Tutorial].dbo.EmployeeDemographics


EXEC TEST
-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

CREATE PROCEDURE Temp_Employee
@JobTitle nvarchar(100)
AS
BEGIN
DROP TABLE IF EXISTS #Temp_Employee
Create table #Temp_Employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)


Insert into #Temp_Employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM [SQL Tutorial]..EmployeeDemographics emp
JOIN [SQL Tutorial]..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE JobTitle = @JobTitle
GROUP BY JobTitle

Select * 
From #Temp_Employee

END
GO;

EXEC Temp_Employee @JobTitle = 'Salesman'



--|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

CREATE PROCEDURE Temp_Employee2
@JobTitle nvarchar(100)
AS
DROP TABLE IF EXISTS #temp_employee2
Create table #temp_employee2 (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)


Insert into #temp_employee2
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM [SQL Tutorial]..EmployeeDemographics emp
JOIN [SQL Tutorial]..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE JobTitle = @JobTitle --- make sure to change this in this script from original above
GROUP BY JobTitle

Select * 
From #temp_employee2
GO;

exec Temp_Employee2 @jobtitle = 'Accountant'


