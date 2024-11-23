CREATE TABLE erp.unoptimized
(
    `datestring` Date CODEC(NONE),
    `timestamp` DateTime CODEC(NONE),
    `station` String CODEC(NONE),
    `plannedDepartureTime` DateTime CODEC(NONE),
    `realtime` Bool CODEC(NONE),
    `delayInMinutes` Int32 CODEC(NONE),
    `realtimeDepartureTime` DateTime CODEC(NONE),
    `transportType` String CODEC(NONE),
    `label` String CODEC(NONE),
    `divaId` String CODEC(NONE),
    `network` String CODEC(NONE),
    `trainType` String CODEC(NONE),
    `destination` String CODEC(NONE),
    `cancelled` Bool CODEC(NONE),
    `sev` Bool CODEC(NONE),
    `platform` Int32 CODEC(NONE),
    `platformChanged` Bool CODEC(NONE),
    `stopPositionNumber` Int32 CODEC(NONE),
    `messages` String CODEC(NONE),
    `bannerHash` String CODEC(NONE),
    `occupancy` String CODEC(NONE),
    `stopPointGlobalId` String CODEC(NONE)
)
ENGINE = MergeTree
ORDER BY (datestring)