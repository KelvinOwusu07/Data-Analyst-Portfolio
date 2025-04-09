SELECT 
    "Product Category",
    ROUND(SUM(CASE WHEN strftime('%Y-%m', "Date") = '2024-01' THEN "Total Revenue" ELSE 0 END), 2) AS Jan_Revenue,
    ROUND(SUM(CASE WHEN strftime('%Y-%m', "Date") = '2024-08' THEN "Total Revenue" ELSE 0 END), 2) AS Aug_Revenue,
    ROUND((SUM(CASE WHEN strftime('%Y-%m', "Date") = '2024-08' THEN "Total Revenue" ELSE 0 END) - 
          SUM(CASE WHEN strftime('%Y-%m', "Date") = '2024-01' THEN "Total Revenue" ELSE 0 END)) / 
          SUM(CASE WHEN strftime('%Y-%m', "Date") = '2024-01' THEN "Total Revenue" ELSE 0 END) * 100, 2) AS Percent_Change
FROM 
    Online_Sales_Data
GROUP BY 
    "Product Category"
ORDER BY 
    Percent_Change DESC;
