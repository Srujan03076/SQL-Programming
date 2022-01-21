/*Stored Procedure*/
DELIMITER //

CREATE PROCEDURE GetAllhiredCandidates()
BEGIN
	SELECT *  FROM hired_candidate;
END //

DELIMITER ;
CALL GetAllhiredCandidates

DELIMITER ;
CALL GetAllhiredCandidates;

DELIMITER //
CREATE PROCEDURE FullName(in r_id varchar(40))
BEGIN
	declare incorrectFormat condition for 1366;
	declare exit handler for incorrectFormat
	select 'please enter integer format for id' Message; 
	SELECT getfullName(r_id);
END //
DELIMITER ;

call FullName('5');
DROP PROCEDURE FullName;



DELIMITER //
CREATE PROCEDURE Age(in r_id varchar(40))
BEGIN
	declare incorrectFormat condition for 1366;
	declare exit handler for incorrectFormat
	select 'please enter integer format for id' Message; 
	SELECT fn_calculate_age(r_id);
END //
DELIMITER ;

call Age(5);
