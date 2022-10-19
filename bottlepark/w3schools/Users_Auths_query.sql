-- study_sqls DB 생성
CREATE SCHEMA `study_sqls` ;

-- Tables 생성
CREATE TABLE AUTH_NAMES
(
  AUTH_NAME VARCHAR(200) NOT NULL COMMENT '접근권한명',
  UNIQUE_ID VARCHAR(200) NOT NULL COMMENT '접근권한 대표값',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '접근권한명';

CREATE TABLE AUTHS
(
  UNIQUE_ID_USERS      VARCHAR(200) NOT NULL COMMENT '대표값',
  UNIQUE_ID_AUTH_NAMES VARCHAR(200) NOT NULL COMMENT '접근권한 대표값'
) COMMENT '권한들';

CREATE TABLE USERS
(
  UNIQUE_ID VARCHAR(200) NOT NULL COMMENT '대표값',
  NAME      VARCHAR(200) NOT NULL COMMENT '이름',
  EAMIL     VARCHAR(200) NOT NULL COMMENT '이메일',
  JOB       VARCHAR(200) NULL     COMMENT '직책',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '사용자들';

ALTER TABLE AUTHS
  ADD CONSTRAINT FK_USERS_TO_AUTHS
    FOREIGN KEY (UNIQUE_ID_USERS)
    REFERENCES USERS (UNIQUE_ID);

ALTER TABLE AUTHS
  ADD CONSTRAINT FK_AUTH_NAMES_TO_AUTHS
    FOREIGN KEY (UNIQUE_ID_AUTH_NAMES)
    REFERENCES AUTH_NAMES (UNIQUE_ID);
-- 공유한 엑셀 값들 데이터로 입력
-- 권한 입력

INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('GUEST', 'B1'), ('ADMIN', 'B2'), ('MANAGER', 'B3')
;

-- 회원 가입(U1 ~ U4) 
INSERT INTO USERS (UNIQUE_ID, NAME, EAMIL, JOB)
VALUES ('U1','Paul','paul01@gmail.com','IT Billing'),
('U2','Teddy', 'texas@imfblog.org','Engineering'),
('U3','Allen', 'norway@iotm.com','IT Billing'),
('U4','Paul', 'paul_p@naver.com','Developer')
;

-- 유저 권한 입력
INSERT INTO AUTHS (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U1', 'B1')
        ('U1', 'B2'),
        ('U2', 'B1'),
        ('U2', 'B2'),
        ('U2', 'B3'),
        ('U3', 'B1'),
        ('U4', 'B2'),
        ('U4', 'B1'),
;


--회원 탈퇴 
 DELETE FROM AUTH
 WHERE UNIQUE_ID_USERS IN ('U2','U4');
 
 DELETE FROM USERS
 WHERE UNIQUE_ID IN ('U2','U4');

SELECT *
FROM users;


