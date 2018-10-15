SET DEFINE OFF;

ALTER TABLE CANDIDATE ADD PROCID NUMBER(10);
ALTER TABLE CANDIDATE ADD EMPLID VARCHAR2(50);
ALTER TABLE CANDIDATE MODIFY HHSID VARCHAR2(64);
ALTER TABLE CANDIDATE MODIFY LAST_NAME VARCHAR2(150);
ALTER TABLE CANDIDATE MODIFY MIDDLE_INITIAL VARCHAR2(80);
ALTER TABLE CANDIDATE MODIFY FIRST_NAME VARCHAR2(150);
ALTER TABLE CANDIDATE ADD PAY_PLAN VARCHAR2(20);
ALTER TABLE CANDIDATE ADD ADMIN_CODE VARCHAR2(50);
ALTER TABLE CANDIDATE ADD OPDIV VARCHAR2(100);
ALTER TABLE CANDIDATE ADD STAFF_DIV VARCHAR2(100);
ALTER TABLE CANDIDATE ADD ORG_TITILE VARCHAR2(100);
ALTER TABLE CANDIDATE ADD PHONE_NUMBER VARCHAR2(30);
ALTER TABLE CANDIDATE ADD POSITION_OCCUPIED VARCHAR2(100);
ALTER TABLE CANDIDATE ADD TENURE_CODE VARCHAR2(100);
ALTER TABLE CANDIDATE ADD EMPL_DUTY_STATION VARCHAR2(100);
ALTER TABLE CANDIDATE ADD LOCATION VARCHAR2(100);


ALTER TABLE CANDIDATE_LIST ADD HR_NORTIFIED_ELIG_DT  DATE;
ALTER TABLE CANDIDATE_LIST ADD EMPL_NORTIFIED_ELIG_DT  DATE;
ALTER TABLE CANDIDATE_LIST ADD BASIS_FOR_ELIGIBILITY_CODE  VARCHAR2(100);
ALTER TABLE CANDIDATE_LIST ADD ADDRESS_LATITUDE  VARCHAR2(10);
ALTER TABLE CANDIDATE_LIST ADD ADDRESS_LONGITUDE  VARCHAR2(10);
ALTER TABLE CANDIDATE_LIST ADD ELIGIBILITY_OCC_SERIES  VARCHAR2(10);
ALTER TABLE CANDIDATE_LIST ADD ELIGIBILITY_GRADE VARCHAR2(2);
ALTER TABLE CANDIDATE_LIST ADD ELIGIBILITY_END_REASON VARCHAR2(150);

ALTER TABLE SEARCH_OCC_SERIES MODIFY OCC_SERIES VARCHAR2(10);

ALTER TABLE CANDIDATE_OCC_SERIES MODIFY OCC_SERIES VARCHAR2(10);

ALTER TABLE HHS_LIST_MANAGER_LOOKUP MODIFY LOOKUP_DESCRIPTION VARCHAR2(150);
ALTER TABLE HHS_LIST_MANAGER_LOOKUP MODIFY LOOKUP_CODE VARCHAR2(150);

DROP TABLE ATTACHMENT CASCADE CONSTRAINTS ;
--------------------------------------------------------
--  DDL for Table ATTACHMENT
--------------------------------------------------------

CREATE TABLE ATTACHMENT 
(
	DOCUMENT_ID NUMBER(15),
	DOCUMENT_NAME VARCHAR2 (256),
	CANDIDATE_ID NUMBER(15),
	DOCUMENT_TYPE_CODE VARCHAR2(100),
	DOCUMENT_DESC VARCHAR2 (50),
	CREATED_BY VARCHAR2(10),
	CREATION_DATE	DATE,
	LAST_UPDATED_BY VARCHAR2(10),
	LAST_UPDATE_DATE DATE
) ;

 --------------------------------------------------------
--  DDL for Index ATTACHMENT_PK
--  DDL for Index ATTACHMENT_INDEX
--------------------------------------------------------

CREATE UNIQUE INDEX ATTACHMENT_PK ON ATTACHMENT (DOCUMENT_ID);
--CREATE UNIQUE INDEX ATTACHMENT_INDEX ON ATTACHMENT (CANDIDATE_ID);

--------------------------------------------------------
--  Constraints for Table ATTACHMENT
--------------------------------------------------------

ALTER TABLE ATTACHMENT ADD CONSTRAINT ATTACHMENT_PK  PRIMARY KEY (DOCUMENT_ID);
--ALTER TABLE ATTACHMENT ADD UNIQUE (CANDIDATE_ID);
ALTER TABLE ATTACHMENT MODIFY (CANDIDATE_ID NOT NULL );

ALTER TABLE ATTACHMENT ADD PROCID NUMBER(10);
ALTER TABLE ATTACHMENT ADD ATTACHSEQ NUMBER(10);


 --------------------------------------------------------
--  Ref Constraints for Table ATTACHMENT
--------------------------------------------------------

ALTER TABLE ATTACHMENT ADD FOREIGN KEY (CANDIDATE_ID)  REFERENCES CANDIDATE (CANDIDATE_ID);

--------------------------------------------------------
--  DDL for SEQLUENCE LIST_SEQ
--------------------------------------------------------

CREATE SEQUENCE ATTACHMENT_SEQ
	INCREMENT BY 1
	START WITH 100000000000000
	NOMAXVALUE
	NOCYCLE
	NOCACHE;

/

--------------------------------------------------------
--  DDL for TRIGER ATTACHMENT_TRG
--------------------------------------------------------

CREATE OR REPLACE TRIGGER ATTACHMENT_TRG
BEFORE INSERT ON ATTACHMENT
FOR EACH ROW
BEGIN
	SELECT LIST_SEQ.NEXTVAL
	INTO :NEW.DOCUMENT_ID
	FROM DUAL;
END;

/

GRANT DELETE, INSERT, SELECT, UPDATE ON HHS_HR.ATTACHMENT TO HHS_HR_RW_ROLE;