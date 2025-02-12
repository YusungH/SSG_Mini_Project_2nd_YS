use team5;

create table goods (
  gCode varchar(20) not null,
  gCategory varchar(20) not null,
  gName varchar(20) not null,
  gContent varchar(4000),
  gPrice int not null,
  gImage varchar(20) not null,
  stock int default(99) not null,
  primary key (gCode)
);

insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('DA-0001', 'Dairy', '슬라이스 치즈', '에이클래스 체다 슬라이스치즈 210g (30g x 7)', '3980', 'DA-0001', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('DA-0002', 'Dairy', '달걀', '[당일산란/당일발송] 가농 금계란 1+등급 골드 비타민특란 40구(무항생제)', '17800', 'DA-0002', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('DA-0003', 'Dairy', '소화가 잘되는 우유', '덴마크 소화가 잘되는 우유 900ml', '3480', 'DA-0003', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('DA-0004', 'Dairy', '우유', '피코크 에이 클래스 우유 900ml (1A등급)', '2380', 'DA-0004', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('DA-0005', 'Dairy', '멸균우유(팩)', '연세우유 전용목장 멸균 흰우유 180ml 24팩', '14770', 'DA-0005', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('DA-0006', 'Dairy', '휘핑크림', '노브랜드 휘핑크림 1L', '8980', 'DA-0006', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('DA-0007', 'Dairy', '플레인 요거트', '[노브랜드] 플레인 요거트 450g', '2380', 'DA-0007', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('DA-0008', 'Dairy', '요구르트', '노브랜드 대왕요구르트 1L', '1680', 'DA-0008', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('DA-0009', 'Dairy', '초코우유', '남양 초코에몽 250ml*4', '4580', 'DA-0009', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('DA-0010', 'Dairy', '커피우유', '[서울우유] 커피포리 200ml* 4입', '4260', 'DA-0010', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('DA-0011', 'Dairy', '구운란', '구운란 30개입 (1050g)', '8980', 'DA-0011', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FR-0001', 'Fruit', '귤', '[당도선별] 하우스감귤 1kg (팩), 국내산', '13900', 'FR-0001', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FR-0002', 'Fruit', '토마토', '친환경 토마토(900g/팩)', '7800', 'FR-0002', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FR-0003', 'Fruit', '사과', '[당도선별] 햇 사과 1.2kg(봉)', '10980', 'FR-0003', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FR-0004', 'Fruit', '오렌지', '[미국산] 네이블 오렌지 1개 (190g내외)', '880', 'FR-0004', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FR-0005', 'Fruit', '키위', '제주 그린키위 8~12입/팩 (1kg내외)', '9980', 'FR-0005', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FR-0006', 'Fruit', '샤인머스캣', '고당도 샤인머스켓 한송이 600g (팩)', '9900', 'FR-0006', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FR-0007', 'Fruit', '복숭아', '달콤한 햇사레 복숭아 백도/황도 2kg', '26500', 'FR-0007', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FR-0008', 'Fruit', '토마토', '찰토마토 1kg (팩)', '13980', 'FR-0008', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FR-0009', 'Fruit', '망고', '[태국산] 망고 2입/팩 (600g내외)', '9980', 'FR-0009', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FR-0010', 'Fruit', '아보카도', '[칠레산] 아보카도 1개 (220g내외)', '1980', 'FR-0010', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FS-0001', 'Fish', '고등어', '노브랜드 [냉동][노르웨이] 손질 고등어 (800g)', '10980', 'FS-0001', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FS-0002', 'Fish', '낙지', '[냉동][태국] 먹기좋게 손질된 낙지 (500g)', '9980', 'FS-0002', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FS-0003', 'Fish', '새우', '[팸쿡][냉동] 싱싱 손질새우 300g (20미 내외)', '8900', 'FS-0003', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FS-0004', 'Fish', '꽃게', '[해동][국산] 꽃게 (100g)', '990', 'FS-0004', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FS-0005', 'Fish', '광천김', '맛있다! 파래김 광천김 100g (20g*5)', '7980', 'FS-0005', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FS-0006', 'Fish', '김자반', '쉽게 뿌려먹는 김가루 150g', '7480', 'FS-0006', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FS-0007', 'Fish', '훈제연어', '[냉동][노르웨이] 노브랜드 노르웨이 훈제연어 (180g/팩)', '8980', 'FS-0007', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FS-0008', 'Fish', '참치회', '[냉동][원양산] 사조 참치회 (기획) (200g*2)', '10800', 'FS-0008', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FS-0009', 'Fish', '해물모듬', '[냉동] 해물모둠 (1kg/팩)', '13980', 'FS-0009', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FS-0010', 'Fish', '갈치', '[해동][국산] 제주 은갈치 (대, 마리)', '6200', 'FS-0010', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FZ-0001', 'Frozen', '군만두', '노브랜드 군만두 1000g', '4980', 'FZ-0001', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FZ-0002', 'Frozen', '감자튀김', '피코크 케이준프라이 700g', '8980', 'FZ-0002', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FZ-0003', 'Frozen', '돈가스', '노브랜드 바삭바삭 돈까스 500g', '6480', 'FZ-0003', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FZ-0004', 'Frozen', '치즈돈가스', '노브랜드통등심치즈돈까스450g', '7980', 'FZ-0004', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FZ-0005', 'Frozen', '닭강정', '노브랜드 매콤 달콤 닭강정600g', '7880', 'FZ-0005', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('FZ-0006', 'Frozen', '도토리전병', '[피코크] 만두연구소 도토리전병 600g', '6980', 'FZ-0006', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0001', 'Meat', '닭가슴살', '노브랜드 [냉동] 닭가슴살 (1,000g)', '7980', 'MT-0001', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0002', 'Meat', '돼지고기 앞다리살', '[더느림+] 무항생제 앞다리 (100g)', '1880', 'MT-0002', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0003', 'Meat', '닭가슴살 스테이크', 'CJ 더건강한 닭가슴살 직화 스테이크 100g', '2280', 'MT-0003', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0004', 'Meat', '돼지고기 목심', '국내산 목심 구이용 (100g)', '2580', 'MT-0004', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0005', 'Meat', '냉동 닭안심', '[노브랜드][냉동] 닭안심 (1,000g)', '7980', 'MT-0005', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0006', 'Meat', '마늘 오리불고기', '[노브랜드][냉동] 마늘 오리불고기 (300g)', '6980', 'MT-0006', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0007', 'Meat', '부채살 찹스테이크', '[노브랜드][냉동] 부채살 찹스테이크 (300g)', '7980', 'MT-0007', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0008', 'Meat', '훈제오리', '자연주의 허니 로스팅 소스 훈제오리 200gx2', '10980', 'MT-0008', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0009', 'Meat', '한우 국거리', '한우 국거리 1등급 (100g) (팩)', '5380', 'MT-0009', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0010', 'Meat', '양념 소불고기', '[냉장] 호주산 양념 소불고기 600g', '17500', 'MT-0010', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0011', 'Meat', '척아이롤 샤브샤브', '[냉동][미국산] 소스와 육수가 들어있는 척아이롤 샤브샤브 (500g)', '16800', 'MT-0011', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0012', 'Meat', '닭볶음탕용 닭고기', '마니커무항생제닭볶음탕용1000g', '9800', 'MT-0012', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('MT-0013', 'Meat', '제육볶음', '[냉장][김해축협] 한돈 고추장 제육볶음 1,000g', '19900', 'MT-0013', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0001', 'Sauce', '굴소스', '노브랜드 굴소스 490g', '3580', 'SC-0001', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0002', 'Sauce', '다진마늘', '냉동 다진마늘 400g', '7900', 'SC-0002', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0003', 'Sauce', '진간장', '샘표 진간장금F3 500ml', '4030', 'SC-0003', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0004', 'Sauce', '국간장', '[샘표] 국간장 860ml', '6370', 'SC-0004', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0005', 'Sauce', '토마토케찹', '[오뚜기] 토마토케찹 300g', '2180', 'SC-0005', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0006', 'Sauce', '마요네즈', '오뚜기 골드 마요네즈 300g', '3950', 'SC-0006', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0007', 'Sauce', '허니 머스타드 소스', '[오뚜기] 허니 머스타드 소스 265g', '2980', 'SC-0007', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0008', 'Sauce', '하얀설탕', '[백설] 하얀설탕 (1kg)', '2330', 'SC-0008', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0009', 'Sauce', '가는소금', '[청정원] 순수천혜염 천일염 가는소금 500g', '4280', 'SC-0009', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0010', 'Sauce', '맛소금', '[대상] 미원 맛소금 1kg', '4520', 'SC-0010', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0011', 'Sauce', '볶음참깨', '노브랜드 볶음참깨 1kg', '11480', 'SC-0011', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0012', 'Sauce', '허브솔트', 'CJ백설 허브맛솔트 50g(오리지널)', '3050', 'SC-0012', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0013', 'Sauce', '후추', '청정원 요리순후추 30g', '2980', 'SC-0013', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0014', 'Sauce', '알룰로스', '큐원 트루스위트 알룰로스 350G', '9480', 'SC-0014', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0015', 'Sauce', '들깨가루', '[성진] 들깨가루 400g', '10500', 'SC-0015', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SC-0016', 'Sauce', '허브믹스', '피코크 이탈리안허브믹스 21g', '4180', 'SC-0016', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SI-0001', 'Side dish', '김치', '새벽팜 묵은지 2kg 3kg 5kg 10kg 국내산 100% 전라도김치 참매실 새벽김치', '14500', 'SI-0001', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SI-0002', 'Side dish', '찜닭', '[냉장][강화肉식] 간장 찜닭 700g (350g*2ea)', '14500', 'SI-0002', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SI-0003', 'Side dish', '메추리알 장조림', '노브랜드 정성담은 메추리알 장조림400g', '3680', 'SI-0003', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SI-0004', 'Side dish', '양념깻잎', '노브랜드 정성담은 양념깻잎 200g', '4680', 'SI-0004', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SI-0005', 'Side dish', '오이지', '풀무원 오이지500g', '5450', 'SI-0005', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SI-0006', 'Side dish', '오징어채볶음', '오징어채볶음 100g', '5580', 'SI-0006', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SI-0007', 'Side dish', '소고기 장조림', 'CJ 비비고 소고기 장조림 125g', '3680', 'SI-0007', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SI-0008', 'Side dish', '단호박 샐러드', '[피코크] 크랜 베리 단호박 샐러드 500g', '7980', 'SI-0008', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SI-0009', 'Side dish', '에그 포테이토 샐러드', '[피코크] 에그 포테이토 샐러드 500g', '7980', 'SI-0009', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SI-0010', 'Side dish', '베이컨 맥앤치즈', '베이컨맥앤치즈 248g', '4980', 'SI-0010', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SN-0001', 'Snack', '크림빵', '삼립 정통크림빵 3입 240g', '4180', 'SN-0001', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SN-0002', 'Snack', '감자칩', '노브랜드 감자칩 사워크림&어니언 160g', '1480', 'SN-0002', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SN-0003', 'Snack', '다크초콜릿', '노브랜드 다크초콜릿 90g', '1280', 'SN-0003', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SN-0004', 'Snack', '밀크초콜릿', '노브랜드 밀크초콜릿90g', '1280', 'SN-0004', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SN-0005', 'Snack', '단백질바', '노브랜드 단백질바미니 224 g', '4980', 'SN-0005', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SN-0006', 'Snack', '두부과자', '노브랜드 두부과자 112g', '1080', 'SN-0006', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SN-0007', 'Snack', '팝콘', '노브랜드 버터&솔트 팝콘 100 g', '1280', 'SN-0007', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SN-0008', 'Snack', '나쵸칩', '노브랜드 나쵸칩 체다치즈맛 155 g', '1980', 'SN-0008', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('SN-0009', 'Snack', '초코 웨이퍼롤', '노브랜드 초코 웨이퍼롤 115g', '1180', 'SN-0009', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('VG-0001', 'Vegetable', '양배추', '한끼에 하나씩 양배추 (통)', '3490', 'VG-0001', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('VG-0002', 'Vegetable', '콩나물', 'CJ제일제당 행복한콩 깨끗한콩나물 380g', '1880', 'VG-0002', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('VG-0003', 'Vegetable', '순두부', 'CJ 행복한콩 고소한 순두부 350g*2', '2180', 'VG-0003', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('VG-0004', 'Vegetable', '연두부', '풀무원 국산특등급 네컵 연두부 360g', '2800', 'VG-0004', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('VG-0005', 'Vegetable', '봄동', '베타후레쉬 봄동 (500g)', '3980', 'VG-0005', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('VG-0006', 'Vegetable', '미니 파프리카', '미니 파프리카 (200g/봉)', '5980', 'VG-0006', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('VG-0007', 'Vegetable', '자색양파', '자색양파 (1kg/봉)', '5980', 'VG-0007', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('VG-0008', 'Vegetable', '흙대파', '파머스픽 흙대파 (봉)', '2980', 'VG-0008', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('VG-0009', 'Vegetable', '팽이버섯', '파머스픽 팽이버섯 (3입)', '1980', 'VG-0009', '99');
insert into goods (gCode, gCategory, gName, gContent, gPrice, gImage, stock) values ('VG-0010', 'Vegetable', '깻잎', '하루채소 깻잎', '990', 'VG-0010', '99');

commit;