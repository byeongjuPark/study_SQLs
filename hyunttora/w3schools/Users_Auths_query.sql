-- 접근권한생성

INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('GUEST', 'B1')
;
INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('ADMIN', 'B2')
;
INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('MANAGER', 'B3')
;

SELECT *
FROM auth_names;

-- 유저 가입 
INSERT INTO users (UNIQUE_ID, NAME, EAMIL, JOB)
VALUES ('U1','Paul','paul01@gmail.com','IT Billing'),
('U2','Teddy', 'texas@imfblog.org','Engineering'),
('U3','Allen', 'norway@iotm.com','IT Billing'),
('U4','Paul', 'paul_p@naver.com','Developer')
;

-- 유저 권한 부여
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U1', 'B1')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U1', 'B2')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B1')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B2')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B3')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U3', 'B1')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U4', 'B2')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U4', 'B1')
;

SELECT *
FROM auths;


--유저 탈퇴 
 DELETE FROM auths 
 WHERE UNIQUE_ID_USERS IN ('U2','U4');
 
 DELETE FROM users
 WHERE UNIQUE_ID IN ('U2','U4');

SELECT *
FROM users;


--


