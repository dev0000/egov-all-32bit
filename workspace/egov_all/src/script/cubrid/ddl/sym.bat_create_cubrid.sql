CREATE TABLE COMTECOPSEQ
(
	TABLE_NAME            VARCHAR(60)  NOT NULL ,
	NEXT_ID               NUMERIC(30)  NULL ,
CONSTRAINT  COMTECOPSEQ_PK PRIMARY KEY (TABLE_NAME)
);




CREATE TABLE COMTNBATCHOPERT
(
	BATCH_OPERT_ID        VARCHAR(60)  NOT NULL ,
	BATCH_OPERT_NM        VARCHAR(180)  NULL ,
	BATCH_PROGRM          VARCHAR(765)  NULL ,
	PARAMTR               VARCHAR(750)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NOT NULL ,
CONSTRAINT  COMTNBATCHOPERT_PK PRIMARY KEY (BATCH_OPERT_ID)
);




CREATE TABLE COMTNBATCHRESULT
(
	BATCH_RESULT_ID       VARCHAR(60)  NOT NULL ,
	BATCH_SCHDUL_ID       VARCHAR(60)  NOT NULL ,
	BATCH_OPERT_ID        VARCHAR(60)  NOT NULL ,
	PARAMTR               VARCHAR(750)  NULL ,
	STTUS                 VARCHAR(6)  NULL ,
	ERROR_INFO            VARCHAR(6000)  NULL ,
	EXECUT_BEGIN_TM       VARCHAR(42)  NULL ,
	EXECUT_END_TM         VARCHAR(42)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NOT NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
CONSTRAINT  COMTNBATCHRESULT_PK PRIMARY KEY (BATCH_RESULT_ID)
);




CREATE TABLE COMTNRESTDE
(
	RESTDE_NO             NUMERIC(6)  NOT NULL ,
	RESTDE                CHAR(8)  NULL ,
	RESTDE_NM             VARCHAR(180)  NULL ,
	RESTDE_DC             VARCHAR(600)  NULL ,
	RESTDE_SE_CODE        VARCHAR(6)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
CONSTRAINT  COMTNRESTDE_PK PRIMARY KEY (RESTDE_NO)
);




CREATE TABLE COMTCCMMNCLCODE
(
	CL_CODE               CHAR(3)  NOT NULL ,
	CL_CODE_NM            VARCHAR(180)  NULL ,
	CL_CODE_DC            VARCHAR(600)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
CONSTRAINT  COMTCCMMNCLCODE_PK PRIMARY KEY (CL_CODE)
);




CREATE TABLE COMTCCMMNCODE
(
	CODE_ID               VARCHAR(18)  NOT NULL ,
	CODE_ID_NM            VARCHAR(180)  NULL ,
	CODE_ID_DC            VARCHAR(600)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	CL_CODE               CHAR(3)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
CONSTRAINT  COMTCCMMNCODE_PK PRIMARY KEY (CODE_ID)
);




CREATE TABLE COMTCCMMNDETAILCODE
(
	CODE_ID               VARCHAR(18)  NOT NULL ,
	CODE                  VARCHAR(45)  NOT NULL ,
	CODE_NM               VARCHAR(180)  NULL ,
	CODE_DC               VARCHAR(600)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
CONSTRAINT  COMTCCMMNDETAILCODE_PK PRIMARY KEY (CODE_ID,CODE)
);




CREATE TABLE COMTNAUTHORGROUPINFO
(
	GROUP_ID              CHAR(20)  NOT NULL ,
	GROUP_NM              VARCHAR(180)  NOT NULL ,
	GROUP_CREAT_DE        CHAR(40)  NOT NULL ,
	GROUP_DC              VARCHAR(300)  NULL ,
CONSTRAINT  COMTNAUTHORGROUPINFO_PK PRIMARY KEY (GROUP_ID)
);




CREATE TABLE COMTNORGNZTINFO
(
	ORGNZT_ID             CHAR(20)  NOT NULL ,
	ORGNZT_NM             VARCHAR(60)  NOT NULL ,
	ORGNZT_DC             VARCHAR(300)  NULL ,
CONSTRAINT  COMTNORGNZTINFO_PK PRIMARY KEY (ORGNZT_ID)
);




CREATE TABLE COMTNFILE
(
	ATCH_FILE_ID          CHAR(20)  NOT NULL ,
	CREAT_DT              DATETIME  NOT NULL ,
	USE_AT                CHAR(1)  NULL ,
CONSTRAINT  COMTNFILE_PK PRIMARY KEY (ATCH_FILE_ID)
);




CREATE TABLE COMTNFILEDETAIL
(
	ATCH_FILE_ID          CHAR(20)  NOT NULL ,
	FILE_SN               NUMERIC(10)  NOT NULL ,
	FILE_STRE_COURS       VARCHAR(6000)  NOT NULL ,
	STRE_FILE_NM          VARCHAR(765)  NOT NULL ,
	ORIGNL_FILE_NM        VARCHAR(765)  NULL ,
	FILE_EXTSN            VARCHAR(60)  NOT NULL ,
	FILE_CN               STRING  NULL ,
	FILE_SIZE             NUMERIC(8)  NULL ,
CONSTRAINT  COMTNFILEDETAIL_PK PRIMARY KEY (ATCH_FILE_ID,FILE_SN)
);




CREATE TABLE COMTNBATCHSCHDUL
(
	BATCH_SCHDUL_ID       VARCHAR(60)  NOT NULL ,
	BATCH_OPERT_ID        VARCHAR(60)  NOT NULL ,
	EXECUT_CYCLE          VARCHAR(6)  NULL ,
	EXECUT_SCHDUL_DE      CHAR(20)  NULL ,
	EXECUT_SCHDUL_HOUR    CHAR(2)  NULL ,
	EXECUT_SCHDUL_MNT     CHAR(2)  NULL ,
	EXECUT_SCHDUL_SECND   CHAR(2)  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NOT NULL ,
CONSTRAINT  COMTNBATCHSCHDUL_PK PRIMARY KEY (BATCH_SCHDUL_ID)
);




CREATE TABLE COMTNBATCHSCHDULDFK
(
	BATCH_SCHDUL_ID       VARCHAR(60)  NOT NULL ,
	EXECUT_SCHDUL_DFK_SE  CHAR(1)  NOT NULL ,
CONSTRAINT  COMTNBATCHSCHDULDFK_PK PRIMARY KEY (BATCH_SCHDUL_ID,EXECUT_SCHDUL_DFK_SE)
);




