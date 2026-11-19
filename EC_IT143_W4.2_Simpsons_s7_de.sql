
USE Simpsons;
GO

-- EC_IT143_W4.2_Simpsons_s7_de.sql
-- Step 7: Turn the Ad Hoc SQL script into a Stored Procedure
-- Community: Simpsons
-- Author: David Ebedot

CREATE OR ALTER PROCEDURE dbo.usp_Simpsons_Transactions_Per_Category_Load
AS
BEGIN

    -- Reload data
    TRUNCATE TABLE dbo.t_Simpsons_Transactions_Per_Category;

    INSERT INTO dbo.t_Simpsons_Transactions_Per_Category
        (Category, Total_Transactions)
    SELECT
        Category,
        Total_Transactions
    FROM dbo.v_Simpsons_Transactions_Per_Category;

    -- Review results
    SELECT *
    FROM dbo.t_Simpsons_Transactions_Per_Category
    ORDER BY Category_ID;

END;
GO
