DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employee_id(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT,
  FOREIGN KEY (role_id)
  REFERENCES employee_role(id)
  FOREIGN KEY (manager_id)
  REFERENCES employee_id(id)
);

CREATE TABLE employee_role(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(15) NOT NULL,
  salary DECIMAL NOT NULL,
  dept_id INT,
  FOREIGN KEY(dept_id)
  REFERENCES department_id(id)
  ON DELETE SET NULL
);

CREATE TABLE department_id (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
dept_name VARCHAR(15) NOT NULL,
);

-- DROP DATABASE IF EXISTS books_db;
-- CREATE DATABASE books_db;

-- USE books_db;

-- CREATE TABLE book_prices (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   price INT NOT NULL
-- );

-- CREATE TABLE favorite_books (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   book_name VARCHAR(30) NOT NULL,
--   in_stock BOOLEAN,
--   book_price INT,
--   FOREIGN KEY (book_price)
--   REFERENCES book_prices(id)
--   ON DELETE SET NULL
-- );

