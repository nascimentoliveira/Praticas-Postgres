SELECT
  s.name AS school,
  c.name AS course,
	COUNT(e.id) AS "studentsCount",
  e.status
FROM 
  educations AS e
JOIN 
  schools AS s
ON 
  e."schoolId"=s.id
JOIN 
  courses AS c
ON 
  e."courseId"=c.id
WHERE
  e.status='ongoing' OR
  e.status='finished'
GROUP BY 
  s.id, c.id, e.id
ORDER BY
  "studentsCount" DESC
LIMIT 3;