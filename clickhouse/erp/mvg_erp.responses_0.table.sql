CREATE TABLE mvg_erp.responses_0
(
    `datestring` Date CODEC(NONE),
    `timestamp` DateTime CODEC(NONE),
    `station` LowCardinality(String) CODEC(NONE),
    `plannedDepartureTime` DateTime CODEC(NONE),
    `realtime` Bool CODEC(NONE),
    `delayInMinutes` Int32 CODEC(NONE),
    `realtimeDepartureTime` DateTime CODEC(NONE),
    `transportType` LowCardinality(String) CODEC(NONE),
    `label` LowCardinality(String) CODEC(NONE),
    `divaId` LowCardinality(String) CODEC(NONE),
    `network` LowCardinality(String) CODEC(NONE),
    `trainType` String CODEC(NONE),
    `destination` LowCardinality(String) CODEC(NONE),
    `cancelled` Bool CODEC(NONE),
    `sev` Bool CODEC(NONE),
    `platform` Int32 CODEC(NONE),
    `platformChanged` Bool CODEC(NONE),
    `stopPositionNumber` Int32 CODEC(NONE),
    `messages` String CODEC(NONE),
    `bannerHash` String CODEC(NONE),
    `occupancy` LowCardinality(String) CODEC(NONE),
    `stopPointGlobalId` String CODEC(NONE)
)
ENGINE = MergeTree
ORDER BY (datestring)