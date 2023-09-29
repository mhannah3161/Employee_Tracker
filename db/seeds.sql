INSERT INTO department_id (dept_name)
VALUES ("Front_End"),
("Back_End"),
("Managment"),
("Milwork"),
("Appliaces"),
("Lumber"),
("Garden"),
("Paint"),
("Flooring");

INSERT INTO employee_role (title, salary, dept_id)
VALUES ("CSA", 15.50, 1),
("Loader", 16.00, 1),
("Team_Lead", 18.00, 1),
("Specialist", 20.00, 1),
("PRO_Specailist", 23.00, 1),
("Supervisor", 25.00, 1),
("Keyed_Supervisor", 27.00, 1),
("ASM", 32.00, 1),
("SM", 40.00, 1);


INSERT INTO employee_id (first_name, last_name, role_id, manager_id)
VALUES ("Michael", "Hannah", 1, 1),
("Greggory", "Lipman", 1, 1),
("Rilee", "DamBrosia", 1, 1),
("Sean", "Calhoune", 1, 1),
("Peter", "Parker", 1, 1),
("Bruce", "Wayne", 1, 1);
-- INSERT INTO book_prices (price)
-- VALUES (1),
--        (2),
--        (5),
--        (10),
--        (15);

-- INSERT INTO favorite_books (book_name, in_stock, book_price)
-- VALUES ("The Great Gatsby", true, 1),
--        ("Huckleberry Finn", true, 3),
--        ("100 Years of Solitude", false, 5),
--        ("Things Fall Apart", false, 1),
--        ("Crime and Punishment", true, 2),
--        ("Moby Dick", true, 4),
--        ("Decameron", false, 1);
