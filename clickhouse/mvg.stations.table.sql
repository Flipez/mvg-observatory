CREATE TABLE mvg.stations
(
    `name` String CODEC(ZSTD(3)),
    `place` String CODEC(ZSTD(3)),
    `id` String CODEC(ZSTD(3)),
    `divaId` Int32 CODEC(ZSTD(3)),
    `abbreviation` String CODEC(ZSTD(3)),
    `tariffZones` LowCardinality(String) CODEC(ZSTD(3)),
    `products` String CODEC(ZSTD(3)),
    `latitude` Float64 CODEC(ZSTD(3)),
    `longitude` Float64 CODEC(ZSTD(3))
)
ENGINE = MergeTree
ORDER BY name