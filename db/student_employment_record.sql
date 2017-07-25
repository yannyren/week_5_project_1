DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS companies;


CREATE TABLE companies (
id SERIAL8 PRIMARY KEY,
name VARCHAR(255),
location VARCHAR(255),
logo VARCHAR(255)
);

CREATE TABLE students (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  gender VARCHAR(255),
  cohort VARCHAR(255),
  graduation_date DATE,
  company_id INT REFERENCES companies(id)
);