-- @block
INSERT INTO categories (id_category, name, level, has_children, has_items) VALUES ("800", "stories", 1, TRUE, FALSE);
INSERT INTO categories (id_category, name, level, has_children, has_items) VALUES ("810", "fictional stories", 2, TRUE, FALSE);
INSERT INTO categories (id_category, name, level, has_children, has_items) VALUES ("814", "fictional stories", 3, FALSE, TRUE);


-- @block
UPDATE categories SET id_supercategory = "810" WHERE id_category = "814";
UPDATE categories SET id_supercategory = "800" WHERE id_category = "810";

-- @block
INSERT INTO books (title, id_category) VALUES ('Ogniem i mieczem', '814');  -- Wstawianie rekordu

-- UPDATE books SET minimum_age = 16 WHERE id = 123 -- Aktualizowanie rekordu

-- DELETE FROM books WHERE id = 124 -- Usuwanie rekordu



-- INSERT INTO clients (name, surname, PESEL) VALUES ('Anna', 'Krakowska', '03262602678') -- Tworzenie klienta

-- UPDATE clients SET surname = 'Wołodyjowska' WHERE PESEL = '03262602678' -- Aktualizowanie danych klienta


-- SELECT * FROM books WHERE books.title = 'Ogniem i mieczem' -- Wyszukanie książki po tytule

-- select * from copies left join rentals on copies.id=rentals.id_copy where rentals.id is null; -- Wyszukanie dostępnych kopii książek


-- select clients.name, books.title from clients -- Wyszukanie wypożyczeń klienta
-- join rentals on rentals.id_client = clients.id
-- join copies on copies.id = rentals.id_copy
-- join books on books.id = copies.id_book
-- where clients.PESEL like '03262602678';