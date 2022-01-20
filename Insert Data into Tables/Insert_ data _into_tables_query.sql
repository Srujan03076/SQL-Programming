Create database lmsdb;
use lmsdb;

INSERT INTO  hired_candidate(id, first_name, middle_name,last_name,email_id,mobile_number,hired_city,degree,hired_date,permanent_pincode,hired_lab,attitude,communication_remark,knowledge_remark,aggregate_remark,status,creator_stamp)
VALUES(1,"Ganesh","Prabhakar", "Mishra", "ganesh@gmail.com", 8847992225, "Banglore","M.SC", "2022-05-05 14:20:56", 277303,"EasyRewarz", "creative", "Excellent","Excellent","Excellent", "active","2022-01-01 12:20:56");
(2,"Srujan","Sudhakar", "Mahajan", "sm@gmail.com", 8847994444, "Pune","B.SC","2022-05-05 14:20:56", 277313,"EasyRewarz", "Creative", "Excellent","Excellent","Excellent", "active","2022-01-01 12:20:56");
(3,"Shaunak","Sudhakar", "Wankhade", "sw@gmail.com", 8847994333, "Pune","M.Com","2022-05-05 14:20:56", 277313,"EasyRewarz", "Creative", "Excellent","Excellent","Excellent", "active","2022-01-01 12:20:56");
(4,"Subodh","Sudhakar", "Mahajan", "sm@gmail.com", 88479967894, "Pune","B.SC","2022-05-05 14:20:56", 277313,"EasyRewarz", "Creative", "Excellent","Excellent","Excellent", "active","2022-01-01 12:20:56");
(4,"Shaurya","Sushant", "Wankhade", "ssw@gmail.com", 8984799433, "Chennai","M.Com","2022-05-05 14:20:56", 277313,"EasyRewarz", "Creative", "Excellent","Excellent","Excellent", "active","2022-01-01 12:20:56");
select * from hired_candidate;

INSERT INTO fellowship_candidates (id,first_name,middle_name,last_name,email,mobile_num ,hired_city,hired_date,degree ,permanent_pincode,hired_lab,attitude_remark,communication_remark ,knowledge_remark,aggregate_remark,birth_date,is_birth_date_verified ,parent_name ,parent_occupation,parent_mobile_num,parent_annual_sal ,local_addr,permanent_addr,photo_path,joining_date,candidate_status,personal_info_filled,bank_info_filled ,educational_info_filled ,doc_status,remark ,creator_stamp,creator_user)
VALUES(1,'Ganesh','Prabhakar','Mishra','ganesh@gmail.com ',8956748596,'Delhi','2019-12-13 00:00:00','B.E',277303,'EasyRewardz','Good','Good','Good','good','1999-12-13',1,'Arun','Farmer',7584962547,300000,'Ballia','Ballia','photo_path','2019-12-13','Good',1,1,1,'Correct','Good',NULL,1);
 (2,'Gyanesh','Prabhu','Mahajan','gyanesh@gmail.com ',8956767890,'Mumbai','2019-12-13 00:00:00','B.E',277303,'TATA','Good','Good','Good','good','1999-12-13',1,'Prabhu','Farmer',7584962547,300000,'Kolhapur','Kolhapur','photo_path','2019-12-13','Good',1,1,1,'Correct','Good',NULL,1);
 (3,'Gayatri','Gajanan','Pandey','gayatrih@gmail.com ',8956767890,'Mumbai','2019-12-13 00:00:00','B.E',277303,'TATA','Good','Good','Good','good','1999-12-13',1,'Gajanan','Farmer',7556789056,300000,'Kolhapur','Kolhapur','photo_path','2019-12-13','Good',1,1,1,'Correct','Good',NULL,1);
 (4,'Gaju','Gajanan','Singh','gaju@gmail.com ',8956767890,'Mumbai','2019-12-13 00:00:00','B.E',277303,'TATA','Good','Good','Good','good','1999-12-13',1,'Gajanan','Farmer',7556789056,300000,'Kolhapur','Kolhapur','photo_path','2019-12-13','Good',1,1,1,'Correct','Good',NULL,1);
 (5,'Subodh','Sudhakar','Mahajan','subodh@gmail.com ',8956767890,'Mumbai','2019-12-13 00:00:00','B.E',277303,'TATA','Good','Good','Good','good','1999-12-13',1,'Sudhakar','Farmer',7556789056,300000,'Kolhapur','Kolhapur','photo_path','2019-12-13','Good',1,1,1,'Correct','Good',NULL,1);
 SELECT * FROM fellowship_candidates;
 
 INSERT INTO candidates_personal_det_check(id ,candidate_id,field_name ,is_verified,lastupd_stamp ,lastupd_user ,creator_stamp ,creator_user)
 VALUES(1,1,5,1,"2020-04-04 01:03:00",5,"2022-05-25 00:00:00",53);
 (2,2,5,1,"2020-04-04 01:03:00",5,"2022-05-25 00:00:00",31);
 (3,3,5,1,"2020-04-04 01:03:00",5,"2022-05-25 00:00:00",12);
 (4,4,5,1,"2020-04-04 01:03:00",5,"2022-05-25 00:00:00",30);
 (5,5,5,1,"2020-04-04 01:03:00",5,"2022-05-25 00:00:00",14);
 SELECT * FROM candidates_personal_det_check;
 
 
