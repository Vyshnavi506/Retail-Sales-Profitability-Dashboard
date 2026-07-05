SELECT ROUND(SUM(Sales),2) AS total_sales,
       ROUND(SUM(Profit),2) AS total_profit,
       ROUND(SUM(Profit)/SUM(Sales)*100,2) AS overall_margin_pct
FROM superstore; 


SELECT Category,
       ROUND(SUM(Sales),2) AS total_sales,
       ROUND(SUM(Profit),2) AS total_profit,
       ROUND(SUM(Profit)/SUM(Sales)*100,2) AS margin_pct
FROM superstore
GROUP BY Category; 

SELECT `Sub-Category`,
       ROUND(SUM(Sales),2) AS total_sales,
       ROUND(SUM(Profit),2) AS total_profit,
       ROUND(SUM(Profit)/SUM(Sales)*100,2) AS margin_pct
FROM superstore
GROUP BY `Sub-Category`
ORDER BY total_profit ASC;

SELECT 
  CASE WHEN Discount = 0 THEN 'No Discount'
       WHEN Discount <= 0.2 THEN 'Low (0-20%)'
       ELSE 'High (>20%)' END AS discount_band,
  ROUND(SUM(Sales),2) AS total_sales,
  ROUND(SUM(Profit),2) AS total_profit,
  ROUND(SUM(Profit)/SUM(Sales)*100,2) AS margin_pct
FROM superstore
GROUP BY discount_band;
