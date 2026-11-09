
-- 04: ANALYSE – SEASONAL RIDER BEHAVIOUR

-- Objective:
-- Compare trip counts and average ride duration
-- between casual riders and members across four seasons.

CREATE TABLE `my-project-52671-510211.Cyclistic_bikeshare.2025_seasonal_summary` AS
SELECT
  CASE
    WHEN EXTRACT(MONTH FROM DATE(started_at)) IN (12, 1, 2)
      THEN 'Winter'
    WHEN EXTRACT(MONTH FROM DATE(started_at)) IN (3, 4, 5)
      THEN 'Spring'
    WHEN EXTRACT(MONTH FROM DATE(started_at)) IN (6, 7, 8)
      THEN 'Summer'
    WHEN EXTRACT(MONTH FROM DATE(started_at)) IN (9, 10, 11)
      THEN 'Autumn'
  END AS season,

  CASE
    WHEN EXTRACT(MONTH FROM DATE(started_at)) IN (12, 1, 2)
      THEN 1
    WHEN EXTRACT(MONTH FROM DATE(started_at)) IN (3, 4, 5)
      THEN 2
    WHEN EXTRACT(MONTH FROM DATE(started_at)) IN (6, 7, 8)
      THEN 3
    WHEN EXTRACT(MONTH FROM DATE(started_at)) IN (9, 10, 11)
      THEN 4
  END AS season_num,

  member_casual AS user_type,
  COUNT(ride_id) AS trip_count,

  ROUND(
    AVG(ride_length_seconds) / 60.0,
    2
  ) AS mean_ride_len

FROM
  `my-project-52671-510211.Cyclistic_bikeshare.2025_cleaned_trips`

GROUP BY
  season,
  season_num,
  user_type

ORDER BY
  season_num,
  user_type;
