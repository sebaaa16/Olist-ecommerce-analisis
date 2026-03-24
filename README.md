# 📊 Dashboard de Performance E-commerce: Análisis Olist Brasil

## 🎯 Objetivo del Proyecto
Transformar un dataset de más de 100,000 pedidos en una herramienta interactiva para la toma de decisiones estratégicas. 
El enfoque principal fue realizar un proceso de **extracción selectiva mediante SQL** y responder a preguntas críticas sobre la salud operativa y comercial del marketplace.

## 📂 Recursos del Proyecto
* **Dataset Utilizado:** https://github.com/sebaaa16/Olist-ecommerce-analisis/tree/main/Data
* **Herramientas:** PostgreSQL (pgAdmin 4), Power BI Desktop.
* **Técnicas:** Consultas SQL (Joins, Agregaciones), Modelado de datos.

## ❓ Preguntas de Negocio Resueltas (KPIs)
Siguiendo un enfoque de análisis de datos profesional, el dashboard responde a:

1.  **Salud Financiera (KPIs):** ¿Cuál es el total de Ventas, la cantidad de Pedidos y el Ticket Promedio?
    * *Solución:* Implementación de **Cards (Tarjetas)** dinámicas.
2.  **Rendimiento por Categoría:** ¿Qué categorías dominan el mercado y cuáles generan más ingresos?
    * *Solución:* **Gráfico de barras agrupadas** para contrastar el volumen de ventas por categoría.
3.  **Análisis Geográfico:** ¿Cómo se distribuyen los pedidos a lo largo del territorio nacional brasileño?
    * *Solución:* **Mapa de burbujas** titulado "Distribución geográfica de ventas por estado".
4.  **Evolución Temporal:** ¿Cómo han crecido las ventas mes a mes y en qué horarios hay mayor actividad?
    * *Solución:* **Gráfico de líneas** para tendencia mensual y **Gráfico de áreas** para identificar horas pico de compra.

## 🖼️ Dashboard Final
Aca podes ver el resultado de la visualización:

https://github.com/sebaaa16/Olist-ecommerce-analisis/blob/main/Img/Dashboard.PNG

## 🛠️ Mi Proceso de Trabajo (SQL & ETL)
A diferencia de una importación simple, optimicé el modelo de datos desde la fuente para asegurar la exactitud y velocidad del reporte:

* **Extracción con SQL:** En lugar de cargar tablas masivas, desarrollé **5 scripts independientes** en PostgreSQL para filtrar, transformar y agrupar los datos necesarios (disponibles en la carpeta `/sql`).
* **Limpieza y Tipado:** Ajusté formatos de fecha y monedas, asegurando que algunas columnas fueran tratadas como valores numéricos precisos.
* **Procesamiento de KPIs:** Calculé métricas fundamentales como el Ticket Promedio y Totales de Venta directamente en el motor de base de datos para optimizar el rendimiento del tablero.

## 💡 Insights Clave
1. **Dominio Geográfico:** El estado de **São Paulo** concentra el mayor volumen de facturación, lo que valida la importancia de la logística centralizada en el Sudeste.
2. **Rentabilidad por Categoría:** Se identificaron las categorías líderes en **ingresos totales**, permitiendo priorizar el inventario y las campañas de marketing en los productos de mayor impacto financiero.
3. **Comportamiento de Compra:** Se detectó una "ola" de pedidos que alcanza su pico máximo durante la tarde y noche, permitiendo optimizar pautas publicitarias digitales.
4. **Salud Financiera:** El análisis permitió establecer un **Ticket Promedio** de referencia, fundamental para medir la efectividad de futuras estrategias de aumento de ventas.
5. **Optimización de Inventario:** Gracias al gráfico de evolución temporal, se detectaron los meses con mayor demanda estacional, facilitando la planificación de stock.

---
**Desarrollado por Sebastian Mayorga - Junior Data Analyst**
