CREATE TABLE COMTECOPSEQ
(
	TABLE_NAME            VARCHAR2(20)  NOT NULL ,
	NEXT_ID               NUMBER(30)  NULL ,
CONSTRAINT  COMTECOPSEQ_PK PRIMARY KEY (TABLE_NAME)
);




CREATE TABLE COMTNRESTDE
(
	RESTDE_NO             NUMBER(6)  NOT NULL ,
	RESTDE                CHAR(8)  NULL ,
	RESTDE_NM             VARCHAR2(60)  NULL ,
	RESTDE_DC             VARCHAR2(200)  NULL ,
	RESTDE_SE_CODE        VARCHAR2(2)  NULL ,
	FRST_REGIST_PNTTM     DATE  NULL ,
	FRST_REGISTER_ID      VARCHAR2(20)  NULL ,
	LAST_UPDT_PNTTM       DATE  NULL ,
	LAST_UPDUSR_ID        VARCHAR2(20)  NULL ,
CONSTRAINT  COMTNRESTDE_PK PRIMARY KEY (RESTDE_NO)
);




CREATE TABLE COMTCCMMNCODE
(
	CODE_ID               VARCHAR2(6)  NOT NULL ,
	CODE_ID_NM            VARCHAR2(60)  NULL ,
	CODE_ID_DC            VARCHAR2(200)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	CL_CODE               CHAR(3)  NULL ,
	FRST_REGIST_PNTTM     DATE  NULL ,
	FRST_REGISTER_ID      VARCHAR2(20)  NULL ,
	LAST_UPDT_PNTTM       DATE  NULL ,
	LAST_UPDUSR_ID        VARCHAR2(20)  NULL ,
CONSTRAINT  COMTCCMMNCODE_PK PRIMARY KEY (CODE_ID),
CONSTRAINT  COMTCCMMNCODE_FK1 FOREIGN KEY (CL_CODE) REFERENCES COMTCCMMNCLCODE(CL_CODE) ON DELETE SET NULL
);

CREATE INDEX COMTCCMMNCODE_i01 ON COMTCCMMNCODE
(CL_CODE  ASC);



CREATE TABLE COMTCCMMNDETAILCODE
(
	CODE_ID               VARCHAR2(6)  NOT NULL ,
	CODE                  VARCHAR2(15)  NOT NULL ,
	CODE_NM               VARCHAR2(60)  NULL ,
	CODE_DC               VARCHAR2(200)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	FRST_REGIST_PNTTM     DATE  NULL ,
	FRST_REGISTER_ID      VARCHAR2(20)  NULL ,
	LAST_UPDT_PNTTM       DATE  NULL ,
	LAST_UPDUSR_ID        VARCHAR2(20)  NULL ,
CONSTRAINT  COMTCCMMNDETAILCODE_PK PRIMARY KEY (CODE_ID,CODE),
CONSTRAINT  COMTCCMMNDETAILCODE_FK1 FOREIGN KEY (CODE_ID) REFERENCES COMTCCMMNCODE(CODE_ID)
);

CREATE INDEX COMTCCMMNDETAILCODE_i01 ON COMTCCMMNDETAILCODE
(CODE_ID  ASC);



CREATE TABLE COMTNAUTHORGROUPINFO
(
	GROUP_ID              CHAR(20)  NOT NULL ,
	GROUP_NM              VARCHAR2(60)  NOT NULL ,
	GROUP_CREAT_DE        CHAR(20)  NOT NULL ,
	GROUP_DC              VARCHAR2(100)  NULL ,
CONSTRAINT  COMTNAUTHORGROUPINFO_PK PRIMARY KEY (GROUP_ID)
);




CREATE TABLE COMTNGNRLMBER
(
	MBER_ID               VARCHAR2(20)  NOT NULL ,
	PASSWORD              VARCHAR2(200)  NOT NULL ,
	PASSWORD_HINT         VARCHAR2(100)  NULL ,
	PASSWORD_CNSR         VARCHAR2(100)  NULL ,
	IHIDNUM               VARCHAR2(200)  NULL ,
	MBER_NM               VARCHAR2(50)  NOT NULL ,
	ZIP                   VARCHAR2(6)  NOT NULL ,
	ADRES                 VARCHAR2(100)  NOT NULL ,
	AREA_NO               VARCHAR2(4)  NOT NULL ,
	MBER_STTUS            VARCHAR2(15)  NULL ,
	DETAIL_ADRES          VARCHAR2(100)  NULL ,
	END_TELNO             VARCHAR2(4)  NOT NULL ,
	MBTLNUM               VARCHAR2(20)  NOT NULL ,
	GROUP_ID              CHAR(20)  NULL ,
	MBER_FXNUM            VARCHAR2(20)  NULL ,
	MBER_EMAIL_ADRES      VARCHAR2(50)  NULL ,
	MIDDLE_TELNO          VARCHAR2(4)  NOT NULL ,
	SBSCRB_DE             DATE  NULL ,
	SEXDSTN_CODE          CHAR(1)  NULL ,
	ESNTL_ID              CHAR(20)  NOT NULL ,
CONSTRAINT  COMTNGNRLMBER_PK PRIMARY KEY (MBER_ID),
CONSTRAINT  COMTNGNRLMBER_FK1 FOREIGN KEY (GROUP_ID) REFERENCES COMTNAUTHORGROUPINFO(GROUP_ID) ON DELETE CASCADE
);

