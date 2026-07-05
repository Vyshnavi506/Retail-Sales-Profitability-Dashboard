# Retail-Sales-Profitability-Dashboard
SQL + Power BI analysis of Retail Sales &amp; Profitability Dashboard  
# Retail Sales & Profitability Dashboard 

## Business Problem
The business is generating strong overall sales ($2.30M) but management suspects profit isn't scaling with revenue. The question: which categories, sub-categories, and discounting practices are eroding profit despite healthy sales, and where should pricing/discount policy change?

## Approach
- Loaded and cleaned the Superstore dataset (9,994 orders) into MySQL
- Wrote SQL queries to compute profit margin by category, sub-category, and discount band
- Identified loss-making sub-categories and quantified the relationship between discount level and profitability
- Built a Power BI dashboard with category-level filtering to visualize the findings
- Delivered discount-policy recommendations targeted at the specific loss-making segments

## Key Insight
Overall profit margin is 12.47% on $2.30M in sales, but this hides a sharp split: Furniture carries only a 2% margin versus 17% for both Office Supplies and Technology. Within Furniture, Tables lose money outright (negative profit despite $0.21M in sales) and Bookcases are barely breakeven. The clearest driver is discounting: orders with no discount run a 30% margin, orders with a low discount (0–20%) drop to 12%, and orders with a high discount (>20%) turn negative at -37% margin.

## Recommendation
Cap or restructure discounts above 20% — this band is actively destroying profit, not just compressing margin. Specifically review discount authorization on Tables and Bookcases, where deep discounting has pushed margins negative; a modest reduction in discount depth (or bundling instead of price cuts) would likely convert these from loss-makers to breakeven or better. Separately, investigate Texas, Ohio, and Pennsylvania — high sales, negative profit suggests either aggressive regional discounting or cost/logistics issues specific to those states.

## Tools Used
SQL (MySQL Workbench), Power BI Desktop

## Dashboard Preview
<img width="1111" height="642" alt="Dashboard - screenshot" src="https://github.com/user-attachments/assets/e13c943a-6958-416e-9056-904d3181e513" />



## Dataset Source
Sample Superstore dataset, 9,994 orders — widely used public retail dataset (Kaggle)
http://kaggle.com/datasets/konstantinognev/sample-superstorecsv
