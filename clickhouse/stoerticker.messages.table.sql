CREATE TABLE stoerticker.messages
(
    `lid` Int32 CODEC(ZSTD(3)),
    `archived_at` DateTime CODEC(ZSTD(3)),
    `reported_at` DateTime CODEC(ZSTD(3)),
    `title` String CODEC(ZSTD(3)),
    `body` String CODEC(ZSTD(3)),
    `affected_lines` String CODEC(ZSTD(3))
)
ENGINE = MergeTree
ORDER BY lid