CREATE INDEX COMTNGNRLMBER_i01 ON COMTNGNRLMBER
(GROUP_ID  ASC);



CREATE TABLE COMTNORGNZTINFO
(
	ORGNZT_ID             CHAR(20)  NOT NULL ,
	ORGNZT_NM             VARCHAR2(20)  NOT NULL ,
	ORGNZT_DC             VARCHAR2(100)  NULL ,
CONSTRAINT  COMTNORGNZTINFO_PK PRIMARY KEY (ORGNZT_ID)
);




CREATE TABLE COMTNEMPLYRINFO
(
	EMPLYR_ID             VARCHAR2(20)  NOT NULL ,
	ORGNZT_ID             CHAR(20)  NULL ,
	USER_NM               VARCHAR2(60)  NOT NULL ,
	PASSWORD              VARCHAR2(200)  NOT NULL ,
	EMPL_NO               VARCHAR2(20)  NULL ,
	IHIDNUM               VARCHAR2(200)  NULL ,
	SEXDSTN_CODE          CHAR(1)  NULL ,
	BRTHDY                CHAR(20)  NULL ,
	FXNUM                 VARCHAR2(20)  NULL ,
	HOUSE_ADRES           VARCHAR2(100)  NOT NULL ,
	PASSWORD_HINT         VARCHAR2(100)  NOT NULL ,
	PASSWORD_CNSR         VARCHAR2(100)  NOT NULL ,
	HOUSE_END_TELNO       VARCHAR2(4)  NOT NULL ,
	AREA_NO               VARCHAR2(4)  NOT NULL ,
	DETAIL_ADRES          VARCHAR2(100)  NULL ,
	ZIP                   VARCHAR2(6)  NOT NULL ,
	OFFM_TELNO            VARCHAR2(20)  NULL ,
	MBTLNUM               VARCHAR2(20)  NULL ,
	EMAIL_ADRES           VARCHAR2(50)  NULL ,
	OFCPS_NM              VARCHAR2(60)  NULL ,
	HOUSE_MIDDLE_TELNO    VARCHAR2(4)  NOT NULL ,
	GROUP_ID              CHAR(20)  NULL ,
	PSTINST_CODE          CHAR(8)  NULL ,
	EMPLYR_STTUS_CODE     CHAR(1)  NOT NULL ,
	ESNTL_ID              CHAR(20)  NOT NULL ,
	CRTFC_DN_VALUE        VARCHAR2(100)  NULL ,
	SBSCRB_DE             DATE  NULL ,
CONSTRAINT  COMTNEMPLYRINFO_PK PRIMARY KEY (EMPLYR_ID),
CONSTRAINT  COMTNEMPLYRINFO_FK2 FOREIGN KEY (ORGNZT_ID) REFERENCES COMTNORGNZTINFO(ORGNZT_ID) ON DELETE CASCADE,
CONSTRAINT  COMTNEMPLYRINFO_FK1 FOREIGN KEY (GROUP_ID) REFERENCES COMTNAUTHORGROUPINFO(GROUP_ID) ON DELETE CASCADE
);

CREATE INDEX COMTNEMPLYRINFO_i01 ON COMTNEMPLYRINFO
(ORGNZT_ID  ASC);
CREATE INDEX COMTNEMPLYRINFO_i02 ON COMTNEMPLYRINFO
(GROUP_ID  ASC);



