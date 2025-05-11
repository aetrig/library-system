SELECT books.title, authors.name, authors.surname FROM books 
JOIN books_authors ON books.id = books_authors.id_book
JOIN authors ON books_authors.id_author = authors.id