SELECT sch.id, 
  sch.name AS "school",
  cou.name AS "course",
  com.name AS "company",
  rol.name AS "role"

FROM jobs 

JOIN roles AS rol
ON jobs."roleId"=rol.id

JOIN companies AS com
ON jobs."companyId"=com.id

JOIN applicants AS app
ON jobs.id=app."jobId"

JOIN users AS "use"
ON app."userId"="use".id

JOIN educations AS edu
ON "use".id=edu."userId"

JOIN schools AS sch
ON edu."schoolId"=sch.id

JOIN courses AS cou
ON edu."courseId"=cou.id

WHERE jobs.active 
AND jobs."companyId"=10 
AND rol.name='Software Engineer';