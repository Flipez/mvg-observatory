CREATE TABLE unoptimized
(
    datestring date,
    timestamp timestamp,
    station text,
    plannedDepartureTime timestamp,
    realtime boolean,
    delayInMinutes integer,
    realtimeDepartureTime timestamp,
    transportType text,
    label text,
    divaId text,
    network text,
    trainType text,
    destination text,
    cancelled boolean,
    sev boolean,
    platform integer,
    platformChanged boolean,
    stopPositionNumber integer,
    messages text,
    bannerHash text,
    occupancy text,
    stopPointGlobalId text
);


INSERT INTO FUNCTION postgresql('localhost:5432', 'erp', 'unoptimized', 'postgres', 'postgres') SELECT *
FROM erp.unoptimized

Query id: 9ca77fe6-a368-4e09-8e52-d4523b878d50

Ok.

0 rows in set. Elapsed: 6433.893 sec. Processed 1.09 billion rows, 77.76 GB (169.01 thousand rows/s., 12.09 MB/s.)
Peak memory usage: 412.56 MiB.