-- Daily Sales Trend (Total Revenue per Day)
SELECT 
    "Date", -- Use the Date column directly
    ROUND(SUM("Total Revenue"), 2) AS Daily_Revenue
FROM 
    Online_Sales_Data
GROUP BY 
    "Date" -- Group by Date
ORDER BY 
    "Date"; -- Order by Date chronologically
