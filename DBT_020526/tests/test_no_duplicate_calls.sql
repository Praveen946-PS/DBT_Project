SELECT CALL_ID, COUNT(*) AS cnt
FROM {{ ref('fact_call_activity') }}
GROUP BY CALL_ID
HAVING COUNT(*) > 1