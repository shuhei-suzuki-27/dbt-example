SELECT
    CAST(quantity AS INTEGER),
    CAST(amount AS NUMERIC),
    CAST(order_id AS CHAR(5)),
    CAST(product_id AS CHAR(5))
FROM {{ source('transaction', 'order_details') }}