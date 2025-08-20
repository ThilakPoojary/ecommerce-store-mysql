USE ecommerce_store;

-- 1. Show all products with categories
SELECT p.product_name, p.price, c.category_name
FROM Product p
JOIN Category c ON p.category_id = c.category_id;

-- 2. Show all orders with customer details
SELECT o.order_id, o.order_date, cu.full_name, cu.email
FROM CustomerOrder o
JOIN Customer cu ON o.customer_id = cu.customer_id;

-- 3. Calculate total sales per customer
SELECT cu.full_name, SUM(p.price * oi.quantity) AS total_spent
FROM Customer cu
JOIN CustomerOrder o ON cu.customer_id = o.customer_id
JOIN OrderItem oi ON o.order_id = oi.order_id
JOIN Product p ON oi.product_id = p.product_id
GROUP BY cu.full_name;

-- 4. Check low-stock products (less than 10 left)
SELECT product_name, stock_quantity 
FROM Product
WHERE stock_quantity < 10;
