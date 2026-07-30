-- FILE: revenue_analysis.sql
-- Revenue trends and top products analysis

-- Avg Revenue By Month
SELECT DATE_FORMAT(order_date, '%M') as order_month, ROUND(AVG(sales),2) as avg_monthly_sales
FROM orders
GROUP BY order_month
ORDER BY order_month

-- Month-over-month(MoM) revenue growth
WITH monthly_revenue AS (
    SELECT
        DATE_FORMAT(order_date, '%M') as order_month,
        SUM(sales) AS revenue
    FROM orders
    GROUP BY order_month
)
SELECT
    order_month,
    revenue,
    LAG(revenue) OVER (ORDER BY order_month) AS prev_month_revenue,
    ROUND(
        (revenue - LAG(revenue) OVER (ORDER BY order_month))
        / LAG(revenue) OVER (ORDER BY order_month) * 100,
        2
    ) AS mom_growth_pct
FROM monthly_revenue
ORDER BY order_month;


-- Top 10 products by revenue
SELECT product_name, ROUND(SUM(sales), 2) AS total_revenue
FROM products p
JOIN orders o
ON o.product_id = p.product_id
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 10;

-- Revenue by region
SELECT region, ROUND(SUM(sales), 2) AS total_revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY region
ORDER BY total_revenue DESC;

.output
