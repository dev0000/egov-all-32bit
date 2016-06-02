CREATE TABLE COMTECOPSEQ
(
	TABLE_NAME            VARCHAR(60)  NOT NULL ,
	NEXT_ID               NUMERIC(30)  NULL ,
CONSTRAINT  COMTECOPSEQ_PK PRIMARY KEY (TABLE_NAME)
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




CREATE TABLE COMTNEMPLYRINFO
(
	EMPLYR_ID             VARCHAR(60)  NOT NULL ,
	ORGNZT_ID             CHAR(20)  NULL ,
	USER_NM               VARCHAR(180)  NOT NULL ,
	PASSWORD              VARCHAR(600)  NOT NULL ,
	EMPL_NO               VARCHAR(60)  NULL ,
	IHIDNUM               VARCHAR(600)  NULL ,
	SEXDSTN_CODE          CHAR(1)  NULL ,
	BRTHDY                CHAR(20)  NULL ,
	FXNUM                 VARCHAR(60)  NULL ,
	HOUSE_ADRES           VARCHAR(300)  NOT NULL ,
	PASSWORD_HINT         VARCHAR(300)  NOT NULL ,
	PASSWORD_CNSR         VARCHAR(300)  NOT NULL ,
	HOUSE_END_TELNO       VARCHAR(12)  NOT NULL ,
	AREA_NO               VARCHAR(12)  NOT NULL ,
	DETAIL_ADRES          VARCHAR(300)  NULL ,
	ZIP                   VARCHAR(18)  NOT NULL ,
	OFFM_TELNO            VARCHAR(60)  NULL ,
	MBTLNUM               VARCHAR(60)  NULL ,
	EMAIL_ADRES           VARCHAR(150)  NULL ,
	OFCPS_NM              VARCHAR(180)  NULL ,
	HOUSE_MIDDLE_TELNO    VARCHAR(12)  NOT NULL ,
	GROUP_ID              CHAR(20)  NULL ,
	PSTINST_CODE          CHAR(8)  NULL ,
	EMPLYR_STTUS_CODE     CHAR(1)  NOT NULL ,
	ESNTL_ID              CHAR(20)  NOT NULL ,
	CRTFC_DN_VALUE        VARCHAR(300)  NULL ,
	SBSCRB_DE             DATETIME  NULL ,
CONSTRAINT  COMTNEMPLYRINFO_PK PRIMARY KEY (EMPLYR_ID)
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




CREATE TABLE COMTNNOTE
(
	NOTE_ID               CHAR(20)  NOT NULL ,
	NOTE_SJ               VARCHAR(765)  NULL ,
	NOTE_CN               VARCHAR(12000)  NULL ,
	ATCH_FILE_ID          CHAR(20)  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
CONSTRAINT  COMTNNOTE_PK PRIMARY KEY (NOTE_ID)
);




CREATE TABLE COMTNNOTETRNSMIT
(
	NOTE_ID               CHAR(20)  NOT NULL ,
	NOTE_TRNSMIT_ID       CHAR(20)  NOT NULL ,
	TRNSMITER_ID          CHAR(20)  NULL ,
	DELETE_AT             CHAR(8)  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
CONSTRAINT  COMTNNOTETRNSMIT_PK PRIMARY KEY (NOTE_ID,NOTE_TRNSMIT_ID)
);




CREATE TABLE COMTNNOTERECPTN
(
	NOTE_ID               CHAR(20)  NOT NULL ,
	NOTE_TRNSMIT_ID       CHAR(20)  NOT NULL ,
	NOTE_RECPTN_ID        CHAR(20)  NOT NULL ,
	RCVER_ID              CHAR(20)  NULL ,
	OPEN_YN               CHAR(1)  NULL ,
	RECPTN_SE             CHAR(1)  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
CONSTRAINT  COMTNNOTERECPTN_PK PRIMARY KEY (NOTE_ID,NOTE_TRNSMIT_ID,NOTE_RECPTN_ID)
);




