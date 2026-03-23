-- OBJETIVO: Mapear la ubicación de los clientes.
-- Descripción: Cuenta el volumen de pedidos por ciudad y estado en Brasil para alimentar el mapa de calor del dashboard.
-- Tablas: olist_customers_dataset + olist_orders_dataset
SELECT 
    c.customer_city AS ciudad, 
    COUNT(o.order_id) AS cantidad_pedidos
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_city
ORDER BY cantidad_pedidos DESC
LIMIT 10;