INSERT INTO candidate_bank_det(id ,candidate_id ,name ,account_num ,is_account_num_verified ,ifsc_code , is_ifsc_code_verified ,pan_number ,is_pan_number_verified ,addhaar_num,is_addhaar_num_verified ,creator_stamp ,creator_user)
VALUES(1,1,'Ganesh', 22447955, 1 ,'RRWEFG45F1DG', 1, 'SQDERT444', 1, 78488967, 1, '2022-01-09', 10);
(2,2,'Akshay', 22444445, 1 ,'RRSQAG45F1DG', 1, 'SQDXYT333', 1, 78456784, 1, '2021-03-06', 12);
(3,3,'Shubham', 22444444, 1 ,'RRSQAG22222', 1, 'SQDXYT333', 1, 78456784, 1, '2021-03-06', 11);
(4,4,'Shaunak', 55444444, 1 ,'RRSQAG21111', 1, 'SQDXYT332', 1, 78456784, 1, '2021-03-06', 31);
(5,5,'Kapil', 55444444, 1 ,'RRSQAG21111', 1, 'SQDYT3324', 1, 78453456, 1, '2021-03-06', 14);
SELECT * FROM candidate_bank_det;


INSERT INTO candidate_qualification(id ,candidate_id , diploma , degree_name , is_degree_name_verified , employee_decipline , is_employee_decipline_verified ,passing_year , is_passing_year_verified , aggr_per , final_year_per , is_final_year_per_verified , training_institute , is_training_institute_verified ,training_duration_month , is_training_duration_month_verified , other_training , is_other_training_verified , creator_stamp , creator_user)
VALUES(1,1,1,'B.E',1,'lazy',1,2021,1,84.2,82.1,1,'Bajaj Pune',1,02,1,'Bajaj Wrdha',1,'2022-05-25 00:00:00',2);
(2,2,1,'B.E',1,'Punctual',1,2021,1,74.2,92.1,1,'Bajaj Pune',1,02,1,'Bajaj Wrdha',1,'2022-05-25 00:00:00',3);
(3,3,1,'B.E',1,'focused',1,2021,1,73.2,91.1,1,'DMIETR Wardha',1,02,1,'MIT Pune',1,'2022-05-25 00:00:00',3);
(4,4,1,'B.E',1,'focused',1,2021,1,73.2,91.1,1,'SOS Wardha',1,02,1,'Alponsa Pune',1,'2022-05-25 00:00:00',5);
(5,5,1,'B.E',1,'focused',1,2021,1,73.2,91.1,1,'SOS Wardha',1,02,1,'Alponsa Pune',1,'2022-05-25 00:00:00',5);
SELECT * FROM candidate_qualification;

INSERT INTO candidates_education_det_check(id , candidate_id  ,field_name, is_verified ,lastupd_stamp ,lastupd_user ,creator_stamp ,creator_user )
VALUES(1,1,2,1,'2021-06-28 00:00:00',2,'2021-06-28 00:00:00',3);
(2,2,3,1,'2021-07-29 00:00:00',2,'2021-05-27 00:00:00',4);
(3,3,2,1,'2021-04-28 00:00:00',2,'2021-04-28 00:00:00',7);
(4,4,3,1,'2021-03-29 00:00:00',2,'2021-05-27 00:00:00',6);
(5,5,2,1,'2021-04-28 00:00:00',2,'2021-04-28 00:00:00',9);
SELECT * FROM candidates_education_det_check;

