INSERT INTO bahn.messages
WITH arrayJoin(JSONExtractArrayRaw(json, 'disruptions')) AS p
SELECT
    JSONExtract(p, 'id', 'String') AS id,
    JSONExtract(p, 'disruptionId', 'String') AS disruptionId,
    JSONExtract(p, 'author', 'String') AS author,
    JSONExtract(JSONExtract(p, 'cause', 'String'), 'category', 'String') AS `cause.category`,
    JSONExtract(JSONExtract(p, 'cause', 'String'), 'label', 'String') AS `cause.label`,
    JSONExtract(p, 'headline', 'String') AS headline,
    JSONExtract(p, 'summary', 'String') AS summary,
    JSONExtract(p, 'text', 'String') AS text,
    parseDateTimeOrNull(JSONExtract(p, 'durationBegin', 'String'), '%d.%m.%Y') AS durationBegin,
    parseDateTimeOrNull(JSONExtract(p, 'durationEnd', 'String'), '%d.%m.%Y') AS durationEnd,
    JSONExtract(p, 'mapHref', 'String') AS mapHref,
    JSONExtract(p, 'images', 'String') AS images,
    JSONExtract(p, 'downloads', 'String') AS downloads,
    JSONExtract(p, 'links', 'String') AS links,
    JSONExtract(p, 'properties', 'String') AS properties,
    JSONExtract(p, 'states', 'String') AS states,
    JSONExtract(p, 'lines', 'String') AS lines,
    parseDateTimeOrNull(JSONExtract(p, 'lastModified', 'String'), '%d.%m.%Y %H:%i') AS lastModified,
    JSONExtract(p, 'expand', 'Boolean') AS expand,
    JSONExtract(p, 'topDisruption', 'Boolean') AS topDisruption
FROM file('messages/data.mvg.auch.cool/messages/sbahn/*.tar.zst :: **/*_body.json', JSONAsString, 'json String')