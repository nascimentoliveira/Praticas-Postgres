SELECT testimonials.id, 
  wri.name AS writer,
  rec.name AS recipient,  
  testimonials.message

FROM testimonials 

JOIN users AS wri
ON testimonials."writerId"=wri.id

JOIN users AS rec
ON testimonials."recipientId"=rec.id;