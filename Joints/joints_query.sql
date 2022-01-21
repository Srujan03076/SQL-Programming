/*Grouped by firstname:*/
SELECT COUNT(id), first_name
FROM hired_candidate
GROUP BY first_name;

/*Inner Join :*/
SELECT hired_candidate.id, hired_candidate.first_name, hired_candidate.last_name
FROM hired_candidate
INNER JOIN fellowship_candidates ON hired_candidate.id = fellowship_candidates.id;

/*Left Join :*/
SELECT  hired_candidate.first_name, hired_candidate.last_name,fellowship_candidates.id
FROM hired_candidate
LEFT JOIN  fellowship_candidates ON hired_candidate.id= fellowship_candidates.id;

/*Right Join :*/
SELECT  hired_candidate.first_name, hired_candidate.last_name,fellowship_candidates.id
FROM hired_candidate
RIGHT JOIN  fellowship_candidates ON hired_candidate.id= fellowship_candidates.id;
/* SQL Union Operator*/
SELECT first_name FROM hired_candidate
UNION
SELECT first_name FROM fellowship_candidates
ORDER BY first_name ;

/* SQL Union Operator*/
SELECT first_name, last_name FROM hired_candidate
WHERE last_name='Mahajan'
UNION ALL
SELECT first_name, last_name FROM fellowship_candidates
WHERE first_name='Subodh'
ORDER BY first_name;

