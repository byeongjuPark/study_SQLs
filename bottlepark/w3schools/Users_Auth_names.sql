-- 이름, 이메일, 권한이름 표시, 이름이 Teddy, Allen 만 출력 ?
-- 개판남

SELECT DISTINCT UA.name, UA.EMAIL, auth_names.AUTH_NAME
FROM auth_names
INNER JOIN (SELECT *
FROM USERS
INNER JOIN AUTHS 
ON users.UNIQUE_ID = auths.UNIQUE_ID_USERS 
AND users.name IN('Teddy', 'Allen')) as UA