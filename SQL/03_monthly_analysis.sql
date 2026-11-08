-- =========================================
-- PROJECT: CYCLISTIC BIKE-SHARE ANALYSIS
-- SCRIPT: MONTHLY TRIP ANALYSIS
-- TOOL: GOOGLE BIGQUERY
-- PERIOD: JANUARY - DECEMBER 2025
-- =========================================

-- Objective:
-- Compare monthly trip volumes and average
-- ride durations between members and casual riders.

-- Monthly trip count and mean ride duration by rider type.

CREATE TABLE `my-project-52671-510211.Cyclistic_bikeshare.2025_month_trip_summary` AS
SELECT
  month,
  month_num,
  user_type,
  COUNT(ride_id) AS trip_count,
  ROUND(AVG(ride_length_seconds) / 60.0, 2) AS mean_ride_len
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_cleaned_trips`
GROUP BY month, month_num, user_type
ORDER BY month_num, user_type;
