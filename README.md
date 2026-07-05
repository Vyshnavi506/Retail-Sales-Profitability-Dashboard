# Retail-Sales-Profitability-Dashboard
SQL + Power BI analysis of Retail Sales &amp; Profitability Dashboard  
# Retail Sales & Profitability Dashboard 

## Business Problem
The business is generating strong overall sales ($2.30M) but management suspects profit isn't scaling with revenue. The question: which categories, sub-categories, and discounting practices are eroding profit despite healthy sales, and where should pricing/discount policy change?

## Approach
- Loaded and cleaned the Superstore dataset (9,994 orders, 21 columns) in SQL
- Wrote SQL queries to compute profit margin by category, sub-category, region, and discount band
- Identified loss-making sub-categories and quantified the relationship between discount level and profitability
- Built a Power BI dashboard with drill-through from category → sub-category → state
- Delivered discount-policy recommendations targeted at the specific loss-making segments

## Key Insight
Overall profit margin is 12.5% on $2.30M in sales, but this hides a sharp split: Furniture carries only a 2.5% margin versus 17.0% for Office Supplies and 17.4% for Technology. Within Furniture, Tables lose money outright — -8.6% margin on $206,966 in sales (a $17,725 loss), and Bookcases also lose money (-3.0% margin). The clearest driver is discounting: orders with no discount run a 29.5% margin, orders with a low discount (0–20%) drop to 11.9%, and orders with a high discount (>20%) turn negative at -37.3% margin — that band alone lost $135,376 despite generating $362,770 in sales. Tables specifically carry a 26.1% average discount, which explains their loss. At the state level, Texas, Ohio, and Pennsylvania are the three biggest profit drains despite meaningful sales volume.

## Recommendation
Cap or restructure discounts above 20% — this band is actively destroying profit, not just compressing margin. Specifically review discount authorization on Tables and Bookcases, where deep discounting has pushed margins negative; a modest reduction in discount depth (or bundling instead of price cuts) would likely convert these from loss-makers to breakeven or better. Separately, investigate Texas, Ohio, and Pennsylvania — high sales, negative profit suggests either aggressive regional discounting or cost/logistics issues specific to those states.

## Tools Used
SQL (MySQL Workbench), Power BI Desktop

## Dashboard Preview
![dashboard](dashboard-screenshot.png)

## Dataset Source
Sample Superstore dataset, 9,994 orders — widely used public retail dataset (Kaggle)
http://kaggle.com/datasets/konstantinognev/sample-superstorecsv
