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
VALUES (1, 1);
INSERT INTO rentals (id_client, id_copy, date, deadline)
VALUES (1, 4, "2025-03-02", "2025-04-02");
-- book with multiple authors --
INSERT INTO books (title, id_category, minimum_age)
VALUES ('Good Omens', '823', null);
INSERT INTO authors (name, surname)
VALUES ('Neil', 'Gaiman');
INSERT INTO authors (name, surname)
VALUES ('Terry', 'Pratchett');
INSERT INTO books_authors (id_book, id_author)
VALUES (3, 3);
INSERT INTO books_authors (id_book, id_author)
VALUES (3, 4);