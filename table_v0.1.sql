--테이블 생성
--회원과 프로젝트 간의 관계는 1:n
--프로젝트와 업무 간의 관계는 1:n

--프로젝트 테이블
create table project (
    pSeq number NOT NULL,              --테이블용 시퀀스 ,PK
    project_id varchar2(50) NOT NULL,  --프로젝트명
    member_id  varchar2(50) NOT NULL,  --회원ID, 주로 맡고 있는 회원 ID
    project_name  varchar2(100) NOT NULL, --프로젝트명
    receive_date date,  --수신일
    end_schedule_date  date,  --완료예정일
    important_level varchar2(50) , --중요도
    status,  --상태
    classfication , --구분
    progress , --진행율
    req_date , --등록일자
    mod_date , --수정일자
    reg_id , --등록자 ID
    mod_id, --수정자 ID
    memo,    --비고
    CONSTRAINT project_PK PRIMARY KEY (pSeq)
);


--업무(task)테이블
create table task (
    tSeq number NOT NULL,              --업무용 시퀀스 ,PK
    project_id varchar2(50) NOT NULL,  --프로젝트명
    task_id varchar2(50) NOT NULL,  --업무 ID
    task_name  varchar2(100) NOT NULL, --업무명
    start_date date,  --시작일
    end_date  date,  --완료일
    progress , --진행율
    base_date , --기준일
    req_date , --등록일자
    mod_date , --수정일자
    reg_id , --등록자 ID
    mod_id, --수정자 ID
    memo,    --비고
    CONSTRAINT task_PK PRIMARY KEY (tSeq)
);

--회원테이블
create table member (
    mSeq number NOT NULL,              --회원용 시퀀스 ,PK
    member_id varchar2(50) NOT NULL,  --회원ID
    member_pw varchar2(50) NOT NULL,  --회원pw
    member_name  varchar2(100) NOT NULL, --회원명
    team, --팀
    grade, --직급
    req_date , --등록일자
    mod_date , --수정일자
    reg_id , --등록자 ID
    mod_id, --수정자 ID
    memo,    --비고
    CONSTRAINT member_PK PRIMARY KEY (mSeq)
);