CREATE TABLE COMTNENTRPRSMBER
(
	ENTRPRS_MBER_ID       VARCHAR2(20)  NOT NULL ,
	ENTRPRS_SE_CODE       CHAR(8)  NULL ,
	BIZRNO                VARCHAR2(10)  NULL ,
	JURIRNO               VARCHAR2(13)  NULL ,
	CMPNY_NM              VARCHAR2(60)  NOT NULL ,
	CXFC                  VARCHAR2(50)  NULL ,
	ZIP                   VARCHAR2(6)  NOT NULL ,
	ADRES                 VARCHAR2(100)  NOT NULL ,
	ENTRPRS_MIDDLE_TELNO  VARCHAR2(4)  NOT NULL ,
	FXNUM                 VARCHAR2(20)  NULL ,
	INDUTY_CODE           CHAR(1)  NULL ,
	APPLCNT_NM            VARCHAR2(50)  NOT NULL ,
	APPLCNT_IHIDNUM       VARCHAR2(200)  NULL ,
	SBSCRB_DE             DATE  NULL ,
	ENTRPRS_MBER_STTUS    VARCHAR2(15)  NULL ,
	ENTRPRS_MBER_PASSWORD  VARCHAR2(200)  NULL ,
	ENTRPRS_MBER_PASSWORD_HINT  VARCHAR2(100)  NOT NULL ,
	ENTRPRS_MBER_PASSWORD_CNSR  VARCHAR2(100)  NOT NULL ,
	GROUP_ID              CHAR(20)  NULL ,
	DETAIL_ADRES          VARCHAR2(100)  NULL ,
	ENTRPRS_END_TELNO     VARCHAR2(4)  NOT NULL ,
	AREA_NO               VARCHAR2(4)  NOT NULL ,
	APPLCNT_EMAIL_ADRES   VARCHAR2(50)  NOT NULL ,
	ESNTL_ID              CHAR(20)  NOT NULL ,
CONSTRAINT  COMTNENTRPRSMBER_PK PRIMARY KEY (ENTRPRS_MBER_ID),
CONSTRAINT  COMTNENTRPRSMBER_FK1 FOREIGN KEY (GROUP_ID) REFERENCES COMTNAUTHORGROUPINFO(GROUP_ID) ON DELETE CASCADE
);

CREATE INDEX COMTNENTRPRSMBER_i01 ON COMTNENTRPRSMBER
(GROUP_ID  ASC);





CREATE  VIEW COMVNUSERMASTER ( ESNTL_ID,USER_ID,PASSWORD,USER_NM,USER_ZIP,USER_ADRES,USER_EMAIL,GROUP_ID, USER_SE, ORGNZT_ID ) 
AS  SELECT ESNTL_ID, MBER_ID,PASSWORD,MBER_NM,ZIP,ADRES,MBER_EMAIL_ADRES,' ','GNR' AS USER_SE, ' ' ORGNZT_ID
		FROM COMTNGNRLMBER
	UNION ALL
		SELECT ESNTL_ID,EMPLYR_ID,PASSWORD,USER_NM,ZIP,HOUSE_ADRES,EMAIL_ADRES,GROUP_ID ,'USR' AS USER_SE, ORGNZT_ID
		FROM COMTNEMPLYRINFO
	UNION ALL
		SELECT ESNTL_ID,ENTRPRS_MBER_ID,ENTRPRS_MBER_PASSWORD,CMPNY_NM,ZIP,ADRES,APPLCNT_EMAIL_ADRES,' ' ,'ENT' AS USER_SE, ' ' ORGNZT_ID
		FROM COMTNENTRPRSMBER ORDER BY ESNTL_ID;


CREATE TABLE COMTNFILE
(
	ATCH_FILE_ID          CHAR(20)  NOT NULL ,
	CREAT_DT              DATE  NOT NULL ,
	USE_AT                CHAR(1)  NULL ,
CONSTRAINT  COMTNFILE_PK PRIMARY KEY (ATCH_FILE_ID)
);




CREATE TABLE COMTNFILEDETAIL
(
	ATCH_FILE_ID          CHAR(20)  NOT NULL ,
	FILE_SN               NUMBER(10)  NOT NULL ,
	FILE_STRE_COURS       VARCHAR2(2000)  NOT NULL ,
	STRE_FILE_NM          VARCHAR2(255)  NOT NULL ,
	ORIGNL_FILE_NM        VARCHAR2(255)  NULL ,
	FILE_EXTSN            VARCHAR2(20)  NOT NULL ,
	FILE_CN               CLOB  NULL ,
	FILE_SIZE             NUMBER(8)  NULL ,
CONSTRAINT  COMTNFILEDETAIL_PK PRIMARY KEY (ATCH_FILE_ID,FILE_SN),
CONSTRAINT  COMTNFILEDETAIL_FK1 FOREIGN KEY (ATCH_FILE_ID) REFERENCES COMTNFILE(ATCH_FILE_ID)
);

