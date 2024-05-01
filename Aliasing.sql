/*
Today's Topic: Aliasing
*/
SELECT * 
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT Demo.EmployeeID, Sal.Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics AS Demo
JOIN [SQL Tutorial].dbo.EmployeeSalary AS Sal
	On Demo.EmployeeID = Sal.EmployeeID

SELECT * 
FROM [SQL Tutorial].dbo.EmployeeSalary


SELECT FirstName + ' ' + LastName AS FullName
FROM [SQL Tutorial].dbo.EmployeeDemographics



SELECT Demo.EmployeeID, Demo.FirstName, Sal.JobTitle, Ware.Age
FROM [SQL Tutorial].dbo.EmployeeDemographics Demo
LEFT JOIN [SQL Tutorial].dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID


