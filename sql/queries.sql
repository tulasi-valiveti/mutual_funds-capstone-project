

# -----------------------------
# 1. TOP SIP INFLOW MONTHS
# -----------------------------
q1 = 
SELECT month, sip_inflow_crore
FROM fact_monthly_sip
ORDER BY sip_inflow_crore DESC
LIMIT 5;


# -----------------------------
# 2. SIP YOY GROWTH TREND
# -----------------------------
q2 = 
SELECT month, yoy_growth_pct
FROM fact_monthly_sip
ORDER BY month;


# -----------------------------
# 3. CATEGORY WISE INFLOWS
# -----------------------------
q3 = 
SELECT category, SUM(net_inflow_crore) AS total_inflow
FROM fact_category_inflows
GROUP BY category
ORDER BY total_inflow DESC;


# -----------------------------
# 4. MONTHLY CATEGORY INFLOW TREND
# -----------------------------
q4 = 
SELECT month, category, net_inflow_crore
FROM fact_category_inflows
ORDER BY month;


# -----------------------------
# 5. INDUSTRY FOLIO BREAKDOWN (LATEST AVAILABLE)
# -----------------------------
q5 = 
SELECT *
FROM fact_industry_folio
ORDER BY month DESC
LIMIT 1;


# -----------------------------
# 6. TOP STOCK HOLDINGS BY WEIGHT
# -----------------------------
q6 = 
SELECT stock_name, SUM(weight_pct) AS total_weight
FROM fact_portfolio_holdings
GROUP BY stock_name
ORDER BY total_weight DESC
LIMIT 10;


# -----------------------------
# 7. TOP SECTORS IN PORTFOLIO
# -----------------------------
q7 = 
SELECT sector, SUM(weight_pct) AS total_weight
FROM fact_portfolio_holdings
GROUP BY sector
ORDER BY total_weight DESC;


# -----------------------------
# 8. BENCHMARK INDEX AVERAGE VALUE
# -----------------------------
q8 = 
SELECT index_name, AVG(close_value) AS avg_close
FROM dim_benchmark
GROUP BY index_name;


# -----------------------------
# 9. NAV TREND BY FUND
# -----------------------------
q9 = 
SELECT amfi_code, AVG(nav) AS avg_nav
FROM fact_nav
GROUP BY amfi_code
ORDER BY avg_nav DESC;


# -----------------------------
# 10. TRANSACTIONS BY TYPE
# -----------------------------
q10 = 
SELECT transaction_type, COUNT(*) AS total_transactions
FROM fact_transactions
GROUP BY transaction_type
ORDER BY total_transactions DESC;