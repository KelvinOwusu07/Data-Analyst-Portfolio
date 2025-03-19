-- Monthly Sales Trend (Total Revenue per Month)
SELECT 
    STRFTIME('%Y-%m', "Date") AS Month, -- Extract Year and Month from the Date
    ROUND(SUM("Total Revenue"), 2) AS Monthly_Revenue
FROM 
    Online_Sales_Data
GROUP BY 
    STRFTIME('%Y-%m', "Date") -- Group by Year and Month
ORDER BY 
    Month; -- Order by Month chronologically
