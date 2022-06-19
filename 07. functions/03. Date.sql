SELECT 
NOW(),
DATE_ADD(NOW(), INTERVAL 30 DAY),
ADDDATE(NOW(), INTERVAL 30 DAY),
ADDDATE(NOW(), 30),
CONVERT_TZ('2004-01-01 12:00:00','+00:00','+10:00'),
CURDATE(),
CURTIME(),
DATE(NOW()),
MONTH(NOW()),
DATEDIFF(DATE(NOW()), '1111-11-11'),
DATE_FORMAT(NOW(), '%a %b %y %h:%i:%s%p')

-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_adddate