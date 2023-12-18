create table CUSTOMERS
(
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(25),
    surname VARCHAR(25),
    age INT,
    phone_number VARCHAR(15)
    );
