SELECT 
CHAR_LENGTH('abc'), 
CHARACTER_LENGTH('abc'),
CONCAT('abc', 'def', 'ghi'),
CONCAT_WS(' ', 'MD', 'Pabel'),
ELT(3, 'av', 'cd', 'aaaaa', 'ffffff'),
FORMAT(12345, 0),
FORMAT(12345, 5),
UPPER('abc'),
LOWER('ABC'),
LENGTH(TRIM('      abc    ')),
LENGTH(LTRIM('     abc    ')),
LENGTH(RTRIM('     abc    ')),
SUBSTRING('hello world', 7),
SUBSTRING('hello world', 7, 2),
SUBSTR('hello world', 7),
SUBSTR('hello world', 7, 2),
STRCMP('abc', 'abc'),
REVERSE('abc'),
REPLACE('abccccc', 'c', 'd'),
REPEAT('a', 10)