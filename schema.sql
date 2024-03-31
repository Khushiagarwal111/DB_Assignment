
 CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    descr TEXT,
    SKU VARCHAR(255),
    category_id INT NOT NULL REFERENCES product_category(id),
    inventory_id INT NOT NULL REFERENCES product_inventory(id),
     price DECIMAL,
     discount_id INT NOT NULL REFERENCES discount(id),
     created_at TIMESTAMP,
     modified_at TIMESTAMP,
     deleted_at TIMESTAMP
 );
  CREATE TABLE product_category (
  	id INT PRIMARY KEY,
  	name VARCHAR(255),
  	descr TEXT,     
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
 );
 CREATE TABLE product_inventory (
    id INT PRIMARY KEY,
    quantity INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
 );

CREATE TABLE discount (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    descr TEXT,
    discount_percent DECIMAL,
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);  
