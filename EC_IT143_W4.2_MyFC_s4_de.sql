
USE MyFC;
GO

DROP TABLE IF EXISTS dbo.t_MyFC_Players_Per_Team;
GO

SELECT
    Team,
    Total_Players
INTO dbo.t_MyFC_Players_Per_Team
FROM dbo.v_MyFC_Players_Per_Team;
GO

-- Review the new table
SELECT *
FROM dbo.t_MyFC_Players_Per_Team;
GO
