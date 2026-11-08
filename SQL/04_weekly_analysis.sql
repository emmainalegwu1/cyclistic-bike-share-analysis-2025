-- =========================================
-- PROJECT: CYCLISTIC BIKE-SHARE ANALYSIS
-- SCRIPT: WEEKLY ANALYSIS
-- TOOL: GOOGLE BIGQUERY
-- PERIOD: JANUARY - DECEMBER 2025
-- =========================================

-- Objective:
-- Compare weekday trip count and mean ride duration by rider type.
-- BigQuery DAYOFWEEK numbering: Sunday=1 through Saturday=7.

CREATE TABLE `my-project-52671-510211.Cyclistic_bikeshare.2025_weekday_trip_summary` AS
SELECT
  user_type,
  day_of_week,
  day_num,
  COUNT(ride_id) AS trip_count,
  ROUND(AVG(ride_length_seconds) / 60.0, 2) AS mean_ride_len
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_cleaned_trips`
GROUP BY user_type, day_of_week, day_num
ORDER BY user_type, CASE WHEN day_num = 1 THEN 8 ELSE day_num END;
