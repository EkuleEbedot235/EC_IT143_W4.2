
USE MyFC;
GO

-- Step 1: Reload data
TRUNCATE TABLE dbo.t_MyFC_Players_Per_Team;

INSERT INTO dbo.t_MyFC_Players_Per_Team
    (Team, Total_Players)
SELECT
    Team,
    Total_Players
FROM dbo.v_MyFC_Players_Per_Team;

-- Step 2: Review results
SELECT *
FROM dbo.t_MyFC_Players_Per_Team
ORDER BY Team;
GO
