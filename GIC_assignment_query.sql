SELECT 
    sd.strategy_id,
    sd.strategy_name,
    sd.strategy_currency,
    sd.strategy_country,
    sd.strategy_asset_type,
    sd.strategy_benchmark,
    sr.ytd as strategy_ytd,
    sr.market_value,
    sr.returns,
    br.benchmarkreturns
FROM 
tbl_strategy_details sd
LEFT JOIN 
tbl_strategy_returns sr ON sd.strategy_id = sr.strategy_id
LEFT JOIN 
tbl_benchmark_returns br ON sd.strategy_benchmark = br.benchmark AND sr.ytd = br.ytd
WHERE
    sr.ytd = '20221231';  
