### 1. How Does Loyalty Card Membership Influence Sales Volume, Average Order Value, and Product Preferences?
Selected the cleaned dataset and inserted a Pivot Table (Insert > Pivot Table).

**1.	Create a Pivot Table:**
- Placed **Loyalty_Card** in the **Rows** area.
- Added **Sales** to the **Values** area twice:
- Set to Sum to calculate **total sales volume**.
- Set to Average to calculate **average order value**.

**2.	Analyze Product Preferences:**
- Added **Coffee_Type, Roast_Type**, and **Size** to the **Columns** area of the Pivot Table.

### 2. Which Geographic Regions Generate the Highest Revenue and Profit?

**1.	Create a Pivot Table:**
- Placed **Country** in the **Rows** area.
- Added **Sales** to the **Values** area (set to Sum) to calculate **total revenue**.
- Added **Profit** to the **Values** area (set to Sum) to calculate **total profit**.

**2.	Sort Data:**
- Sorted the Pivot Table by Sales or Profit in descending order to identify the top-performing regions.

### 3. What Are the Most Profitable Product Combinations by Region?

**1.	Create a Pivot Table:**
- Placed **Country** in the Rows area.
- Added **Coffee_Type, Roast_Type**, and **Size** to the **Columns** area.
- Added **Profit** to the **Values** area (set to Sum).

**2.	Filter Data:**
- Filtered the Pivot Table to show only the top regions (identified in Question 2).
- Identified the most profitable combinations of Coffee_Type, Roast_Type, and Size.

### 4. Do Loyalty Cardholders Prefer Specific Product Attributes?

**1.	Create a Pivot Table:**
- Placed **Loyalty_Card** in the **Rows** area.
- Added **Coffee_Type, Roast_Type**, and **Size** to the **Columns** area.
- Added **Sales** to the **Values** area (set to Count).

**2.	Analyze Data:**
- Compared the distribution of product attributes between loyalty cardholders and non-cardholders.

