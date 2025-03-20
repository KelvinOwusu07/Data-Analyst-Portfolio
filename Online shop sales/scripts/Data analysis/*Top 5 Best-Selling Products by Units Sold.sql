-- Top 5 Best-Selling Products by Units Sold
SELECT 
    "Product Name",
    SUM("Units Sold") AS Total_Units_Sold
FROM 
    Online_Sales_Data
GROUP BY 
    "Product Name"
ORDER BY 
    Total_Units_Sold DESC
LIMIT 5;
