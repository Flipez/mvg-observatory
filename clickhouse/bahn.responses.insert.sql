INSERT INTO bahn.responses (plannedDepartureTime, realtime, delayInMinutes, realtimeDepartureTime, transportType, label, divaId, network, trainType, destination, cancelled, sev, stopPositionNumber, messages, bannerHash, occupancy, stopPointGlobalId, platform, platformChanged, station, timestamp, datestring)
SELECT
    intDiv(plannedDepartureTime, 1000),
    realtime,
    delayInMinutes,
    intDiv(realtimeDepartureTime, 1000),
    transportType,
    label,
    divaId,
    network,
    trainType,
    destination,
    cancelled,
    sev,
    stopPositionNumber,
    messages,
    bannerHash,
    occupancy,
    stopPointGlobalId,
    platform,
    platformChanged,
    splitByChar('/', _file)[2],
    splitByChar('_', splitByChar('/', _file)[3])[1],
    splitByChar('/', _file)[1]
FROM file('test/data.mvg.auch.cool/sbahn-data/*.tar.zst :: */de*/*_body.json', 'JSONEachRow')
SETTINGS input_format_allow_errors_ratio = 1