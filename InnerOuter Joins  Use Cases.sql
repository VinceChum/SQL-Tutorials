/*
Inner Joins = join in commons 
, Full/Left/Right/ Outer Joins
*/

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT *
FROM [SQL Tutorial].dbo.EmployeeSalary

SELECT JobTitle, AVG(Salary) as Avgsal
FROM [SQL Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where JobTitle = 'Salesman'
GROUP BY JobTitle 

SELECT JobTitle, AVG(Salary) as Avgsal
FROM [SQL Tutorial].dbo.EmployeeDemographics
Inner Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'HR'
GROUP BY JobTitle



