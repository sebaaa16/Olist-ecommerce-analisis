-- OBJETIVO: Analizar la evolución histórica de las ventas.
-- Descripción: Agrupa el total facturado por mes y año para identificar tendencias de crecimiento y estacionalidad en el marketplace.
-- Tabla principal: olist_orders_dataset

select o.order_purchase_timestamp,oi.price from orders o
inner join order_items oi
on o.order_id=oi.order_id
LIMIT 10;

select 
date_trunc('month',o.order_purchase_timestamp)as mes,
sum(oi.price) AS total_vendido
from orders o
join order_items oi on o.order_id=oi.order_id
group by mes
order by mes;





