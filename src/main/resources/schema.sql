create table if not exists CUSTOMERS
(
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(25),
    surname VARCHAR(25),
    age INT,
    phone_number VARCHAR(15)
);


create table if not exists ORDERS
(
    id SERIAL NOT NULL PRIMARY KEY,
    product_name VARCHAR(255),
    date Date,
    amount INT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);

insert into CUSTOMERS (name, surname, age, phone_number)
values ('Anton', 'Zzz', 31, '+70000000000');

insert into CUSTOMERS (name, surname, age, phone_number)
values ('Nikita', 'Yyy', 31, '+71111111111');

insert into CUSTOMERS (name, surname, age, phone_number)
values ('Alex', 'Xxx', 25, '+72222222222');

insert into ORDERS (product_name, date, amount, customer_id)
VALUES ('pc', current_date, 1, 1);

insert into ORDERS (product_name, date, amount, customer_id)
VALUES ('smartphone', current_date, 2, 2);

insert into ORDERS (product_name, date, amount, customer_id)
VALUES ('laptop', current_date, 2, 3);