WITH MonthlyRevenue AS (
    SELECT 
        strftime('%Y-%m', "Date") AS Month_Year,
        ROUND(SUM("Total Revenue"), 2) AS Revenue
    FROM 
       Online_Sales_Data
    GROUP BY 
        strftime('%Y-%m', "Date")
)
SELECT 
    Month_Year,
    Revenue,
    ROUND((Revenue - LAG(Revenue) OVER (ORDER BY Month_Year)) / 
          LAG(Revenue) OVER (ORDER BY Month_Year) * 100, 2) AS MoM_Growth_Percentage
FROM 
    MonthlyRevenue
ORDER BY 
    Month_Year;
