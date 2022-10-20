-- 이름, 이메일, 권한이름 표시, 이름이 Teddy, Allen 만 출력 ?

SELECT users.NAME, users.EMAIL, auth_names.AUTH_NAME
FROM (( users INNER JOIN auths ON users.UNIQUE_ID = auths.UNIQUE_ID_USERS )
INNER JOIN auth_names ON auths.UNIQUE_ID_AUTH_NAMES = auth_names.UNIQUE_ID )
WHERE NAME IN ( 'Teddy', 'Allen' );