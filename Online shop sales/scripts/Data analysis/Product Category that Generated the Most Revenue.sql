-- 2. Product Category that Generated the Most Revenue (rounded to 2 decimal places)
SELECT 
    "Product Category",
    ROUND(SUM("Total Revenue"), 2) AS Category_Revenue
FROM 
   Online_Sales_Data
GROUP BY 
    "Product Category"
ORDER BY 
    Category_Revenue DESC
LIMIT 1;
