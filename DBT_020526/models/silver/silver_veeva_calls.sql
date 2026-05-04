SELECT
    c.CALL_ID,
    c.HCP_NPI,
    h.FIRST_NAME,
    h.LAST_NAME,
    h.SPECIALTY,
    h.TERRITORY_ID,
    c.CALL_DATE,
    c.CALL_TYPE,
    c.CALL_STATUS
FROM {{ ref('stg_veeva_calls') }} c
LEFT JOIN {{ ref('stg_hcp') }} h
    ON c.HCP_NPI = h.HCP_NPI