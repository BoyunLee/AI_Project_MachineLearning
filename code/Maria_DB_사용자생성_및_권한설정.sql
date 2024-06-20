train/*
<1.사용자 계정  생성하기>
	- 계정 : pknu
	- 패스워드 : PassWord
*/


-- 내부접근자(localhost) : 외부에서 접근 안됨
-- IDENTIFIED BY : 패스워드 설정 
CREATE user 'team3'@localhost IDENTIFIED BY 'PassWord';

-- 외부에서도 접근가능하게(localhost 대신에 % 사용)
CREATE USER	'team3'@'%' IDENTIFIED BY 'PassWord';

-- 사용자 조회(Select)하기
SELECT * 
FROM user;

-- 데이터베이스 지정하기
USE mysql;


/*
<2. Database 생성>
*/
CREATE DATABASE team3db;

-- DB 정보 조회하기 : root계정 선택 -> 새로고침 

/*
<3. 사용자에게 DB 접근 권한 부여하기>
	- grant : 권한 생성
	- all : 모든 권한(접속, 생성, 조회, 수정, 삭제,입력)
*/
-- 내부사용자
GRANT ALL PRIVILEGES ON team3db.* TO 'team3'@'localhost';
-- 외부 사용자 
GRANT ALL PRIVILEGES ON team3db.* TO 'team3'@'%';

-- DB 접근 권한 정보 확인하기
SELECT *
FROM db;

/*
사용자, DB, 권한에 대한 생성 또는 삭제 또는 회수가 일어난 경우 
마지막에 항상 실행해야함
*/

-- 메모리 반영(MySQL, MariaDB에만 있는 명령어)
FLUSH PRIVILteam3dbEGES;
