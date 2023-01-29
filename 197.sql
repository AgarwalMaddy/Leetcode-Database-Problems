SELECT B.id 
FROM Weather A JOIN Weather B ON A.id!= B.id 
WHERE DATEDIFF(B.recordDate,A.recordDate) =1
AND A.temperature<B.temperature
