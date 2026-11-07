-- =========================================
-- PROJECT: CYCLISTIC BIKE-SHARE ANALYSIS
-- SCRIPT: DATA CLEANING
-- TOOL: GOOGLE BIGQUERY
-- PERIOD: JANUARY - DECEMBER 2025
-- =========================================

-- Objective:
-- Create one reusable cleaned view for all 2025 analysis.
-- Cleaning rule: 
-- removing records from December 2024 found contained in January 2025.
-- moving records from subsequent months that belongs to previous months ofor year 2025..
-- retain rides above 0 second.
-- Transformed the data with the icnlusion of ride length in seconds and minutes, month and month number
-- day of week and day number.

-- Removed 53 record of December 2024 from January 2025 data
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_01_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2024
  AND EXTRACT(MONTH FROM started_at) = 12

-- Moving recordss from sebsequent month belonging to previous months to their appropriate month table.
CREATE TABLE `my-project-52671-510211.Cyclistic_bikeshare.2025_cleaned_trips` AS
 WITH all_trips AS 
(
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_01_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 1
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_02_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 1
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_02_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 2
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_03_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 2
UNION ALL
SELECT * FROM  `my-project-52671-510211.Cyclistic_bikeshare.2025_03_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 3
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_04_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 3
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_04_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 4
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_05_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 4
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_05_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 5
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_06_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 5
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_06_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 6  
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_07_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 6
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_07_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 7
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_08_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 7
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_08_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 8
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_09_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 8
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_09_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 9
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_10_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 9
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_10_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 10
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_11_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 10
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_11_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 11
UNION ALL
SELECT * FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_12_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 11
UNION ALL
SELECT *
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_12_divvy_tripdata`
WHERE 
  EXTRACT(YEAR FROM  started_at) = 2025
  AND EXTRACT(MONTH FROM started_at) = 12
  )
SELECT
ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_name,
  end_station_id,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual AS user_type,
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) / 60.0 AS ride_length_minutes,
  EXTRACT(MONTH FROM DATE(started_at)) AS month_num,
  FORMAT_DATE('%B', DATE(started_at)) AS month,
  EXTRACT(DAYOFWEEK FROM DATE(started_at)) AS day_num,
  FORMAT_DATE('%A', DATE(started_at)) AS day_of_week
FROM all_trips
WHERE ride_id IS NOT NULL
  AND member_casual IS NOT NULL
  AND started_at IS NOT NULL
  AND ended_at IS NOT NULL
  AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0;
