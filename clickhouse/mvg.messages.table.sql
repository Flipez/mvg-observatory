CREATE TABLE mvg.messages
(
  title String CODEC(ZSTD(3)),
  description String CODEC(ZSTD(3)),
  publication DateTime64 CODEC(Delta(2), ZSTD(3)),
  `publicationDuration.from` DateTime64 CODEC(Delta(2), ZSTD(3)),
  `publicationDuration.to` DateTime64 CODEC(Delta(2), ZSTD(3)),
  incidentDurations String CODEC(ZSTD(3)),
  validFrom DateTime64 CODEC(Delta(2), ZSTD(3)),
  validTo DateTime64 CODEC(Delta(2), ZSTD(3)),
  type String CODEC(ZSTD(3)),
  provider String CODEC(ZSTD(3)),
  links String CODEC(ZSTD(3)),
  lines String CODEC(ZSTD(3)),
  stationGlobalIds String CODEC(ZSTD(3)),
  eventTypes String CODEC(ZSTD(3))
)
ORDER BY (publication)