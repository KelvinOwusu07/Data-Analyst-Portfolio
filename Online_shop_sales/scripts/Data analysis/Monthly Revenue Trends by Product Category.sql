-- Monthly Revenue Trends by Product Category
WITH Monthly_Revenue AS (
    SELECT 
        "Product Category",
        STRFTIME('%Y-%m', "Date") AS Month, -- Extract Year and Month
        ROUND(SUM("Total Revenue"), 2) AS Monthly_Revenue
    FROM 
        Online_Sales_Data
    GROUP BY 
        "Product Category", STRFTIME('%Y-%m', "Date")
),
Growth_Check AS (
    SELECT 
        "Product Category",
        Month,
        Monthly_Revenue,
        LAG(Monthly_Revenue) OVER (PARTITION BY "Product Category" ORDER BY Month) AS Previous_Month_Revenue
    FROM 
        Monthly_Revenue
)
SELECT 
    "Product Category",
    COUNT(CASE WHEN Monthly_Revenue > Previous_Month_Revenue THEN 1 END) AS Growth_Months,
    COUNT(CASE WHEN Monthly_Revenue < Previous_Month_Revenue THEN 1 END) AS Decline_Months,
    COUNT(CASE WHEN Monthly_Revenue = Previous_Month_Revenue THEN 1 END) AS Stable_Months
FROM 
    Growth_Check
GROUP BY 
    "Product Category"
ORDER BY 
    "Product Category";
    
    /*Explanation:
Monthly_Revenue CTE:
Calculates the total revenue for each product category by month.
Uses STRFTIME('%Y-%m', "Date") to extract the year and month from the Date column.

Growth_Check CTE:
Uses the LAG() window function to compare the current month's revenue with the previous month's revenue for each product category.
This helps identify whether revenue increased, decreased, or remained stable compared to the previous month.
