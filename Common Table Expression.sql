/*
Today's Topic: CTEs

Sub Query
*/

WITH CTE_Employee AS 
(SELECT FirstName, LastName, Gender, Salary
, COUNT(gender) OVER (PARTITION by Gender) as TotalGender
, AVG(Salary) OVER (PARTITION By Gender) as AvgSalary
FROM [SQL Tutorial]..EmployeeDemographics emp
JOIN [SQL Tutorial]..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)


SELECT FirstName, AvgSalary
FROM CTE_Employee;
