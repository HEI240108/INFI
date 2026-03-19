CREATE TABLE categories (
    id int PRIMARY KEY NOT NULL,
    name text NOT NULL
);

CREATE TABLE products (
    id int PRIMARY KEY,
    name text,
    price int CHECK (price > 0),
    category_id int,
    CONSTRAINT fk_category_id
    FOREIGN KEY (category_id)
    REFERENCES categories(id)
);