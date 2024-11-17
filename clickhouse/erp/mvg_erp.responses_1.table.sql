CREATE TABLE mvg_erp.responses_1
(
    `datestring` Date CODEC(ZSTD(3)),
    `timestamp` DateTime CODEC(ZSTD(3)),
    `station` LowCardinality(String) CODEC(ZSTD(3)),
    `plannedDepartureTime` DateTime CODEC(ZSTD(3)),
    `realtime` Bool CODEC(ZSTD(3)),
    `delayInMinutes` Int32 CODEC(ZSTD(3)),
    `realtimeDepartureTime` DateTime CODEC(ZSTD(3)),
    `transportType` LowCardinality(String) CODEC(ZSTD(3)),
    `label` LowCardinality(String) CODEC(ZSTD(3)),
    `divaId` LowCardinality(String) CODEC(ZSTD(3)),
    `network` LowCardinality(String) CODEC(ZSTD(3)),
    `trainType` String CODEC(ZSTD(3)),
    `destination` LowCardinality(String) CODEC(ZSTD(3)),
    `cancelled` Bool CODEC(ZSTD(3)),
    `sev` Bool CODEC(ZSTD(3)),
    `platform` Int32 CODEC(ZSTD(3)),
    `platformChanged` Bool CODEC(ZSTD(3)),
    `stopPositionNumber` Int32 CODEC(ZSTD(3)),
    `messages` String CODEC(ZSTD(3)),
    `bannerHash` String CODEC(ZSTD(3)),
    `occupancy` LowCardinality(String) CODEC(ZSTD(3)),
    `stopPointGlobalId` String CODEC(ZSTD(3))
)
ENGINE = MergeTree
ORDER BY (datestring)