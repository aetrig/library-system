-- ### Słupy do bazy ### --
-- categories --
-- Najwyższa kategoria 000
INSERT INTO categories (
		id_category,
		id_supercategory,
		name,
		has_children,
		has_items
	)
VALUES (
		'000',
		null,
		'Computer science, information, and general works',
		1,
		0
	);
INSERT INTO categories (
		id_category,
		id_supercategory,
		name,
		has_children,
		has_items
	)
VALUES (
		'100',
		null,
		'Philosophy and psychology',
		1,
		0
	);
-- Kategoria niższa 005
INSERT INTO categories (
		id_category,
		id_supercategory,
		name,
		has_children,
		has_items
	)
VALUES (
		'005',
		'000',
		'Computer programming, programs, and data',
		1,
		0
	);
-- Kategoria niższa 030
INSERT INTO categories (
		id_category,
		id_supercategory,
		name,
		has_children,
		has_items
	)
VALUES (
		'030',
		'000',
		'Encyclopedias and books of facts',
		1,
		0
	);
-- Kategoria niższa 032
INSERT INTO categories (
		id_category,
		id_supercategory,
		name,
		has_children,
		has_items
	)
VALUES ('032', '030', 'Encyclopedias in English', 1, 0);
-- publishers -- 
INSERT INTO publishers (name)
VALUES ('Encyclopædia Britannica, Inc.');
INSERT INTO publishers (name)
VALUES ('Addison-Wesley Professional');
-- authors --
INSERT INTO authors (name, surname)
VALUES ('Bjarne', 'Stroustrup');
INSERT INTO authors (name, surname)
VALUES ('Colin', 'Macfarquhar');
-- books --
INSERT INTO books (title, id_category, minimum_age)
VALUES (
		'Programming : principles and practice using C++',
		'005',
		null
	);
INSERT INTO books (title, id_category, minimum_age)
VALUES ('Encyclopædia Britannica', '032', null);
-- copies --
INSERT INTO copies (
		id_book,
		id_publisher,
		id_inventory,
		year_published
	)
VALUES (1, 2, "TEST1", 1978);
INSERT INTO copies (
		id_book,
		id_publisher,
		id_inventory,
		year_published
	)
VALUES (1, 2, "TEST3", 1978);
INSERT INTO copies (
		id_book,
		id_publisher,
		id_inventory,
		year_published
	)
VALUES (1, 2, "TEST4", 1978);
INSERT INTO copies (
		id_book,
		id_publisher,
		id_inventory,
		year_published
	)
VALUES (2, 1, "TEST2", 2002);
-- clients --
INSERT INTO clients (name, surname, PESEL)
VALUES ('Jan', 'Kowalski', '02262505133');
INSERT INTO clients (name, surname, PESEL)
VALUES ('Anna', 'Nowak', '00222906666');
INSERT INTO books_authors (id_book, id_author)
VALUES (1, 1)