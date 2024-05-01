/*
Today's Topic: Partition By
*/

Select * 
FROM [SQL Tutorial].dbo.EmployeeDemographics

Select * 
FROM [SQL Tutorial].dbo.EmployeeSalary

SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION By Gender) as TotalGender
FROM [SQL Tutorial]..EmployeeDemographics den
JOIN [SQL Tutorial]..EmployeeSalary sal
	ON den.EmployeeID = sal.EmployeeID

SELECT Gender, COUNT(Gender) 
FROM [SQL Tutorial]..EmployeeDemographics den
JOIN [SQL Tutorial]..EmployeeSalary sal
	ON den.EmployeeID = sal.EmployeeID
GROUP By Gender
