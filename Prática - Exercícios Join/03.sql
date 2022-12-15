SELECT "use".id, 
  "use".name,
  cou.name AS "course",
  sch.name AS "school",
  educations."endDate"

FROM educations 

JOIN users AS "use"
ON educations."userId"="use".id

JOIN schools AS sch
ON educations."schoolId"=sch.id

JOIN courses AS cou
ON educations."courseId"=cou.id

WHERE "use".id=30;