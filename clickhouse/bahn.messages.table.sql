CREATE TABLE bahn.messages
(
    `id` String CODEC(ZSTD(3)),
    `disruptionId` String CODEC(ZSTD(3)),
    `author` String CODEC(ZSTD(3)),
    `cause.category` String CODEC(ZSTD(3)),
    `cause.label` String CODEC(ZSTD(3)),
    `headline` String CODEC(ZSTD(3)),
    `summary` String CODEC(ZSTD(3)),
    `text` String CODEC(ZSTD(3)),
    `durationBegin` DateTime CODEC(ZSTD(3)),
    `durationEnd` String CODEC(ZSTD(3)),
    `mapHref` String CODEC(ZSTD(3)),
    `images` String CODEC(ZSTD(3)),
    `downloads` String CODEC(ZSTD(3)),
    `links` String CODEC(ZSTD(3)),
    `properties` String CODEC(ZSTD(3)),
    `states` String CODEC(ZSTD(3)),
    `lines` String CODEC(ZSTD(3)),
    `lastModified` DateTime CODEC(ZSTD(3)),
    `expand` Boolean CODEC(ZSTD(3)),
    `topDisruption` Boolean CODEC(ZSTD(3))
)
ORDER BY durationBegin