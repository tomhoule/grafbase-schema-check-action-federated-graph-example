CREATE TABLE miso (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    origin VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT
);

CREATE TABLE supplier (
    supplier_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    contact_info TEXT,
    reliability_rating INT
);

CREATE TABLE purchase (
    purchase_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES miso(product_id),
    customer_id INT,
    quantity INT,
    purchase_date DATE
);

-- Insert sample data into `miso`
INSERT INTO miso (name, origin, price, stock_quantity)
VALUES ('Shiro Miso', 'Japan', 12.99, 50),
       ('Aka Miso', 'Japan', 15.49, 40);

-- Insert sample data into `supplier`
INSERT INTO supplier (name, contact_info, reliability_rating)
VALUES ('Miso Masters', 'info@misomasters.com', 5),
       ('FermentoWorld', 'contact@fermentoworld.com', 4);

-- Insert sample data into `purchase`
INSERT INTO purchase (product_id, customer_id, quantity, purchase_date)
VALUES (1, 101, 2, '2023-03-15'),
       (2, 102, 1, '2023-03-20');
