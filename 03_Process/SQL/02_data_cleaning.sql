-- 03: PROCESS – DATA CLEANING
-- This inlvolves creating a cleaned dataset for the 2025 Cyclistic analysis.

-- The 12 monthly datasets are combined using UNION ALL.
-- Using SELECT * Aafter veryfying ithe table have identical shema and common columns.
-- Confirm that the monthly schemas are compatible before combining them.

-- Applying data-cleaning conditions:
-- 1. Ride ID must not be NULL.
-- 2. Rider category must not be NULL.
-- 3. Start and end timestamps must not be NULL.
-- 4. Trip duration must be greater than 0 second.

-- Calculate numeric trip duration in seconds and minutes.

