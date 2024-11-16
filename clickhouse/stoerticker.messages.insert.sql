INSERT INTO stoerticker.messages
SELECT * FROM file('messages/repack.tar.zst :: repack/*.json', 'JSONEachRow')