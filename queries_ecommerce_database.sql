
-- Get all orders for a specific customer with order details
SELECT o.order_id, p.product_name, oi.quantity, oi.price, o.order_date
FROM Orders o
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
WHERE o.customer_id = 456;

-- Calculate the total revenue generated
SELECT SUM(oi.quantity * oi.price) AS total_revenue
FROM OrderItems oi;
