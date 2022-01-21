DELIMITER //
CREATE FUNCTION full_name(first_nm VARCHAR(20),last_nm VARCHAR(30))
RETURNS VARCHAR(55) DETERMINISTIC
BEGIN
RETURN CONCAT(first_nm,'',last_nm);
SELECT id,full_name(first_name, last_name) AS FullName FROM fellowship_candidates;
END//
DELIMITER ;

DELIMITER //
CREATE FUNCTION currentAge(DOB date)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE age int;
	SELECT YEAR(CURDATE()) - YEAR(DOB) INTO age;
	RETURN age;
END//
DELIMITER ;
SELECT currentAge('1997/07/03') as PersonAge; 

