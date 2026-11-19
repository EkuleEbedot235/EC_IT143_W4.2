
USE Simpsons;
GO

CREATE OR ALTER VIEW dbo.v_Simpsons_Transactions_Per_Category
AS

-- EC_IT143_W4.2_Simpsons_s4_de.sql
-- Step 4: Turn the Ad Hoc SQL Query into a View
-- Community: Simpsons
-- Author: David Ebedot
-- Purpose: Count transactions in each category.

SELECT
    Category,
    COUNT(*) AS Total_Transactions
FROM dbo.Planet_Express
GROUP BY Category;
GO

-- Review the view
SELECT *
FROM dbo.v_Simpsons_Transactions_Per_Category
ORDER BY Category;
GO
