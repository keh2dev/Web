-- 실습문

CREATE TABLE "HR"."HOBBY" (
    "HOBBYID" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"LOCATION" VARCHAR2(100)
   ) 
   
CREATE TABLE "HR"."HOBBY2" 
   (	"HOBBYID" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"LOCATION" VARCHAR2(100)
   ) 

INSERT INTO HOBBY VALUES ('100','run','seoul')

SELECT * FROM "HR"."HOBBY"

SELECT CONTENT  FROM "HR"."HOBBY"

SELECT LOCATION , CONTENT  FROM "HR"."HOBBY"
