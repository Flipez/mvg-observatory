INSERT INTO mvg.messages
SELECT *
FROM file('messages/data.mvg.auch.cool/messages/mvg/*.tar.zst :: **/*/*_body.json', JSONEachRow, 'title String, description String, publication DateTime64, `publicationDuration.from` DateTime64, `publicationDuration.to` DateTime64, incidentDurations String, validFrom DateTime64, validTo DateTime64, type String, provider String, links String, lines String, stationGlobalIds String, eventTypes String')
SETTINGS input_format_import_nested_json = 1