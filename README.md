# 🍽️ Análisis de Datos de Restaurante con SQL

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![Status](https://img.shields.io/badge/status-completed-green.svg)

## 📊 Descripción del Proyecto

Análisis detallado del rendimiento de un menú de restaurante utilizando SQL. El proyecto explora dos tablas principales (`menu_items` y `order_details`) para obtener insights sobre precios, patrones de pedidos y preferencias de los clientes.

## 📈 Análisis Realizados

### 1. Exploración de la tabla `menu_items`
```sql
-- Número total de artículos en el menú
SELECT COUNT(menu_item_id) FROM menu_items;
-- Resultado: 32 Items

-- Artículo más caro y más barato
SELECT item_name, price 
FROM menu_items 
ORDER BY price DESC;
-- Más caro: Shrimp Scampi ($19.95)
-- Más barato: Edamame ($5.00)
```

### 2. Análisis de Pedidos
- Total de pedidos únicos: 5,370
- Rango de fechas: 01/01/2023 - 31/03/2023
- Primer pedido: 31/03/2023 11:22 (Orden #5309)
- Último pedido: 01/01/2023 11:38 (Orden #1)

### 3. Top Ventas por Categoría

#### Categoría Asiática
- Edamame: 620 órdenes
- Korean Beef Bowl: 588 órdenes

#### Categoría Americana
- Hamburger: 622 órdenes
- Cheeseburger: 583 órdenes

#### Categoría Mexicana
- Steak Torta: 489 órdenes
- Chips & Salsa: 461 órdenes

#### Categoría Italiana
- Spaghetti & Meatballs: 470 órdenes
- Eggplant Parmesan: 420 órdenes

## 💡 Hallazgos Clave

1. **Día con Mayores Ventas**
   - Fecha: 01/02/2023
   - Total: $2,396.35

2. **Día con Menores Ventas**
   - Fecha: 22/03/2023
   - Total: $1,016.90

3. **Categorías Más Exitosas**
   - La comida asiática lidera las ventas a pesar de tener precios más altos
   - La hamburguesa mantiene ventas consistentes con precio intermedio

## 📊 Consultas SQL Destacadas

```sql
-- Análisis de ventas por fecha
SELECT order_date, sum(price) as "Total"
FROM order_details as o
LEFT JOIN menu_items as m 
ON m.menu_item_id = o.item_id
GROUP BY order_date
ORDER BY "Total" DESC;

-- Top platillos por categoría
SELECT 
    COUNT(o.order_details_id) as "Numero de ordenes", 
    m.item_name, 
    m.category
FROM menu_items as m
JOIN order_details as o
ON m.menu_item_id = o.item_id
GROUP BY 2,3
ORDER BY "Numero de ordenes" DESC;
```

## 🎯 Recomendaciones

1. **Mantener Fortalezas**
   - Conservar y potencialmente expandir la oferta de comida asiática
   - Mantener hamburguesas como producto ancla

2. **Optimización de Menú**
   - Considerar eliminar platillos con bajo rendimiento
   - Introducir nuevos platillos a manera de prueba
   - Enfoque en categorías de alto rendimiento

3. **Estrategia de Precios**
   - La estructura actual de precios muestra buena aceptación
   - Los platos premium en la categoría asiática tienen buen desempeño

## 📌 Conclusiones

El análisis revela una clara preferencia por la gastronomía asiática, a pesar de sus precios más elevados. Las hamburguesas mantienen un rendimiento sólido como opción tradicional. Se recomienda una renovación selectiva del menú, eliminando opciones de bajo rendimiento e introduciendo nuevas propuestas basadas en las tendencias observadas.

## 🛠️ Herramientas Utilizadas
- PostgreSQL
- Consultas SQL avanzadas (JOIN, GROUP BY, agregaciones)
- Análisis de datos temporales

---
📊 Análisis realizado con PostgreSQL
