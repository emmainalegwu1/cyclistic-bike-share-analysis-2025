-- 04: ANALYSE – MONTHLY RIDER BEHAVIOUR

-- Objective:
-- Compare monthly trip counts and mean ride duration
-- between casual riders and annual members.

-- Monthly trip count and mean ride duration by rider type table creation.

CREATE TABLE 
  `my-project-52671-510211.Cyclistic_bikeshare.2025_month_trip_summary` AS
  
SELECT
  month,
  month_num,
  user_type,
  COUNT(ride_id) AS trip_count,
  ROUND(AVG(ride_length_seconds) / 60.0, 2) AS mean_ride_len_minute
  
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_cleaned_trips`
  
GROUP BY 
  month,
  month_num, 
  user_type
  
ORDER BY 
  month_num, 
  user_type;
