create table board (
bno number not null primary key,
title varchar2(200) not null,
content varchar2(4000),
writer varchar2(50) not null
);

create sequence bno_seq
start with 1
increment by 1
maxvalue 10000
minvalue 1
nocycle;

select * from board;


