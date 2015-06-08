-- member
create table member(
	member_no number primary key,
	id varchar2(50) not null,
	password varchar2(50) not null,
	name varchar2(50) not null,
	address varchar2(50) not null,
	identity_no varchar2(50) not null,
	mail_address varchar2(50) not null,
	member_type varchar2(10) not null
)
drop table member
-- board
drop table board
create table board(
	board_no number primary key,
	board_type varchar2(10) not null,
	title varchar2(50) not null,
	writer varchar2(50) not null,
	content clob not null,
	member_no number not null
	constraint fk_member_no_4 references member(member_no)
)

drop table board
-- statistics
create table statistics(
	age number,
	field varchar(50),
	applicate_count number not null,
	primary key(age,field)
)

drop table statistics

--recruit
create table recruit(
	recruit_no number primary key,
	title varchar2(50) not null,
	field varchar2(100) not null,
	area varchar2(100) not null,
	age varchar2(100) not null,
	start_date date not null,
	time_date date not null
	)
	
drop table recruit

drop table scheduler
create table scheduler(
field varchar(50) not null,
location varchar(50) not null,
start_date date not null,
end_date date not null,
member_no number primary key
constraint fk_member_no_5 references member(member_no)
)

drop table voluntary_service_applicate
create table voluntary_service_applicate(
recruit_no number not null,
member_no number not null
constraint fk_recruit_no references recruit(recruit_no)
constraint fk_member_no_2 references member(member_no),
primary key(recruit_no,member_no)
)

create table QnA_board(
title varchar2(50) primary key,
writer varchar2(50) not null,
content varchar2(50) not null,
ref varchar2(50) not null,
restep varchar2(50) not null,
relevel varchar2(50) not null,
member_no number not null
constraint fk_member_no_3 references member(member_no)
)
--comment
drop table comment1
create table ymv_comment(
	comment_no number primary key,
	writer varchar2(50) not null,
	content varchar2(50) not null,
	time_posted date not null,
	board_no number not null
	constraint fk_board_no references board(board_no)
)

--picture
create table picture(
	picture_no number primary key,
	picture_name varchar2(50) not null,
	board_no number not null
)

-- voluntary_applicant_ok
create table voluntary_applicant_ok(
	recruit_no number not null,
	member_no number not null
	constraint fk_recruit_no_1 references recruit(recruit_no)
	constraint fk_member_no_1 references member(member_no),
	primary key(recruit_no,member_no)
)

-- voluntary_applicant 확인해보것음
create table voluntary_applicant(
	recruit_no number not null,
	member_no number not null
	constraint fk_recruit_no_2 references recruit(recruit_no)
	constraint fk_member_no_2 references member(member_no),
	primary key(recruit_no,member_no)
)

