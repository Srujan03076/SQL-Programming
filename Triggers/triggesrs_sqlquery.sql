Create Trigger sample_trigger
 before INSERT on hired_candidate
 for each row 
 SET new.permanent_pincode=new.permanent_pincode+100; 
 INSERT INTO hired_candidate(id, first_name, middle_name,last_name,email_id,mobile_number,hired_city,degree,hired_date,permanent_pincode,hired_lab,attitude,communication_remark,knowledge_remark,aggregate_remark,status,creator_stamp) 
 VALUES(6,"Ganesh","Prabhakar", "Mishra", "ganesh@gmail.com", 8847992225, "Banglore","M.SC", "2022-05-05 14:20:56", 277303,"EasyRewarz", "creative", "Excellent","Excellent","Excellent", "active","2022-01-01 12:20:56");
 SELECT * FROM  hired_candidate;
 
 
 DELIMITER //
	CREATE TRIGGER tr_AfterInsertvalucandidateseducationdetcheck
	AFTER INSERT ON candidates_education_det_check 
    FOR EACH ROW
	BEGIN
		INSERT INTO user_roles(user_id,role_name) VALUES(6,'RAXY');
	END//
DELIMITER ;
  
INSERT INTO candidates_education_det_check VALUES(6,6,3,1,'2021-07-29 00:00:00',2,'2021-05-27 00:00:00',4);
SELECT * FROM candidates_education_det_check ;
SELECT * FROM user_roles ;


DELIMITER //
CREATE TRIGGER tr_before_update_password
BEFORE UPDATE ON user_details FOR EACH ROW
BEGIN
	Declare error_message1 varchar(200);
	Declare error_message2 varchar(600);
	SET error_message1=('Password should not be empty');
	SET error_message2=('New Password Should Be Defferent From Old Password.');
	IF
		new.password = '' THEN signal sqlstate '45000' set message_text=error_msg1;
	ELSEIF
		new.password = old.password THEN signal sqlstate '44000' set message_text=error_msg2;  # 44000=The INSERT or UPDATE is not allowed, because a resulting row does not satisfy the view definition.
	END IF;
END//
DELIMITER ;    


UPDATE user_details set password = '' where id = 4; # You need to mention password
SELECT * FROM  user_details;
    
