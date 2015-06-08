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
create table board(
	board_no number(1000) primary key,
	board_type varchar2(10) not null,
	title varchar2(500) not null,
	writer varchar2(500) not null,
	content varchar2() not null,
	constraint fk_member foreign key(member_no) references member(member_no)
)

drop table board
-- statistics
create table statistics(
	age number not null,
	field varchar(50),
	applicate_count number not null,
	primary key(age,field)
)

drop table statistics

--recruit
create table recruit(
	recruit_no primary key,
	title varchar2(50) not null,
	field varchar2(100) not null,
	area varchar2(100) not null,
	age varchar2(100) not null,
	start_date date not null,
	time_date date not null
	)
	
drop table recruit

create table scheduler(
constraint fk_member_no references member(member_no),
field varchar(50) not null,
location varchar(50) not null,
start_date date not null,
end_date date not null
)

create table voluntary_service_applicate(
constraint fk_recruit_no references recruit(recruit_no),
constraint fk_member_no references member(member_no)
)

create table QnA_board(
title varchar2(50) primary key,
writer varchar2(50) not null,
content varchar2(50) not null,
ref varchar2(50) not null,
restep varchar2(50) not null,
relevel varchar2(50) not null,
constraint fk_member_no references member(member_no)
)
--comment
create table comment(
	comment_no number primary key,
	writer varchar2(50) not null,
	content varchar2(50) not null,
	time_posted date not null,
	constraint fk_board_no references board(board_no)
)

--picture
create table picture(
	picture_no number(50) primary key,
	picture_name varchar2(50) not null,
	board_no number(50) not null
)
