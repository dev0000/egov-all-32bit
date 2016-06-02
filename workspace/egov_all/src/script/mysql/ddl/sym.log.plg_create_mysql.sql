CREATE TABLE COMTNPRIVACYLOG
(
    REQUST_ID            VARCHAR(20) NOT NULL,
    INQIRE_DT            DATETIME NOT NULL,
    SRVC_NM              VARCHAR(500) NULL,
    INQIRE_INFO          VARCHAR(100) NULL,
    RQESTER_ID           VARCHAR(20) NULL,
    RQESTER_IP           VARCHAR(23) NULL,
    PRIMARY KEY (REQUST_ID)
)
;

CREATE UNIQUE INDEX COMTNPRIVACYLOG_PK ON COMTNPRIVACYLOG
(
    REQUST_ID
)
;