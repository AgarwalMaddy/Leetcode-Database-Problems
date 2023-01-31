DELETE P1 FROM Person as P1, Person as P2 
WHERE P1.Email = P2.Email AND P1.Id > P2.Id;
