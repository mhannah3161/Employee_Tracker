DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department_id(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dept_name VARCHAR(15) NOT NULL
);

CREATE TABLE employee_role(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(15) NOT NULL,
  salary DECIMAL NOT NULL,
  dept_id INT,
  FOREIGN KEY(dept_id)
  REFERENCES department_id(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE employee_id(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT,
  FOREIGN KEY (role_id)
    REFERENCES employee_role(id)
  ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (manager_id)
    REFERENCES employee_id(id)
    ON DELETE SET NULL 
    ON UPDATE CASCADE
);
