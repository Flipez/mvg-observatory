INSERT INTO mvg.requests (station, timestamp, datestring, appconnect_time, connect_time, httpauth_avail, namelookup_time, pretransfer_time, primary_ip, redirect_count, redirect_url, request_size, request_url, response_code, return_code, return_message, size_download, size_upload, starttransfer_time, total_time, headers, request_params, request_header)
SELECT
    splitByChar('/', _file)[2],
    splitByChar('_', splitByChar('/', _file)[3])[1],
    splitByChar('/', _file)[1],
    appconnect_time,
    connect_time,
    httpauth_avail,
    namelookup_time,
    pretransfer_time,
    primary_ip,
    redirect_count,
    redirect_url,
    request_size,
    request_url,
    response_code,
    return_code,
    return_message,
    size_download,
    size_upload,
    starttransfer_time,
    total_time,
    headers,
    request_params,
    request_header
FROM file('*.tar.zst :: **/*/*_meta.json', 'JSONEachRow')
SETTINGS input_format_allow_errors_ratio = 1