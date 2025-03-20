-- Top 5 Best-Selling Products by Revenue
SELECT 
    "Product Name",
    ROUND(SUM("Total Revenue"), 2) AS Total_Revenue
FROM 
    Online_Sales_Data
GROUP BY 
    "Product Name"
ORDER BY 
    Total_Revenue DESC
LIMIT 5;