INSERT INTO candidate_docs (id ,candidate_id ,doc_type ,doc_path ,status ,creator_stamp ,creator_user)
VALUES (1, 1, ' doc 1', ' doc 1', 1, NULL, 1);
(2, 2, ' doc 2', ' doc 2', 1, NULL, 2);
(3, 3, ' doc 3', ' doc 3', 1, NULL, 1);
(4, 4, ' doc 4', ' doc 4', 1, NULL, 4);
(5, 5, ' doc 5', ' doc 5', 1, NULL, 4);
SELECT * FROM candidate_docs ;

INSERT INTO user_details(id ,email ,first_name ,last_name , password ,contact_number ,verified )
VALUES(1,'ganesh@gamil.com','Ganesh','Mishra','ganesh@123',9944556677,1);
(2,'shatru@gamil.com','Shatru','Sinha','shatru@123',9123456789,1);
(3,'iamsrk@gamil.com','Shah','Khan','iamsrk@13',9987654321,1);
(4,'kamal@gamil.com','Kamal','Hassan','kamal@13',9246810467,1);
(5,'salman@gamil.com','Salman','Khan','salman@34',9246810444,1);
SELECT * FROM user_details;

INSERT INTO user_roles(user_id , role_name)
VALUES(1,'doctor');
(2,'engineer');
(3,'pilot');
(4,'engineer');
(5,'compounder');
SELECT * FROM user_roles;

INSERT INTO company(id ,name ,address ,location ,status ,creator_stamp ,creator_user)
VALUES(1,1,'Wardha','Wardha',1,'2021-04-22 00:00:00',1);
(2,1,'Mumbai','Mumbai',1,'2021-04-22 00:00:00',1);
(3,1,'Nagpur','Nagpur',1,'2021-03-22 00:00:00',1);
(4,1,'Moshi','Moshi',1,'2021-03-23 00:00:00',1);
(5,1,'Mawal','Mawal',1,'2021-03-23 00:00:00',1);
SELECT * FROM company;

INSERT INTO tech_type(id,type_name,cur_status,creator_stamp,creator_user)
VALUES(1,'BootCamp','P','2022-01-01',22);
(2,'BootCamp','A','2022-01-01',23);
(3,'RFP','P','2022-01-01',25);
(4,'CFP','P','2022-01-01',26);
(5,'CFP','A','2022-01-01',26);
SELECT * FROM tech_type;

INSERT INTO tech_stack(id,tech_name,image_path,framework,cur_status,creator_stamp,creator_user )
 VALUES(1, 'DOT.NET', 'image1', 'Entity', 'T', null, 1);
 (2, 'DOT.NET', 'image2', 'Aspnet core', 'S', null, 2);
 (3, 'DOT.NET', 'image3', 'Entity', 'T', null, 3);
 (4, 'DOT.NET', 'image2', 'Aspnet core', 'S', null, 4);
 (5, 'DOT.NET', 'image5', 'Entity', 'T', null, 5);
 SELECT * FROM tech_stack;
 
 INSERT INTO maker_program(id,program_name,program_type,program_link,tech_stack_id,tech_type_id,is_program_approved,description,status,creator_stamp,creator_user)
 VALUES(1,55,'Paid','Audience',1,1,1,'approved',1,'2022-02-05',22);
 (2,55,'Paid','Audience',2,2,1,'approved',1,'2022-02-05',23);
 (3,55,'Paid','Audience',3,3,1,'approved',1,'2022-02-05',24);
 (4,551,'Paid','Audience',4,4,1,'approved',1,'2022-02-05',25);
 (5,550,'Paid','Audience',3,3,1,'approved',1,'2022-02-05',27);
 SELECT * FROM maker_program ;
 
 INSERT INTO lab(id,name,location,address,status,creator_stamp,creator_user)
 VALUES(1, 'SQL', 'Mumbai', 'ANdheri', 1, null, 1);
 (2, 'Srujan', 'Mumbai', 'ANdheri', 2, null, 1);
 (3, 'Frondend', 'Mumbai', 'ANdheri,West', 3, null, 1);
 (4, 'Frondend', 'Mumbai', 'ANdheri,West', 3, null, 1);
 (5, 'Frondend', 'Mumbai', 'ANdheri,West', 3, null, 1);
 SELECT * FROM lab ;
 
 
 
 
 
 
 


 
 
 
 
 









 

 
 