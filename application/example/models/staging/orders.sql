SELECT
    CAST(id AS CHAR(5)),
    CAST(order_date AS DATE),
    CAST(total_amount AS NUMERIC),
    CAST(status AS VARCHAR(255)),
    CAST(customer_id AS CHAR(5))
FROM {{ source('transaction', 'orders') }}