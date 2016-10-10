-- 모든 사용자 확인
select * from dba_users;

select * from user_users;

select * from all_users;

create user kickscar identified by "kickscar";

-- 권한 부여 (접속 권한)
grant create session to kickscar;
revoke create session from kickscar;

-- role 없애기
drop role reviwer;

-- role 생성(reviewer)
create role reviewer;

-- 모든 테이블을 select 할수 있는 권한을 롤(reviewer)에 부여 
grant select any table to reviewer;

-- 롤(reviewer)에 롤(connect)을 추가
grant connect to reviewer;

-- 사용자 계정(kickscar)에 롤을 부여
grant reviewer to kickscar;