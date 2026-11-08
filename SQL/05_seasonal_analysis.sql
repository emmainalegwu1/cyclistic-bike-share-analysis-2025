-- =========================================
-- PROJECT: CYCLISTIC BIKE-SHARE ANALYSIS
-- SCRIPT: MONTHLY TRIP ANALYSIS
-- TOOL: GOOGLE BIGQUERY
-- PERIOD: JANUARY - DECEMBER 2025
-- =========================================

-- Objective:
-- Seasonal analysis calculated directly from cleaned trip records.
-- Chicago meteorological seasons: Winter Dec-Feb; Spring Mar-May;
-- Summer Jun-Aug; Autumn Sep-Nov.

CREATE TABLE `my-project-52671-510211.Cyclistic_bikeshare.2025_seasonal_summary` AS
WITH seasonal_trips AS (
  SELECT
    *,
    CASE
      WHEN month_num IN (12, 1, 2) THEN 'Winter'
      WHEN month_num IN (3, 4, 5) THEN 'Spring'
      WHEN month_num IN (6, 7, 8) THEN 'Summer'
      WHEN month_num IN (9, 10, 11) THEN 'Autumn'
    END AS season,
    CASE
      WHEN month_num IN (12, 1, 2) THEN 1
      WHEN month_num IN (3, 4, 5) THEN 2
      WHEN month_num IN (6, 7, 8) THEN 3
      WHEN month_num IN (9, 10, 11) THEN 4
    END AS season_num
  FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_cleaned_trips`
)
SELECT
  season,
  season_num,
  user_type,
  COUNT(ride_id) AS trip_count,
  ROUND(AVG(ride_length_seconds) / 60.0, 2) AS mean_ride_len_minutes
FROM seasonal_trips
GROUP BY season, season_num, user_type
ORDER BY season_num, user_type

