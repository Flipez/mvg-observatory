CREATE TABLE mvg.requests
(
    `datestring` Date CODEC(Delta(2), ZSTD(3)),
    `timestamp` DateTime CODEC(Delta(4), ZSTD(3)),
    `station` LowCardinality(String) CODEC(ZSTD(3)),
    `appconnect_time` Float64 CODEC(ZSTD(3)),
    `connect_time` Float64 CODEC(ZSTD(3)),
    `httpauth_avail` Int32 CODEC(ZSTD(3)),
    `namelookup_time` Float64 CODEC(ZSTD(3)),
    `pretransfer_time` Float64 CODEC(ZSTD(3)),
    `primary_ip` LowCardinality(String) CODEC(ZSTD(3)),
    `redirect_count` Int32 CODEC(ZSTD(3)),
    `redirect_url` String CODEC(ZSTD(3)),
    `request_size` Int32 CODEC(ZSTD(3)),
    `request_url` String CODEC(ZSTD(3)),
    `response_code` Int16 CODEC(ZSTD(3)),
    `return_code` LowCardinality(String) CODEC(ZSTD(3)),
    `return_message` LowCardinality(String) CODEC(ZSTD(3)),
    `size_download` Float32 CODEC(ZSTD(3)),
    `size_upload` Float32 CODEC(ZSTD(3)),
    `starttransfer_time` Float32 CODEC(ZSTD(3)),
    `total_time` Float32 CODEC(ZSTD(3)),
    `headers` String CODEC(ZSTD(3)),
    `request_params` String CODEC(ZSTD(3)),
    `request_header` String CODEC(ZSTD(3))
)
ENGINE = MergeTree
PARTITION BY datestring
ORDER BY (station, timestamp)