SELECT
    CAST(id AS CHAR(5)),
    CAST(name AS VARCHAR(255)),
    CAST(created_at AS DATE),
    CAST(updated_at AS DATE)
FROM {{ source('master', 'customers') }}