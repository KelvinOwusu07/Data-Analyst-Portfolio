### Joining Order and Customers Tables
**Purpose:**
To fill in missing customer-related data (Customer_Name, Email, Country, and Loyalty_Card) in the Order sheet.

**Method:**
Used **VLOOKUP** in Excel to pull data from the Customers sheet into the Order sheet.

**Formula:**
=VLOOKUP(C2, Customers!A:I, Column_Index, FALSE)

C2: Customer_ID in the Order sheet.

Customers!A:I: Range of the Customers sheet.

Column_Index: Column number in the Customers sheet for the field being pulled:
- 2 for Customer_Name
- 3 for Email
- 7 for Country
- 9 for Loyalty_Card

FALSE: Ensures an exact match.


### Joining Order and Products Tables
**Purpose:**
To fill in missing product-related data (Coffee_Type, Roast_Type, Size, Unit_Price, and Profit) in the Order sheet.

**Method:**
Used **VLOOKUP** in Excel to pull data from the Products sheet into the Order sheet.

**Formula:**
=VLOOKUP(D2, Products!A:G, Column_Index, FALSE)
D2: Product_ID in the Order sheet.
Products!A:G: Range of the Products sheet.
Column_Index: Column number in the Products sheet for the field being pulled:
- 2 for Coffee_Type
- 3 for Roast_Type
- 4 for Size
- 5 for Unit_Price
- 7 for Profit

FALSE: Ensures an exact match.

 ### Calculating Sales
**Purpose:**
To compute the total sales for each order.

**Method:**
Added a Sales column to the Order sheet.

**Formula:**
= E2 * L2
- E2: Quantity in the Order sheet.
- L2: Unit_Price in the Order sheet (pulled from the Products sheet).
