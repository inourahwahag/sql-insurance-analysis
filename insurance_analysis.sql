USE InsuranceAnalysis;
SELECT COUNT(*) AS total_records
FROM insurance_data;
SELECT *
FROM insurance_data
LIMIT 10;
SELECT
COUNT(DISTINCT Gender) AS genders,
COUNT(DISTINCT Region_Code) AS regions,
COUNT(DISTINCT Vehicle_Age) AS vehicle_age_categories
FROM insurance_data;
SELECT
Gender,
COUNT(*) AS customers
FROM insurance_data
GROUP BY Gender
ORDER BY customers DESC;
SELECT
ROUND(AVG(Age),2) AS average_age,
MIN(Age) AS minimum_age,
MAX(Age) AS maximum_age
FROM insurance_data;
SELECT
Age,
COUNT(*) AS customers
FROM insurance_data
GROUP BY Age
ORDER BY customers DESC
LIMIT 10;
SELECT
ROUND(AVG(Annual_Premium),2) AS average_premium,
MIN(Annual_Premium) AS minimum_premium,
MAX(Annual_Premium) AS maximum_premium
FROM insurance_data;
SELECT
Gender,
SELECT
Gender,
ROUND(AVG(Annual_Premium),2) AS average_premium
FROM insurance_data
GROUP BY Gender;
SELECT
Vehicle_Age,
COUNT(*) AS total
FROM insurance_data
GROUP BY Vehicle_Age
ORDER BY total DESC;
SELECT
Vehicle_Damage,
COUNT(*) AS total
FROM insurance_data
GROUP BY Vehicle_Damage;

SELECT
Vehicle_Age,
Vehicle_Damage,
COUNT(*) AS customers
FROM insurance_data
GROUP BY Vehicle_Age,Vehicle_Damage
ORDER BY customers DESC;
SELECT
Previously_Insured,
COUNT(*) AS customers
FROM insurance_data
GROUP BY Previously_Insured;
SELECT
Driving_License,
COUNT(*) AS customers
FROM insurance_data
GROUP BY Driving_License;
SELECT
Response,
COUNT(*) AS customers
FROM insurance_data
GROUP BY Response;
SELECT
Response,
ROUND(AVG(Age),2) AS average_age
FROM insurance_data
GROUP BY Response;
SELECT
Response,
ROUND(AVG(Annual_Premium),2) AS average_premium
FROM insurance_data
GROUP BY Response;
SELECT
Gender,
Response,
COUNT(*) AS customers
FROM insurance_data
GROUP BY Gender,Response
ORDER BY Gender;
SELECT
Vehicle_Damage,
Response,
COUNT(*) AS customers
FROM insurance_data
GROUP BY Vehicle_Damage,Response;
SELECT
Vehicle_Age,
ROUND(AVG(Annual_Premium),2) AS avg_premium,
COUNT(*) AS customers
FROM insurance_data
GROUP BY Vehicle_Age
HAVING COUNT(*) > 1000
ORDER BY avg_premium DESC;
SELECT
Region_Code,
COUNT(*) AS customers
FROM insurance_data
GROUP BY Region_Code
ORDER BY customers DESC
LIMIT 10;
SELECT
CASE
WHEN Age < 30 THEN '18-29'
WHEN Age BETWEEN 30 AND 45 THEN '30-45'
WHEN Age BETWEEN 46 AND 60 THEN '46-60'
ELSE '60+'
END AS age_group,
COUNT(*) AS customers
FROM insurance_data
GROUP BY age_group
ORDER BY customers DESC;
SELECT
CASE
WHEN Annual_Premium < 20000 THEN 'Low'
WHEN Annual_Premium BETWEEN 20000 AND 40000 THEN 'Medium'
ELSE 'High'
END AS premium_level,
COUNT(*) AS customers
FROM insurance_data
GROUP BY premium_level;
SELECT
CASE
WHEN Response=1 THEN 'Accepted'
ELSE 'Rejected'
END AS insurance_offer,
COUNT(*) AS customers
FROM insurance_data
GROUP BY insurance_offer;
