/*

Today's Topic: Subqueries (in the Select, From, and Where Statement)

*/

Select *
From EmployeeSalary

-- Subquery in Select

Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) AS AllAvgSalary
From EmployeeSalary

-- How to do it with Partition By

Select EmployeeID, Salary, AVG(Salary) over () AS  AllAvgSalary
FROM EmployeeSalary

-- Why Group By doesn't work

Select EmployeeID, Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
Group By EmployeeID, Salary
Order By 1,2

-- Subquery in From
Select a.EmployeeID, AllAvgSalary
From (Select EmployeeID, Salary, AVG(Salary) over () AS  AllAvgSalary
		FROM EmployeeSalary) a

--  Subquery in Where
Select EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID in (
		Select EmployeeID
		From EmployeeDemographics
		WHERE Age > 30)

SELECT * 
FROM EmployeeDemographics

SELECT *
FROM EmployeeSalary