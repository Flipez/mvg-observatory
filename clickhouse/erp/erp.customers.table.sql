CREATE TABLE erp.customers
(
    `index` Int32 CODEC(NONE),
    `customer_id` String CODEC(NONE),
    `first_name` String CODEC(NONE),
    `last_name` String CODEC(NONE),
    `company` String CODEC(NONE),
    `city` String CODEC(NONE),
    `country` String CODEC(NONE),
    `phone_1` String CODEC(NONE),
    `phone_2` String CODEC(NONE),
    `email` String CODEC(NONE),
    `subscription_date` Date CODEC(NONE),
    `website` String CODEC(NONE),
)
ENGINE = MergeTree
ORDER BY (index)