
SELECT *
FROM worldlifexpectancy;


USE worldlifexpectancy;

SELECT *
FROM worldlifexpectancy;

SELECT Country , MAX(Lifeexpectancy),MIN(Lifeexpectancy)
FROM worldlifexpectancy
GROUP BY Country
ORDER BY Country DESC;


SELECT Country , MAX(Lifeexpectancy),MIN(Lifeexpectancy)
FROM worldlifexpectancy
GROUP BY Country
HAVING MAX(Lifeexpectancy) <> 0
ORDER BY Country DESC;



SELECT Country , MAX(Lifeexpectancy),MIN(Lifeexpectancy)
FROM worldlifexpectancy
GROUP BY Country
HAVING MIN(Lifeexpectancy) <> 0
AND MAX(Lifeexpectancy) <> 0
ORDER BY Country DESC;



SELECT Country,
MAX(Lifeexpectancy),
MIN(Lifeexpectancy),
ROUND(MAX(Lifeexpectancy) - MIN(Lifeexpectancy),1) AS Life_Increase_15_Years
FROM worldlifexpectancy
GROUP BY Country
HAVING MIN(Lifeexpectancy) <> 0
AND MAX(Lifeexpectancy) <> 0
ORDER BY Country DESC;


SELECT Country,
MAX(Lifeexpectancy),
MIN(Lifeexpectancy),
ROUND(MAX(Lifeexpectancy) - MIN(Lifeexpectancy),1) AS Life_Increase_15_Years
FROM worldlifexpectancy
GROUP BY Country
HAVING MIN(Lifeexpectancy) <> 0
AND MAX(Lifeexpectancy) <> 0
ORDER BY Life_Increase_15_Years DESC;


SELECT Year, AVG(Lifeexpectancy)
FROM worldlifexpectancy
GROUP BY Year;


SELECT Year,Country, ROUND(AVG(Lifeexpectancy),2)
FROM worldlifexpectancy
GROUP BY Year,Country;


SELECT Year,ROUND(AVG(Lifeexpectancy),2)
FROM worldlifexpectancy
GROUP BY Year;


SELECT Year,ROUND(AVG(Lifeexpectancy),1)
FROM worldlifexpectancy
GROUP BY Year
ORDER BY Year;


SELECT Year,ROUND(AVG(Lifeexpectancy),2)
FROM worldlifexpectancy
GROUP BY Year
ORDER BY Year;
SELECT Year,
       ROUND(AVG(Lifeexpectancy), 2) AS AvgLife
FROM worldlifexpectancy
GROUP BY Year
HAVING MIN(Lifeexpectancy) <> 0
   AND MAX(Lifeexpectancy) <> 0
ORDER BY Year;



SELECT *
FROM worldlifexpectancy;


SELECT Country,ROUND(AVG(Lifeexpectancy),2),ROUND(AVG(GDP),2)
FROM worldlifexpectancy
GROUP BY Country
ORDER BY Country;



SELECT Country,ROUND(AVG(Lifeexpectancy),2)AS Life_Exp,ROUND(AVG(GDP),2) AS GDP
FROM worldlifexpectancy
GROUP BY Country
ORDER BY Life_Exp ASC;


SELECT Country,ROUND(AVG(Lifeexpectancy),2)AS Life_Exp,ROUND(AVG(GDP),2) AS GDP
FROM worldlifexpectancy
GROUP BY Country
HAVING Life_Exp > 0
AND GDP > 0
ORDER BY GDP DESC;


SELECT *
FROM worldlifexpectancy;


SELECT Country,ROUND(AVG(Lifeexpectancy),2)AS Life_Exp,ROUND(AVG(GDP),2) AS GDP
FROM worldlifexpectancy
GROUP BY Country
HAVING Life_Exp > 0
AND GDP > 0
ORDER BY GDP DESC;



SELECT 
    SUM(CASE WHEN GDP >= 1500 THEN 1 ELSE 0 END) AS High_GDP_Count,
    AVG(CASE WHEN GDP >= 1500 THEN Lifeexpectancy ELSE NULL END) AS High_GDP_Life_Expectancy
FROM world_life_expectancy;


SELECT 
    SUM(CASE WHEN GDP >= 1500 THEN 1 ELSE 0 END) AS High_GDP_Count,
    AVG(CASE WHEN GDP >= 1500 THEN Lifeexpectancy ELSE NULL END) AS High_GDP_Life_Expectancy
FROM worldlifexpectancy;


SELECT 
    SUM(CASE WHEN GDP >= 1500 THEN 1 ELSE 0 END) AS High_GDP_Count,
    ROUND(AVG(CASE WHEN GDP >= 1500 THEN Lifeexpectancy ELSE NULL END)) AS High_GDP_Life_Expectancy
FROM worldlifexpectancy;


SELECT *
FROM worldlifexpectancy;

SELECT 
    SUM(CASE WHEN GDP >= 1500 THEN 1 ELSE 0 END) AS High_GDP_Count,
    ROUND(AVG(CASE WHEN GDP >= 1500 THEN Lifeexpectancy ELSE NULL END),2) AS High_GDP_Life_Expectancy,
    SUM(CASE WHEN GDP <= 1500 THEN 1 ELSE 0 END) AS Low_GDP_Count,
    ROUND(AVG(CASE WHEN GDP >= 1500 THEN Lifeexpectancy ELSE NULL END),2) AS Low_GDP_Life_Expectancy
FROM worldlifexpectancy;


SELECT Status, ROUND(AVG(Lifeexpectancy),2)
FROM worldlifexpectancy
GROUP BY Status;

SELECT Status, COUNT(DISTINCT(Country))
FROM worldlifexpectancy
GROUP BY Status;


SELECT Status, COUNT(DISTINCT(Country)),ROUND(AVG(Lifeexpectancy),2)
FROM worldlifexpectancy
GROUP BY Status;


SELECT Country,ROUND(AVG(Lifeexpectancy),2)AS Life_Exp,ROUND(AVG(BMI),2) AS BMI
FROM worldlifexpectancy
GROUP BY Country
HAVING Life_Exp > 0
AND BMI > 0
ORDER BY BMI DESC;


SELECT *
FROM worldlifexpectancy