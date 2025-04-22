CREATE SCHEMA src;

CREATE TABLE "postgres"."src"."customers" (
    id VARCHAR(255),         -- 顧客ID
    name VARCHAR(255),       -- 顧客名称
    created_at VARCHAR(255), -- 登録日
    updated_at VARCHAR(255)  -- 更新日
);

CREATE TABLE "postgres"."src"."products" (
    id VARCHAR(255),   -- 商品ID
    name VARCHAR(255), -- 商品名称
    price NUMERIC      -- 商品価格
);

CREATE TABLE "postgres"."src"."orders" (
    id VARCHAR(255),         -- 注文ID
    order_date VARCHAR(255), -- 注文日
    total_amount NUMERIC,    -- 合計金額
    status VARCHAR(255),     -- 状態
    customer_id VARCHAR(255) -- 顧客ID
);

CREATE TABLE "postgres"."src"."order_details" (
    quantity INTEGER,       -- 数量
    amount NUMERIC,         -- 金額
    order_id VARCHAR(255),  -- 注文ID
    product_id VARCHAR(255) -- 商品ID
);

COPY "src"."customers" FROM '/data/sources/customers.csv' DELIMITER ',' CSV HEADER;
COPY "src"."products" FROM '/data/sources/products.csv' DELIMITER ',' CSV HEADER;
COPY "src"."orders" FROM '/data/sources/orders.csv' DELIMITER ',' CSV HEADER;
COPY "src"."order_details" FROM '/data/sources/order_details.csv' DELIMITER ',' CSV HEADER;