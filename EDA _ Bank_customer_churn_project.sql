SELECT * FROM customers
LIMIT 5;

~~Exploratory Data Analysis 
~~Goal: Uncover patterns and Insights

~~Churn Rate
SELECT AVG(CASE WHEN churn = 1 THEN 1 ELSE 0 END) AS churn_rate
FROM customers;

~~Churn by Age_Group
SELECT 
FLOOR(age/10)*10 AS age_group,
COUNT(*) AS total,
SUM(churn) AS churned 
FROM customers
GROUP BY age_group
ORDER BY 1 DESC;

~~Balance vs Churn
SELECT 
CEILING(AVG(balance)) AS avg_balance, churn 
FROM customers
GROUP BY churn;
