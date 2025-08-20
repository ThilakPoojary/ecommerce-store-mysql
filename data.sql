USE ecommerce_store;

-- Insert Categories
INSERT INTO Category (category_name) VALUES 
('Electronics'), ('Fashion'), ('Books');

-- Insert Products
INSERT INTO Product (product_name, price, stock_quantity, category_id) VALUES
('Gaming Laptop', 75000, 8, 1),
('Wireless Earbuds', 4500, 30, 1),
('Hoodie', 1200, 40, 2),
('Fiction Novel', 450, 70, 3);

-- Insert Customers
INSERT INTO Customer (full_name, email, phone_number) VALUES
('Alice Johnson', 'alice.j@example.com', '9876543210'),
('Bob Smith', 'bob.smith@example.com', '9123456780');

-- Insert Orders
INSERT INTO CustomerOrder (customer_id, order_date) VALUES
(1, '2025-08-20'),
(2, '2025-08-21');

-- Insert Order Items
INSERT INTO OrderItem (order_id, product_id, quantity) VALUES
(1, 1, 1),   -- Alice bought 1 Gaming Laptop
(1, 3, 2),   -- Alice bought 2 Hoodies
(2, 2, 1),   -- Bob bought 1 Wireless Earbuds
(2, 4, 3);   -- Bob bought 3 Fiction Novels
