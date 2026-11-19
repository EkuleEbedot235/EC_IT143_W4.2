
USE Simpsons;
GO

-- EC_IT143_W4.2_Simpsons_s5.1_de.sql
-- Step 5.1: Turn the View into a Table
-- Community: Simpsons
-- Author: David Ebedot

-- Create a table from the view

DROP TABLE IF EXISTS dbo.t_Simpsons_Transactions_Per_Category;
GO

SELECT
    Category,
    Total_Transactions
INTO dbo.t_Simpsons_Transactions_Per_Category
FROM dbo.v_Simpsons_Transactions_Per_Category;
GO

-- Review the new table
SELECT *
FROM dbo.t_Simpsons_Transactions_Per_Category
ORDER BY Category;
GO
