/*
Today's Topic: Case Statement
*/

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT FirstName, LastName, Age,  
CASE 
	WHEN Age > 30 THEN 'Old' 
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END As AgeStatus
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age

SELECT FirstName, LastName, Jobtitle, Salary,
CASE 
	WHEN Jobtitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM [SQL Tutorial].dbo.EmployeeDemographics as demo
JOIN [SQL Tutorial].dbo.EmployeeSalary as sal
	ON demo.EmployeeID = sal.EmployeeID


