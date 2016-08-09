DROP TABLE shoos;

CREATE TABLE shoos(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  address VARCHAR(255),
  size INT4,
  quantity INT2
);