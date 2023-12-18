create table ORDERS
(
    id SERIAL NOT NULL PRIMARY KEY,
    product_name VARCHAR(255),
    date Date,
    amount INT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
    );

