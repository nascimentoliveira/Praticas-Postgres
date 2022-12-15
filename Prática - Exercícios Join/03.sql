SELECT us.id, 
  us.name,
  co.name AS course,
  sc.name AS school,
  educations."endDate"

FROM educations 

JOIN users as us
ON educations."userId"=us.id

JOIN schools as sc
ON educations."schoolId"=sc.id

JOIN courses as co
ON educations."courseId"=co.id

WHERE us.id=30;