-- OBJETIVO: Calcular el valor medio de cada transacción.
-- Descripción: Determina cuánto gasta un cliente en promedio por pedido,métrica clave para medir la rentabilidad por usuario.
-- Tablas: olist_order_items_dataset
SELECT 
    ROUND(AVG(subconsulta.total_por_pedido)::numeric, 2) AS ticket_promedio
FROM (
    SELECT order_id, SUM(price) AS total_por_pedido
    FROM order_items
    GROUP BY order_id
) AS subconsulta;
