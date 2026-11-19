
-- EC_IT143_W4.2_MyFC_s3_de.sql
-- Step 3: Create an Ad Hoc SQL Query
-- Community: MyFC
-- Author: David Ebedot

-- Q: How many players are on each team?

SELECT
    t.t_code AS Team,
    COUNT(p.pl_id) AS Total_Players
FROM dbo.tblTeamDim AS t
INNER JOIN dbo.tblPlayerDim AS p
    ON t.t_id = p.t_id
GROUP BY
    t.t_code
ORDER BY
    t.t_code;
