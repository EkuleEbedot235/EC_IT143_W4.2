
USE EC_IT143_DA;
GO

-- EC_IT143_W4.2_hello_world_s5.1_de.sql
-- Step 5.1: Turn the View into a Table
-- Community: Hello World
-- Author: David Ebedot

-- Remove the table if it already exists
DROP TABLE IF EXISTS dbo.t_hello_world;
GO

-- Create a table from the view
SELECT
    my_message,
    current_date_time
INTO dbo.t_hello_world
FROM dbo.v_hello_world_load;
GO

-- Review the new table
SELECT *
FROM dbo.t_hello_world;
GO

