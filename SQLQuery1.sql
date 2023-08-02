question 1
SELECT *
FROM dbo.customers;
 
SELECT TOP 3
    region,
    COUNT(a.Customer_ID) AS num_subscribers,
    SUM(a.TOTAL_RECHARGE_AMOUNT) AS total_recharge_amount,
    (SUM(a.TOTAL_RECHARGE_AMOUNT) / (SELECT SUM(TOTAL_RECHARGE_AMOUNT) FROM dbo.customers)) * 100 AS percentage_split
FROM
    dbo.customers AS a
JOIN
    dbo.location AS b ON a.Cell_ID = b.CELL_ID
GROUP BY
    region
ORDER BY
    COUNT(a.Customer_ID) DESC;

SELECT TOP 3
    region,
    COUNT(a.Customer_ID) AS num_subscribers,
    SUM(a.TOTAL_RECHARGE_AMOUNT) AS total_recharge_amount,
    (SUM(a.TOTAL_RECHARGE_AMOUNT) / (SELECT SUM(TOTAL_RECHARGE_AMOUNT) FROM dbo.customers)) * 100 AS percentage_split
FROM
    dbo.customers AS a
JOIN
    dbo.location AS b ON a.Cell_ID = b.CELL_ID
GROUP BY
    region
ORDER BY
    COUNT(a.Customer_ID) ASC;

question 2
WITH MostRecentMonth AS (
    SELECT MAX(ACTIVATION_DATE) AS latest_month
    FROM dbo.customers AS c
    JOIN dbo.location AS l ON c.Cell_ID = l.CELL_ID
    WHERE l.region = 'Central Region'
),
NewSubscribers AS (
    SELECT
        c.Customer_ID,
        c.ACTIVATION_DATE,
        c.DATA_SPENT,
        c.Total_Call_Duration_Min
    FROM dbo.customers AS c
    JOIN dbo.location AS l ON c.Cell_ID = l.CELL_ID
    WHERE l.region = 'Central Region'
        AND c.ACTIVATION_DATE >= (SELECT latest_month FROM MostRecentMonth)
),
NonDataUsers AS (
    SELECT
        Customer_ID,
        ACTIVATION_DATE,
        DATA_SPENT,
        Total_Call_Duration_Min
    FROM NewSubscribers
    WHERE DATA_SPENT = 0
)
SELECT *
FROM NonDataUsers;

question3
SELECT COUNT(Customer_ID) AS num_customers
FROM dbo.customers
WHERE DATA_SPENT BETWEEN 4 AND 7 -- Data usage between 4GB and 7GB
    AND Tenure > 12 * 7; -- because we are looking for the Tenure that is greater than 7 years (12 months * 7)

question 5
SELECT MAX(date_key) AS last_date_with_highest_data_usage
FROM dbo.current_offers_balance
WHERE data_kb = (
    SELECT MAX(data_kb)
    FROM dbo.current_offers_balance
);





    