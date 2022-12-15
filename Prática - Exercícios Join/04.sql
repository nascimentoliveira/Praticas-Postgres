SELECT us.id, 
  us.name,
  ro.name AS role,
  co.name AS company,
  experiences."startDate"

FROM experiences 

JOIN users as us
ON experiences."userId"=us.id

JOIN roles as ro
ON experiences."roleId"=ro.id

JOIN companies as co
ON experiences."companyId"=co.id

WHERE experiences."endDate" IS NULL AND us.id=50;