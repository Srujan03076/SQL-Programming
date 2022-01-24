DELIMITER $$
CREATE PROCEDURE procedure_comp_list()
BEGIN
	DECLARE company_name varchar(100);
	DECLARE comp_list varchar(500) DEFAULT '';
	DECLARE finish INTEGER DEFAULT 0;
	DECLARE C1 CURSOR FOR SELECT name FROM company;
	DECLARE CONTINUE HANDLER for NOT FOUND set finish = 1;
	OPEN C1;
		get_company: LOOP
			FETCH c1 INTO company_name;
				IF finish = 1 THEN
					LEAVE get_company;
				END IF;
			SET comp_list = CONCAT(company_name,',',comp_list);
		END LOOP get_company;
		SELECT comp_list;
	CLOSE c1;
END$$
DELIMITER ;

CALL procedure_comp_list;



DELIMITER $$
CREATE PROCEDURE procedure_emails_list()
BEGIN
DECLARE finished int default 0;
DECLARE emails_list varchar(500) DEFAULT '';
DECLARE email varchar(400) DEFAULT '';
DECLARE user_data CURSOR FOR SELECT email_id FROM hired_candidate;
DECLARE CONTINUE HANDLER for NOT FOUND set finished = 1;
OPEN user_data;
    get_user_email: LOOP
    FETCH user_data INTO email;
    IF finished = 1 THEN
     LEAVE get_user_email;
      END IF;
      SET emails_list = CONCAT(emails_list,',',email);
    END LOOP get_user_email;
    CLOSE  user_data  ;
SELECT emails_list ;
END$$
DELIMITER ;

CALL procedure_emails_list ;

DELIMITER $$
CREATE PROCEDURE procedure_email_ids_for_persons(INOUT email_list varchar(1000))
BEGIN
	DECLARE email_id varchar(100);
	DECLARE finish INTEGER DEFAULT 0;
	DECLARE C1 CURSOR FOR SELECT DISTINCT first_name FROM hired_candidate WHERE id =4;
	DECLARE CONTINUE HANDLER for NOT FOUND set finish = 1;
	OPEN C1;
		get_email: LOOP
			FETCH c1 INTO email_id;
				IF finish = 1 THEN
					LEAVE get_email;
				END IF;
			SET email_list = CONCAT(email_id,',',email_list);
		END LOOP get_email;
	CLOSE c1;
END$$
DELIMITER ;

SET @email_list = 'subodhjanmahaja5@gmail.com';
CALL procedure_email_ids_for_persons(@email_list);
SELECT @email_list;





