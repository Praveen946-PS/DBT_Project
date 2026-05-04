SELECT
    CALL_ID,
    HCP_NPI,
    FIRST_NAME,
    LAST_NAME,
    SPECIALTY,
    TERRITORY_ID,
    CALL_DATE,
    CALL_TYPE,
    CALL_STATUS
FROM {{ ref('silver_veeva_calls') }}
WHERE CALL_STATUS = 'Completed'