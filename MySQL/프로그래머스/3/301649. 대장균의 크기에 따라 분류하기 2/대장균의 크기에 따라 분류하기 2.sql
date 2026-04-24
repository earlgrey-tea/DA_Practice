-- 코드를 작성해주세요
SELECT ID
        ,CASE
            WHEN pct <= 0.25 THEN 'CRITICAL'
            WHEN pct <= 0.50 THEN 'HIGH'
            WHEN pct <= 0.75 THEN 'MEDIUM'
            ELSE 'LOW'
        END AS 'COLONY_NAME'
FROM (SELECT ID, ROW_NUMBER() OVER(ORDER BY SIZE_OF_COLONY DESC) / COUNT(ID) OVER() AS 'pct'
        FROM ECOLI_DATA) S

ORDER BY 1