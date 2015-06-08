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
