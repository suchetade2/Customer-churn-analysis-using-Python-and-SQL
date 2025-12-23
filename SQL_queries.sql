-- =========================================
-- Customer Churn Analysis - MySQL Queries
-- =========================================

-- 1. View sample data
SELECT *
FROM churn_db.customer_churn_analysis
LIMIT 10;

-- 2. Total number of customers
SELECT COUNT(*) 
FROM churn_db.customer_churn_analysis;

-- 3. Overall churn rate
SELECT 
    churn, COUNT(*) AS total_customers
FROM churn_db.customer_churn_analysis
GROUP BY churn;

--4. Churn rate by subscription type
SELECT
    `subscription type` AS subscription_type,
    ROUND(
        AVG(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100,
    2) AS churn_rate
FROM churn_db.customer_churn_analysis
GROUP BY `subscription type`
ORDER BY churn_rate DESC;

--5. Churn by contract length
SELECT
    `contract length` AS contract_length,
    ROUND(
        AVG(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100,
    2) AS churn_rate
FROM churn_db.customer_churn_analysis
GROUP BY `contract length`
ORDER BY churn_rate DESC;

--6. Tenure Group vs Churn
SELECT
    CASE
        WHEN tenure < 6 THEN '0–6 months'
        WHEN tenure BETWEEN 6 AND 12 THEN '6–12 months'
        WHEN tenure BETWEEN 12 AND 24 THEN '1–2 years'
        ELSE '2+ years'
    END AS tenure_group,
    ROUND(
        AVG(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100,
    2) AS churn_rate
FROM churn_db.customer_churn_analysis
GROUP BY tenure_group
ORDER BY churn_rate DESC;

--7. Usage Frequency vs Churn
SELECT
    CASE
        WHEN `usage frequency` < 3 THEN 'Low Usage'
        WHEN `usage frequency` BETWEEN 3 AND 6 THEN 'Medium Usage'
        ELSE 'High Usage'
    END AS usage_group,
    ROUND(
        AVG(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100,
    2) AS churn_rate
FROM churn_db.customer_churn_analysis
GROUP BY usage_group
ORDER BY churn_rate DESC;

--8. Support Calls vs Churn
SELECT
    CASE
        WHEN `support calls` = 0 THEN 'No Calls'
        WHEN `support calls` BETWEEN 1 AND 3 THEN '1–3 Calls'
        ELSE '4+ Calls'
    END AS support_group,
    ROUND(
        AVG(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100,
    2) AS churn_rate
FROM churn_db.customer_churn_analysis
GROUP BY support_group
ORDER BY churn_rate DESC;

--9. Payment Delay vs Churn
SELECT
    CASE
        WHEN `payment delay` = 0 THEN 'No Delay'
        WHEN `payment delay` BETWEEN 1 AND 5 THEN '1–5 Days'
        ELSE '5+ Days'
    END AS payment_delay_group,
    ROUND(
        AVG(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100,
    2) AS churn_rate
FROM churn_db.customer_churn_analysis
GROUP BY payment_delay_group
ORDER BY churn_rate DESC;

--10. High-Risk Customers(Business Query)
SELECT *
FROM churn_db.customer_churn_analysis
WHERE churn = 'Yes'
  AND tenure < 6
  AND `usage frequency` < 3
  AND `support calls` > 3;
