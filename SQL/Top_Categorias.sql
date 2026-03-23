-- OBJETIVO: Identificar las categorías de productos más vendidas.
-- Descripción: Realiza un ranking de los productos que generan más ingresos, permitiendo priorizar el inventario y las campañas de marketing.
-- Tablas: olist_products_dataset + olist_order_items_dataset
SELECT 
    p.product_category_name AS categoria,
    ROUND(SUM(oi.price)::numeric, 2) AS ingresos_totales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY p.product_category_name
ORDER BY ingresos_totales DESC
LIMIT 5;

