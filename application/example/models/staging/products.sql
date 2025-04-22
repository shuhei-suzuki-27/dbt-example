SELECT
    CAST(id AS CHAR(5)),
    CAST(name AS VARCHAR(255)),
    CAST(price AS NUMERIC)
FROM {{ source('master', 'products') }}