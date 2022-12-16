SELECT
  s.name AS school,
  c.name AS course,
	COUNT(e."courseId") AS "studentsCount"
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
  s.name, c.name
;