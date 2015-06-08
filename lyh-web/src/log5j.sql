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

create table board(
	board_no number(1000) primary key,
	board_type varchar2(10) not null,
	title varchar2(500) not null,
	writer varchar2(500) not null,
	content varchar2() not null,
	constraint fk_member foreign key(member_no) references member(member_no)
)

drop table board

create table statistics(
	age number not null,
	field varchar(50),
	applicate_count number not null,
	primary key(age,field)
)

