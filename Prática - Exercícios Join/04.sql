SELECT "use".id, 
  "use".name,
  rol.name AS "role",
  com.name AS "company",
  experiences."startDate"

FROM experiences 

JOIN users AS "use"
ON experiences."userId"="use".id

JOIN roles AS rol
ON experiences."roleId"=rol.id

JOIN companies AS com
ON experiences."companyId"=com.id

WHERE experiences."endDate" IS NULL AND "use".id=50;