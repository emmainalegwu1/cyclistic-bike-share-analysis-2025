-- 03: PROCESS – DATA VALIDATION
--
-- Objective:
-- Validate all 12 monthly source tables for 2025.
--
-- Checks include:
-- Source row counts, distinct and duplicate ride IDs,
-- missing essential fields, zero-second durations 
-- and eligible trips.
--
-- Note:
-- Monthly labels refer to source table names.
-- Calendar-month allocation is handled in the cleaning query
-- using the started_at timestamp.

SELECT
  'January' AS month,
  1 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_01_divvy_tripdata`
UNION ALL
SELECT
  'February' AS month,
  2 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_02_divvy_tripdata`
UNION ALL
SELECT
  'March' AS month,
  3 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
   COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_03_divvy_tripdata`
UNION ALL
SELECT
  'April' AS month,
  4 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
   COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_04_divvy_tripdata`
UNION ALL
SELECT
  'May' AS month,
  5 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
   COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_05_divvy_tripdata`
UNION ALL
SELECT
  'June' AS month,
  6 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
   COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_06_divvy_tripdata`
UNION ALL
SELECT
  'July' AS month,
  7 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_07_divvy_tripdata`
UNION ALL
SELECT
  'August' AS month,
  8 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
   COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_08_divvy_tripdata`
UNION ALL
SELECT
  'September' AS month,
  9 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
   COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_09_divvy_tripdata`
UNION ALL
SELECT
  'October' AS month,
  10 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
   COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_10_divvy_tripdata`
UNION ALL
SELECT
  'November' AS month,
  11 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
   COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_11_divvy_tripdata`
UNION ALL
SELECT
  'December' AS month,
  12 AS month_num,
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_id IS NULL) AS null_ride_ids,
  COUNTIF(member_casual IS NULL) AS null_user_types,
  COUNTIF(started_at IS NULL) AS null_start_times,
  COUNTIF(ended_at IS NULL) AS null_end_times,
   COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) = 0) AS ineligible_trips,
  COUNTIF(ride_id IS NOT NULL AND member_casual IS NOT NULL
    AND started_at IS NOT NULL AND ended_at IS NOT NULL
    AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0) AS eligible_trips
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_12_divvy_tripdata`
ORDER BY month_num;

-- Validate the final cleaned 2025 dataset

SELECT
  COUNT(*) AS total_cleaned_trips,
  COUNT(DISTINCT ride_id) AS distinct_ride_ids,
  COUNT(*) - COUNT(DISTINCT ride_id) AS duplicate_ride_id_rows,
  COUNTIF(ride_length_seconds <= 0) AS invalid_durations,
  COUNTIF(ride_length_seconds > 0) AS valid_trips,
  MIN(ride_length_seconds) AS shortest_trip_seconds,
  MAX(ride_length_seconds) AS longest_trip_seconds,
  AVG(ride_length_seconds) AS average_ride_length_seconds
FROM `my-project-52671-510211.Cyclistic_bikeshare.2025_cleaned_trips`;
