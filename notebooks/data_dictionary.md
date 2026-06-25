# Mutual Fund Data Dictionary

## fact_monthly_sip

| Column | Data Type | Sample Values |
|--------|----------|--------------|
| month | str | 2022-01, 2022-02, 2022-03 |
| sip_inflow_crore | int64 | 11517, 11438, 12328 |
| active_sip_accounts_crore | float64 | 4.91, 4.93, 5.09 |
| new_sip_accounts_lakh | float64 | 9.1, 8.2, 10.5 |
| sip_aum_lakh_crore | float64 | 4.8, 4.85, 5.01 |
| yoy_growth_pct | object |  |

## fact_category_inflows

| Column | Data Type | Sample Values |
|--------|----------|--------------|
| month | str | 2024-04 |
| category | str | Large Cap, Mid Cap, Small Cap |
| net_inflow_crore | float64 | 2413.0, 3897.0, 3533.0 |

## fact_industry_folio

| Column | Data Type | Sample Values |
|--------|----------|--------------|
| month | str | 2022-01, 2022-04, 2022-07 |
| total_folios_crore | float64 | 13.26, 13.91, 13.85 |
| equity_folios_crore | float64 | 9.28, 9.74, 9.69 |
| debt_folios_crore | float64 | 1.86, 1.95, 1.94 |
| hybrid_folios_crore | float64 | 0.8, 0.83, 0.85 |
| others_folios_crore | float64 | 1.33, 1.39, 1.38 |

## fact_portfolio_holdings

| Column | Data Type | Sample Values |
|--------|----------|--------------|
| amfi_code | int64 | 119551 |
| stock_symbol | str | POWERGRID, HDFCBANK, GRASIM |
| stock_name | str | Power Grid Corporation, HDFC Bank Ltd, Grasim Industries Ltd |
| sector | str | Utilities, Banking, Diversified |
| weight_pct | float64 | 13.85, 11.19, 9.9 |
| market_value_cr | float64 | 737.09, 88.97, 208.45 |
| current_price_inr | float64 | 6011.08, 1074.65, 5964.59 |
| portfolio_date | str | 2025-12-31 |

## dim_benchmark

| Column | Data Type | Sample Values |
|--------|----------|--------------|
| date | str | 2022-01-03, 2022-01-04, 2022-01-05 |
| index_name | str | NIFTY50 |
| close_value | float64 | 17492.79, 17689.64, 17835.05 |

## fact_nav

| Column | Data Type | Sample Values |
|--------|----------|--------------|
| amfi_code | int64 | 100016 |
| date | str | 2022-01-03, 2022-01-04, 2022-01-05 |
| nav | float64 | 520.4608, 515.0971, 521.7239 |

## fact_transactions

| Column | Data Type | Sample Values |
|--------|----------|--------------|
| investor_id | str | INV003054, INV002952, INV003420 |
| transaction_date | str | 2024-01-01 |
| amfi_code | int64 | 119092, 148567, 118636 |
| transaction_type | str | SIP, Redemption, Lumpsum |
| amount_inr | int64 | 1834, 392882, 912 |
| state | str | Telangana, Punjab, Haryana |
| city | str | Hyderabad, Amritsar, Faridabad |
| city_tier | str | T30, B30 |
| age_group | str | 56+, 18-25, 36-45 |
| gender | str | Female, Male |
| annual_income_lakh | float64 | 77.1, 7.1, 47.2 |
| payment_mode | str | UPI, Cheque, Mandate |
| kyc_status | str | Verified, Pending |

## fact_performance

| Column | Data Type | Sample Values |
|--------|----------|--------------|
| amfi_code | int64 | 119551, 119552, 119598 |
| scheme_name | str | SBI Bluechip Fund - Regular Plan - Growth, SBI Bluechip Fund - Direct Plan - Growth, SBI Small Cap Fund - Regular Plan - Growth |
| fund_house | str | SBI Mutual Fund |
| category | str | Large Cap, Small Cap, Gilt |
| plan | str | Regular, Direct |
| return_1yr_pct | float64 | 12.42, 15.25, 24.56 |
| return_3yr_pct | float64 | 12.36, 11.3, 23.39 |
| return_5yr_pct | float64 | 14.45, 14.23, 20.67 |
| benchmark_3yr_pct | float64 | 11.49, 9.52, 22.16 |
| alpha | float64 | 0.87, 1.78, 1.23 |
| beta | float64 | 0.89, 0.87, 1.04 |
| sharpe_ratio | float64 | 0.88, 0.81, 0.94 |
| sortino_ratio | float64 | 1.29, 1.35, 1.67 |
| std_dev_ann_pct | float64 | 14.0, 25.0, 4.0 |
| max_drawdown_pct | float64 | -21.7, -24.43, -13.35 |
| aum_crore | int64 | 14288, 1231, 19259 |
| expense_ratio_pct | float64 | 1.54, 0.66, 1.43 |
| morningstar_rating | int64 | 4, 3, 5 |
| risk_grade | str | Moderate, Very High, Low |
| negative_sharpe_flag | int64 | 0 |
| expense_ratio_flag | int64 | 0 |

## dim_fund

| Column | Data Type | Sample Values |
|--------|----------|--------------|
| amfi_code | int64 | 119551, 119552, 119598 |
| fund_house | str | SBI Mutual Fund |
| scheme_name | str | SBI Bluechip Fund - Regular Plan - Growth, SBI Bluechip Fund - Direct Plan - Growth, SBI Small Cap Fund - Regular Plan - Growth |
| category | str | Equity, Debt |
| sub_category | str | Large Cap, Small Cap, Gilt |
| plan | str | Regular, Direct |
| launch_date | str | 2006-02-14, 2013-01-01, 2009-09-09 |
| benchmark | str | NIFTY 100 TRI, BSE 250 SmallCap TRI, CRISIL Dynamic Gilt Index |
| expense_ratio_pct | float64 | 1.54, 0.66, 1.43 |
| exit_load_pct | float64 | 1.0, 0.0 |
| min_sip_amount | int64 | 500 |
| min_lumpsum_amount | int64 | 1000 |
| fund_manager | str | Sohini Andani, R. Srinivasan, Dinesh Ahuja |
| risk_category | str | Moderate, Very High, Low |
| sebi_category_code | str | EC01, EC03, DC02 |

## fact_aum

| Column | Data Type | Sample Values |
|--------|----------|--------------|
| date | str | 2022-03-31 |
| fund_house | str | SBI Mutual Fund, ICICI Prudential MF, HDFC Mutual Fund |
| aum_lakh_crore | float64 | 6.05, 4.65, 4.35 |
| aum_crore | int64 | 605000, 465000, 435000 |
| num_schemes | int64 | 186, 216, 195 |

