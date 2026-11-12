-- 04: ANALYSE – FINAL DATA VALIDATION

-- Objective:
-- Confirm that the cleaned dataset reconciles across rider categories.

-- 1. Total valid trips by rider category

WITH monthly AS (
  SELECT SUM(trip_count) AS total 
  FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_month_trip_summary`
),
weekday AS (
  SELECT SUM(trip_count) AS total 
  FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_weekday_trip_summary`
),
seasonal AS (
  SELECT SUM(trip_count) AS total 
  FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_seasonal_summary`
)
SELECT
  monthly.total AS monthly_total,
  weekday.total AS weekday_total,
  seasonal.total AS seasonal_total,
  monthly.total - weekday.total AS monthly_weekday_difference,
  monthly.total - seasonal.total AS monthly_seasonal_difference
FROM monthly FULL OUTER JOIN weekday ON monthly = weekday FULL OUTER JOIN seasonal ON COALESCE (monthly, weekday) = seasonal;

-- 2. Comparing totals by rider type across the three summaries.

SELECT 
  'Monthly' AS summary_type, 
  user_type, 
  SUM(trip_count) AS trip_count
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_month_trip_summary` 
GROUP BY user_type
UNION ALL
SELECT 
  'Weekday', 
  user_type, 
  SUM(trip_count)
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_weekday_trip_summary` 
GROUP BY user_type
UNION ALL
SELECT 
  'Seasonal', 
  user_type, 
  SUM(trip_count)
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_seasonal_summary` 
GROUP BY user_type
ORDER BY user_type, summary_type;

