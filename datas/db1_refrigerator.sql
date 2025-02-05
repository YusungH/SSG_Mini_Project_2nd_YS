use team5;

create table refrigerator (
	code varchar(20),
	category varchar(20) not null,
	name varchar(20) not null,
	stock int default(1) not null,
	primary key (code)
);

insert into refrigerator (code, category, name, stock) values ("SI-0001", "반찬", "김치", 1);
insert into refrigerator (code, category, name, stock) values ("SI-0002", "반찬", "찜닭", 1);
insert into refrigerator (code, category, name, stock) values ("SC-0001", "양념", "굴소스", 1);
insert into refrigerator (code, category, name, stock) values ("SC-0002", "양념", "다진마늘", 1);
insert into refrigerator (code, category, name, stock) values ("VG-0001", "채소", "양배추", 1);
insert into refrigerator (code, category, name, stock) values ("FR-0001", "과일", "귤", 10);
insert into refrigerator (code, category, name, stock) values ("MT-0001", "육류", "닭가슴살", 4);
insert into refrigerator (code, category, name, stock) values ("MT-0002", "육류", "돼지고기 앞다리살", 2);
insert into refrigerator (code, category, name, stock) values ("FS-0001", "생선", "고등어", 1);
insert into refrigerator (code, category, name, stock) values ("DA-0001", "유제품", "슬라이스 치즈", 20);
insert into refrigerator (code, category, name, stock) values ("DA-0002", "유제품", "달걀", 5);
insert into refrigerator (code, category, name, stock) values ("SN-0001", "간식", "크림빵", 1);
insert into refrigerator (code, category, name, stock) values ("FZ-0001", "냉동식품", "군만두", 2);
insert into refrigerator (code, category, name, stock) values ("FZ-0002", "냉동식품", "감자튀김", 1);

commit;
