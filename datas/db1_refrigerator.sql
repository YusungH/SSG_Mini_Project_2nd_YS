use team5;

create table refrigerator (
	num int NOT NULL AUTO_INCREMENT primary key,
	userid varchar(20),
	gCode varchar(20),
	gCategory varchar(20) not null,
	gName varchar(20) not null,
	rStock int default(1) not null,
    CONSTRAINT refrigerator_userid_fk FOREIGN KEY (userid) REFERENCES member (userid) ON DELETE CASCADE
);

commit;