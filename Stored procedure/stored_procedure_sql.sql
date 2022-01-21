/*Stored Procedure*/
DELIMITER //

CREATE PROCEDURE GetAllhiredCandidates()
BEGIN
	SELECT *  FROM hired_candidate;
END //

DELIMITER ;
CALL GetAllhiredCandidates