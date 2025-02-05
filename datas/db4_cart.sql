use team5;

CREATE TABLE cart (
  num int NOT NULL AUTO_INCREMENT,
  userid varchar(20) DEFAULT NULL,
  code varchar(20) NOT NULL,
  amount int NOT NULL,
  cartDate date DEFAULT (curdate()),
  PRIMARY KEY (num),
  KEY cart_userid_fk (userid),
  KEY cart_code_fk (code),
  CONSTRAINT cart_code_fk FOREIGN KEY (code) REFERENCES goods (code) ON DELETE CASCADE,
  CONSTRAINT cart_userid_fk FOREIGN KEY (userid) REFERENCES member (userid) ON DELETE CASCADE
);