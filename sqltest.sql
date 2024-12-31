-- Soal 1:
SELECT 
    u.id AS id,
    u.name,
    GROUP_CONCAT(r.name SEPARATOR ', ') AS roles,
    COUNT(r.id) AS total_roles
FROM 
    users u
LEFT JOIN 
    user_roles ur ON u.id = ur.user_id
LEFT JOIN 
    roles r ON ur.role_id = r.id
GROUP BY 
    u.id, u.name;

-- Soal 2
SELECT 
    u.id AS user_id,
    u.name
FROM 
    users u
INNER JOIN 
    user_roles ur ON u.id = ur.user_id
INNER JOIN 
    roles r ON ur.role_id = r.id
WHERE 
    r.name = 'Admin';
