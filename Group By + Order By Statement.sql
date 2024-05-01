/*
Group By, Order By
*/

SELECT *
FROM EmployeeDemographics
ORDER By Age DESC, Gender DESC
--ORDER By 4 Desc, 5 Desc Same Results 

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender DESC