use team5;

CREATE TABLE goods (
  code varchar(20) NOT NULL,
  category varchar(20) NOT NULL,
  name varchar(20) NOT NULL,
  content varchar(4000),
  price int NOT NULL,
  image varchar(20) NOT NULL,
  PRIMARY KEY (code)
);

insert into goods (code, category, name, content, price, image) values ("SI-0001", "반찬", "김치", "새벽팜 묵은지 2kg 3kg 5kg 10kg 국내산 100% 전라도김치 참매실 새벽김치", 14500, "SI-0001");
insert into goods (code, category, name, content, price, image) values ("SI-0002", "반찬", "찜닭", "[냉장][강화肉식] 간장 찜닭 700g (350g*2ea)", 14500, "SI-0002");
insert into goods (code, category, name, content, price, image) values ("SC-0001", "양념", "굴소스", "노브랜드 굴소스 490g", 3580, "SC-0001");
insert into goods (code, category, name, content, price, image) values ("SC-0002", "양념", "다진마늘", "냉동 다진마늘 400g", 7900, "SC-0002");
insert into goods (code, category, name, content, price, image) values ("VG-0001", "채소", "양배추", "한끼에 하나씩 양배추 (통)", 3490, "VG-0001");
insert into goods (code, category, name, content, price, image) values ("VG-0002", "채소", "콩나물", "CJ제일제당 행복한콩 깨끗한콩나물 380g", 1880, "VG-0002");
insert into goods (code, category, name, content, price, image) values ("FR-0001", "과일", "귤", "[당도선별] 하우스감귤 1kg (팩), 국내산", 13900, "FR-0001");
insert into goods (code, category, name, content, price, image) values ("FR-0002", "과일", "토마토", "친환경 토마토(900g/팩)", 7800, "FR-0002");
insert into goods (code, category, name, content, price, image) values ("MT-0001", "육류", "닭가슴살", "노브랜드 [냉동] 닭가슴살 (1,000g)", 7980, "MT-0001");
insert into goods (code, category, name, content, price, image) values ("MT-0002", "육류", "돼지고기 앞다리살", "[더느림+] 무항생제 앞다리 (100g)", 1880, "MT-0002");
insert into goods (code, category, name, content, price, image) values ("FS-0001", "해산물", "고등어", "노브랜드 [냉동][노르웨이] 손질 고등어 (800g)", 10980, "FS-0001");
insert into goods (code, category, name, content, price, image) values ("FS-0002", "해산물", "낙지", "[냉동][태국] 먹기좋게 손질된 낙지 (500g)", 9980, "FS-0002");
insert into goods (code, category, name, content, price, image) values ("DA-0001", "유제품", "슬라이스 치즈", "에이클래스 체다 슬라이스치즈 210g (30g x 7)", 3980, "DA-0001");
insert into goods (code, category, name, content, price, image) values ("DA-0002", "유제품", "달걀", "[당일산란/당일발송] 가농 금계란 1+등급 골드 비타민특란 40구(무항생제)", 17800, "DA-0002");
insert into goods (code, category, name, content, price, image) values ("SN-0001", "간식", "크림빵", "삼립 정통크림빵 3입 240g", 4180, "SN-0001");
insert into goods (code, category, name, content, price, image) values ("SN-0002", "간식", "감자칩", "노브랜드 감자칩 사워크림&어니언 160g", 1480, "SN-0002");
insert into goods (code, category, name, content, price, image) values ("FZ-0001", "냉동식품", "군만두", "노브랜드 군만두 1000g", 4980, "FZ-0001");
insert into goods (code, category, name, content, price, image) values ("FZ-0002", "냉동식품", "감자튀김", "피코크 케이준프라이 700g", 8980, "FZ-0002");

commit;