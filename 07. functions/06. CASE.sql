SELECT 
CASE 
    WHEN 10 % 2 = 0 THEN 'Even'
    WHEN 10 % 2 = 1 THEN 'Odd'
    ELSE 'Not a number'
    END