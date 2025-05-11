DROP DATABASE IF EXISTS system_biblioteczny;

CREATE DATABASE IF NOT EXISTS system_biblioteczny;
USE system_biblioteczny;

CREATE TABLE categories (
  id_category varchar(50) NOT NULL,
  id_supercategory varchar(50) NULL,
  name VARCHAR(50) NOT NULL,
  -- level INT NOT NULL,
  has_children BOOL NOT NULL,
  has_items BOOL NOT NULL,
  PRIMARY KEY (id_category)
);

CREATE TABLE books (
  id int AUTO_INCREMENT NOT NULL,
  title VARCHAR(50) NOT NULL,
  id_category VARCHAR(3) NOT NULL,
  minimum_age INT,
  PRIMARY KEY (id)
);

CREATE TABLE copies (
  id INT AUTO_INCREMENT NOT NULL,
  id_inventory VARCHAR(6) NOT NULL,
  id_book INT NOT NULL ,
  id_publisher INT NOT NULL,
  year_published INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE clients (
  id int AUTO_INCREMENT NOT NULL,
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(50) NOT NULL,
  PESEL VARCHAR(11) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE authors (
  id int AUTO_INCREMENT NOT NULL,
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE rentals (
    id int AUTO_INCREMENT NOT NULL,
    id_client INT NOT NULL,
    id_copy INT NOT NULL,
    date TIMESTAMP NOT NULL,
    deadline TIMESTAMP NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE publishers(
    id int AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE books_authors(
    id_book INT NOT NULL,
    id_author INT NOT NULL
);

-- @block
ALTER TABLE categories 
ADD CONSTRAINT FK_id_supercategory FOREIGN KEY (id_supercategory) REFERENCES categories(id_category);

-- @block
ALTER TABLE books
ADD CONSTRAINT FK_id_category FOREIGN KEY (id_category) REFERENCES categories(id_category);

ALTER TABLE copies
  ADD CONSTRAINT FK_id_book FOREIGN KEY (id_book) REFERENCES books(id),
  ADD CONSTRAINT FK_id_publisher FOREIGN KEY (id_publisher) REFERENCES publishers(id);

ALTER TABLE rentals
    ADD CONSTRAINT FK_id_copy FOREIGN KEY (id_copy) REFERENCES copies(id),
    ADD CONSTRAINT FK_id_client FOREIGN KEY (id_client) REFERENCES clients(id);
    
ALTER TABLE books_authors
    ADD CONSTRAINT FK_id_book_authors FOREIGN KEY (id_book) REFERENCES books(id),
    ADD CONSTRAINT FK_id_author FOREIGN KEY (id_author) REFERENCES authors(id);