CREATE INDEX COMTNFILEDETAIL_i01 ON COMTNFILEDETAIL
(ATCH_FILE_ID  ASC);



CREATE TABLE COMTNMTGPLACEMANAGE
(
	MTGRUM_ID             CHAR(20)  NOT NULL ,
	MTGRUM_NM             VARCHAR2(255)  NOT NULL ,
	OPN_BEGIN_TM          VARCHAR2(6)  NOT NULL ,
	OPN_END_TM            VARCHAR2(6)  NOT NULL ,
	ACEPTNC_POSBL_NMPR    NUMBER(10)  NOT NULL ,
	LC_SE                 CHAR(5)  NULL ,
	LC_DETAIL             VARCHAR2(200)  NULL ,
	ATCH_FILE_ID          CHAR(20)  NULL ,
	FRST_REGISTER_ID      VARCHAR2(20)  NULL ,
	FRST_REGIST_PNTTM     DATE  NULL ,
	LAST_UPDUSR_ID        VARCHAR2(20)  NULL ,
	LAST_UPDT_PNTTM       DATE  NULL ,
CONSTRAINT  COMTNMTGPLACEMANAGE_PK PRIMARY KEY (MTGRUM_ID)
);




CREATE TABLE COMTNFXTRSMANAGE
(
	FXTRS_CODE            CHAR(14)  NOT NULL ,
	FXTRS_NM              VARCHAR2(100)  NOT NULL ,
	MAKR_NM               VARCHAR2(100)  NULL ,
	PRICE                 NUMBER(16)  NULL ,
CONSTRAINT  COMTNFXTRSMANAGE_PK PRIMARY KEY (FXTRS_CODE)
);




CREATE TABLE COMTNMTGPLACEFXTRS
(
	MTGRUM_ID             CHAR(20)  NOT NULL ,
	FXTRS_CODE            CHAR(14)  NOT NULL ,
	QY                    NUMBER(20)  NOT NULL ,
	FRST_REGISTER_ID      VARCHAR2(20)  NULL ,
	FRST_REGIST_PNTTM     DATE  NULL ,
	LAST_UPDUSR_ID        VARCHAR2(20)  NULL ,
	LAST_UPDT_PNTTM       DATE  NULL ,
CONSTRAINT  COMTNMTGPLACEFXTRS_PK PRIMARY KEY (MTGRUM_ID,FXTRS_CODE),
CONSTRAINT  COMTNMTGPLACEFXTRS_FK2 FOREIGN KEY (MTGRUM_ID) REFERENCES COMTNMTGPLACEMANAGE(MTGRUM_ID),
CONSTRAINT  COMTNMTGPLACEFXTRS_FK1 FOREIGN KEY (FXTRS_CODE) REFERENCES COMTNFXTRSMANAGE(FXTRS_CODE)
);

CREATE INDEX COMTNMTGPLACEFXTRS_i01 ON COMTNMTGPLACEFXTRS
(MTGRUM_ID  ASC);



CREATE TABLE COMTNMTGPLACERESVE
(
	RESVE_ID              CHAR(20)  NOT NULL ,
	MTGRUM_ID             CHAR(20)  NOT NULL ,
	MTG_SJ                VARCHAR2(100)  NOT NULL ,
	RSVCTM_ID             VARCHAR2(20)  NOT NULL ,
	RESVE_DE              CHAR(8)  NOT NULL ,
	RESVE_BEGIN_TM        VARCHAR2(14)  NOT NULL ,
	RESVE_END_TM          VARCHAR2(14)  NOT NULL ,
	ATNDNC_NMPR           NUMBER(10)  NULL ,
	MTG_CN                VARCHAR2(2500)  NULL ,
	FRST_REGISTER_ID      VARCHAR2(20)  NULL ,
	FRST_REGIST_PNTTM     DATE  NULL ,
	LAST_UPDUSR_ID        VARCHAR2(20)  NULL ,
	LAST_UPDT_PNTTM       DATE  NULL ,
CONSTRAINT  COMTNMTGPLACERESVE_PK PRIMARY KEY (RESVE_ID),
CONSTRAINT  COMTNMTGPLACERESVE_FK1 FOREIGN KEY (MTGRUM_ID) REFERENCES COMTNMTGPLACEMANAGE(MTGRUM_ID) ON DELETE SET NULL
);

CREATE INDEX COMTNMTGPLACERESVE_i01 ON COMTNMTGPLACERESVE
(MTGRUM_ID  ASC);



