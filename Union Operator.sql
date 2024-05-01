--/*
--Today's Topic: Union, Union All
--*/

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT *
FROM [SQL Tutorial].dbo.EmployeeSalary
ORDER BY EmployeeID


-- Iaalign nya yung dalawang data kahit walang kapareha
SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
FULL OUTER Join [SQL Tutorial].dbo.WareHouseEmployeeDemographics
	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

-- Susunod sa last line yung sunod na data
SELECT EmployeeID, FirstName, Age
FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeSalary
ORDER BY EmployeeID