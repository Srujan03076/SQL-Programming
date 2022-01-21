CREATE FUNCTION full_name(first_nm VARCHAR(20))
RETURNS VARCHAR(55) DETERMINISTIC
BEGIN
DECLARE fullname VARCHAR(100);
SELECT CONCAT(first_name ,' ',last_name) INTO fullname FROM fellowship_candidates WHERE first_name=first_nm; 
RETURN fullname;
END//
DELIMITER ;
select full_name('Subodh');

DELIMITER //
CREATE FUNCTION fn_calculate_age(person_id int)
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE TodayDate DATE;
	DECLARE student_birth_date DATE;
    SELECT CURRENT_DATE() INTO TodayDate ;
	SELECT birth_date from fellowship_candidates where id = person_id into student_birth_date;
    RETURN YEAR(TodayDate) - YEAR(student_birth_date);
END//
DELIMITER ;

DELIMITER $$
CREATE FUNCTION getfullName(person_id INT)
RETURNS VARCHAR(256)
DETERMINISTIC
BEGIN
	DECLARE fullName varchar(250);
	SELECT CONCAT(first_name,(middle_name), last_name) INTO fullName FROM fellowship_candidates WHERE id =person_id;
	RETURN fullName;
END$$
DELIMITER ;
SELECT getfullName(5);
