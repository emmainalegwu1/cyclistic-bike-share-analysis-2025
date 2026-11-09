-- 04: ANALYSE – FINAL DATA VALIDATION

-- Objective:
-- Confirm that the cleaned dataset reconciles across rider categories.

-- 1. Total valid trips by rider category
SELECT
  member_casual AS user_type,
  COUNT(*) AS trip_count
FROM
  `my-project-52671-510211.Cyclistic_bikeshare.2025_cleaned_trips`
GROUP BY
  user_type;

-- 2. Overall annual trip count
