SELECT testimonials.id, 
  writer.name AS writer,
  recipient.name AS recipient,  
  testimonials.message

FROM testimonials 

JOIN users as writer
ON testimonials."writerId"=writer.id

JOIN users as recipient
ON testimonials."recipientId"=recipient.id;