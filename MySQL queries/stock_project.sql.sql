SELECT MAX(high_price) AS highest_price
FROM stock_data;

SELECT MIN(low_price) AS lowest_price
FROM stock_data;

SELECT AVG(close_price) AS average_close
FROM stock_data;

SELECT date, volume
FROM stock_data
ORDER BY volume DESC
LIMIT 5;

SELECT date,
       high_price - low_price AS market_range
FROM stock_data;

SELECT
    SUM(CASE WHEN p_sum > 0 THEN 1 ELSE 0 END) AS positive_days,
    SUM(CASE WHEN p_sum < 0 THEN 1 ELSE 0 END) AS negative_days
FROM stock_data;

SELECT date, close_price
FROM stock_data
ORDER BY close_price DESC
LIMIT 10;

SELECT YEAR(date) AS year,
       AVG(volume) AS avg_volume
FROM stock_data
GROUP BY YEAR(date);

SELECT date, high_price
FROM stock_data
WHERE high_price > 500;

SELECT
    CASE
        WHEN p_sum > 0 THEN 'Positive'
        ELSE 'Negative'
    END AS market_trend,
    COUNT(*) AS total_days
FROM stock_data
GROUP BY market_trend;