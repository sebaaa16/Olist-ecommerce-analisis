-- OBJETIVO: Entender el comportamiento de compra según la hora del día.
-- Descripción: Extrae la hora de la marca de tiempo de los pedidos para identificar los momentos de mayor tráfico y ventas.
-- Tabla principal: olist_orders_dataset
SELECT 
    EXTRACT(HOUR FROM order_purchase_timestamp) AS hora_del_dia,
    COUNT(order_id) AS total_pedidos
FROM orders
GROUP BY hora_del_dia
ORDER BY hora_del_dia ASC;


