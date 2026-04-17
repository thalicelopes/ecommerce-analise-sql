CREATE TABLE customers (
    customer_id int IDENTITY(1,1) PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    created_at DATE
);

CREATE TABLE products (
    product_id int IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(100),
    price NUMERIC(10,2)
);

CREATE TABLE orders (
    order_id int IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(50),
	CONSTRAINT fk_orders_customers
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id int IDENTITY(1,1) PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price NUMERIC(10,2),

	CONSTRAINT fk_orders_items_orders
	FOREIGN KEY (order_id) REFERENCES orders(order_id),

	CONSTRAINT fk_orders_items_products
	FOREIGN KEY (product_id) REFERENCES products(product_id)
);