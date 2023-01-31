SELECT name, 
SUM(CASE when u.id = r.user_id THEN distance
ELSE 0 end) AS travelled_distance
FROM users u
LEFT JOIN rides r
ON u.id = r.user_id
GROUP BY u.id
ORDER BY sum(distance) DESC, name ASC;
