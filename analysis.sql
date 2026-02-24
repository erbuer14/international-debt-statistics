/*
Project: Analyze International Debt Statistics
*/

-- ============================================================
-- 1) num_distinct_countries
-- ============================================================

/*
Goal:
Identify the number of distinct countries present in the database.

Output:
- total_distinct_countries
*/

SELECT COUNT(DISTINCT country_name) AS total_distinct_countries
FROM international_debt;

-- ============================================================
-- 2) highest_debt_country
-- ============================================================

/*
Goal:
Identify the country that has the highest amount of debt.

Output:
- country_name
- total_debt
*/

SELECT country_name, SUM(debt) AS total_debt
FROM international_debt
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 1;

-- ============================================================
-- 3) lowest_principal_repayment
-- ============================================================

/*
Identify the country with the lowest amount of principal repayments (indicated by the "DT.AMT.DLXF.CD").

Output:
- country_name
- indicator_name
- lowest_principal_repyament
*/

SELECT country_name, indicator_name, debt AS lowest_repayment
FROM international_debt
WHERE indicator_code = 'DT.AMT.DLXF.CD'
ORDER BY lowest_repayment
LIMIT 1;