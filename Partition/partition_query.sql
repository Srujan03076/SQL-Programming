/*RANGE Partitioning-*/

create table candidate_biodata(
id int NOT NULL,
first_name varchar(100) NOT NULL,
middle_name varchar(100) DEFAULT NULL,
last_name varchar(100) NOT NULL,
email varchar(50) NOT NULL,
mobile_num bigint NOT NULL,
hired_city varchar(50) NOT NULL,
hired_date datetime NOT NULL,
degree varchar(100) NOT NULL,
permanent_pincode int DEFAULT NULL,
hired_lab varchar(20) DEFAULT NULL,
attitude_remark varchar(15) DEFAULT NULL,
communication_remark varchar(15) DEFAULT NULL,
knowledge_remark varchar(15) DEFAULT NULL,
aggregate_remark varchar(15) DEFAULT NULL,
status varchar(20) NOT NULL,
creator_stamp datetime DEFAULT NULL,
creator_user int DEFAULT NULL,
PRIMARY KEY (id,hired_date)
)
   
PARTITION BY RANGE (year(hired_date))(   
PARTITION p0 VALUES LESS THAN (2015),   
PARTITION p1 VALUES LESS THAN (2016),   
PARTITION p2 VALUES LESS THAN (2017),   
PARTITION p3 VALUES LESS THAN (2018));
INSERT INTO candidate_biodata values( 1,"Srujan",'Sudhakar', "Mahajan", "sm@gmail.com", 88479555555, "Jalna", "2015-05-05 14:20:56","Btech", 442255, 
	"EasyRewarz", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-01-01 12:20:56",1),
	(2,"Shubham",Null, "Mule", "sm@gmail.com", 8007994455, "Gudgoan", "2016-01-08 12:20:56","MCA", 448255, 
	"EasyRewarz", "Great Vocab", "Excellent", "Excellent", "Excellent", "active","2022-01-08 12:20:56",3),
	(3,"Ashok",null, "Mahajan", "am@gmail.com", 9977994455, "Mumbai", "2017-04-03 14:20:56","Btech", 442255, 
	"Bifin", "Great Vocab", "Excellent", "Excellent", "Excellent", "active","2022-04-03 14:20:56",4),
	(4,"Mrunal",null, "Deshmukh", "md@gmail.com", 8577994455, "Jaipur", "2015-04-07 14:20:56","Btech", 222255, 
	"Happiest Minds", "Great Vocab", "Excellent", "Excellent", "Excellent", "active","2022-04-07 14:20:56",5),
	(5,"subodh",null, "Mishra", "sm@gmail.com", 8877994455, "Pune", "2017-04-07 14:20:56","Btech", 222255, 
	"Happiest Minds", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-04-07 14:20:56",5),
	(6,"sangeeta",null, "Mishra", "sm@gmail.com", 8878894455, "Pune", "2016-04-07 14:20:56","Btech", 245255, 
	"Bifin Minds", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-04-07 14:20:56",5);
    
select * from candidate_biodata;
    
SELECT * FROM information_schema.partitions WHERE TABLE_SCHEMA='lmsdb' AND TABLE_NAME = 'candidate_biodata' AND PARTITION_NAME IS NOT NULL;
SELECT TABLE_NAME, PARTITION_NAME, TABLE_ROWS, AVG_ROW_LENGTH, DATA_LENGTH  
FROM INFORMATION_SCHEMA.PARTITIONS  
WHERE TABLE_SCHEMA = 'lmsdb' AND TABLE_NAME = 'candidate_biodata';  
EXPLAIN SELECT * FROM candidate_biodata WHERE hired_date = '2015-05-05 14:20:56';


/*LIST Partitioning-*/

CREATE TABLE Stores (
cust_name VARCHAR(40),
bill_no VARCHAR(20) NOT NULL,
store_id INT PRIMARY KEY NOT NULL,
bill_date DATE NOT NULL,
amount int NOT NULL
      )
PARTITION BY LIST(store_id) (   
PARTITION pEast VALUES IN (101, 103, 105),   
PARTITION pWest VALUES IN (102, 104, 106),   
PARTITION pNorth VALUES IN (107, 109, 111),   
PARTITION pSouth VALUES IN (108, 110, 112));
 
INSERT INTO Stores values ('Vikas',122,101,'2016-02-12',45000),
('sujeet',122,102,'2016-02-12',45000),
('Saranjeet',122,103,'2016-02-12',45000),
('Sujjet',122,104,'2016-02-12',45000),
('Satish',122,105,'2016-02-12',45000),
('Sangeeta',122,106,'2016-02-12',45000),
('Shreyas',122,107,'2016-02-12',45000),
('Srujan',122,108,'2016-02-12',45000),
('Subodh',122,109,'2016-02-12',45000),
('Sayali',122,110,'2016-02-12',45000),
('Sejal',122,111,'2016-02-12',45000),
('Shruti',122,112,'2016-02-12',450000);

select * from Stores;

SELECT * FROM information_schema.partitions WHERE TABLE_SCHEMA='lmsdb' AND TABLE_NAME = 'Stores' AND PARTITION_NAME IS NOT NULL;
SELECT TABLE_NAME, PARTITION_NAME, TABLE_ROWS, AVG_ROW_LENGTH, DATA_LENGTH  
FROM INFORMATION_SCHEMA.PARTITIONS 
WHERE TABLE_SCHEMA = 'lmsdb' AND TABLE_NAME = 'Stores'; 
EXPLAIN SELECT * FROM Stores WHERE store_id = 102;

/*COLUMN Partitioning*/

CREATE TABLE test_part (A INT, B CHAR(5), C INT, D INT)  
PARTITION BY RANGE COLUMNS(A, B, C)   
(PARTITION p0 VALUES LESS THAN (50, 'test1', 100),   
PARTITION p1 VALUES LESS THAN (100, 'test2', 200),   
PARTITION p2 VALUES LESS THAN (150, 'test3', 300),   
PARTITION p3 VALUES LESS THAN (MAXVALUE, MAXVALUE, MAXVALUE));
 
INSERT INTO test_part values (50, 'test1', 100,140),
(100, 'test2', 200,101), 
(150, 'test3', 300,103);
 
 
select * from test_part;
SELECT * FROM information_schema.partitions WHERE TABLE_SCHEMA='lmsdb' AND TABLE_NAME = 'test_part' AND PARTITION_NAME IS NOT NULL;
SELECT TABLE_NAME, PARTITION_NAME, TABLE_ROWS, AVG_ROW_LENGTH, DATA_LENGTH  
FROM INFORMATION_SCHEMA.PARTITIONS  
WHERE TABLE_SCHEMA = 'lmsdb' AND TABLE_NAME = 'test_part'; 


 

 
 
 

    



    
















                            