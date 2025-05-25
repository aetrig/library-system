-- INSERT INTO clients (id, name, surname, PESEL)
-- VALUES (13, "test", "test", "test");
-- INSERT INTO rentals (id_client, id_copy, date, deadline)
-- VALUES (13, 1, "2025-03-02", "2025-04-02");
DELETE FROM books_authors
WHERE id_book = 4
	AND id_author = 5