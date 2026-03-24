# 📊 Dashboard de Performance E-commerce: Análisis Olist Brasil

## 🎯 Objetivo del Proyecto
Transformar un dataset transaccional complejo de más de 100,000 pedidos en una herramienta interactiva para la toma de decisiones estratégicas. El enfoque principal fue realizar un proceso de **extracción selectiva mediante SQL** y responder a preguntas críticas sobre la salud operativa y comercial del marketplace.

## 📂 Recursos del Proyecto
* **Dataset Utilizado:** [Olist E-commerce Public Dataset (Kaggle)](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
* **Herramientas:** PostgreSQL (pgAdmin 4), Power BI Desktop, DAX.
* **Técnicas:** Consultas SQL avanzadas (Joins, Agregaciones), Modelado de datos y Diseño de UI/UX.

## ❓ Preguntas de Negocio Resueltas (KPIs)
Siguiendo un enfoque de análisis de datos profesional, el dashboard responde a:

1.  **Salud Financiera (KPIs):** ¿Cuál es el total de Ventas, la cantidad de Pedidos y el Ticket Promedio?
    * *Solución:* Implementación de **Cards (Tarjetas)** dinámicas con medidas DAX.
2.  **Rendimiento por Categoría:** ¿Qué categorías dominan el mercado y cuáles generan más ingresos?
    * *Solución:* **Gráfico de barras agrupadas** para contrastar el volumen de ventas por categoría.
3.  **Análisis Geográfico:** ¿Cómo se distribuyen los pedidos a lo largo del territorio nacional brasileño?
    * *Solución:* **Mapa de burbujas** titulado "Distribución geográfica de ventas por estado".
4.  **Evolución Temporal:** ¿Cómo han crecido las ventas mes a mes y en qué horarios hay mayor actividad?
    * *Solución:* **Gráfico de líneas** para tendencia mensual y **Gráfico de áreas** para identificar horas pico de compra.

## 🖼️ Dashboard Final
Aquí puedes ver el resultado de la visualización:

![Vista del Tablero](img/dashboard.png)

## 🛠️ Mi Proceso de Trabajo (SQL & ETL)
A diferencia de una importación simple, optimicé el modelo de datos desde la fuente para asegurar la exactitud y velocidad del reporte:

* **Extracción con SQL:** En lugar de cargar tablas masivas, desarrollé **5 scripts independientes** en PostgreSQL para filtrar y agrupar los datos necesarios (disponibles en la carpeta `/sql`).
* **Limpieza y Tipado:** Ajusté formatos de fecha y monedas, asegurando que columnas como `price` y `freight_value` fueran tratadas como valores numéricos precisos.
* **Cálculos DAX:** Creé medidas clave como:
    * `Ticket Promedio = DIVIDE(SUM(Ventas), COUNT(Pedidos))`
    * `Margen = DIVIDE(SUM('Sample - Superstore'[Profit]), SUM('Sample - Superstore'[Sales]))`
* **UI/UX:** Diseñé una distribución limpia con filtros superiores para permitir una navegación fluida por región, año y categoría.

## 💡 Insights Clave
1.  **Dominio Geográfico:** El estado de **São Paulo** concentra el mayor volumen de facturación, lo que valida la importancia de la logística centralizada en el Sudeste.
2.  **Comportamiento de Compra:** Se identificó una "ola" de pedidos que alcanza su pico máximo durante la tarde y noche, permitiendo optimizar campañas de marketing digital.
3.  **Salud Financiera:** El análisis permitió establecer un **Ticket Promedio** de referencia, fundamental para medir la efectividad de futuras estrategias de aumento de ventas.
4.  **Optimización de Inventario:** Gracias al gráfico de evolución temporal, se detectaron los meses con mayor demanda estacional, facilitando la planificación de stock.

---
**Desarrollado por Sebastian Mayorga - Junior Data Analyst**
