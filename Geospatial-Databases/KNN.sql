SELECT q.name, q.gid
FROM dblocations as p, dblocations as q
WHERE p.gid<>q.gid AND p.name='Home'
ORDER BY ST_Distance(p.loc,q.loc)
LIMIT 4;

-- "Target"	10
-- "Village Gym"	9
-- "Subway"	1
-- "Lyon Center"	8
