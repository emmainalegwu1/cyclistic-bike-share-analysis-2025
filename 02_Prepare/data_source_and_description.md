# 02 – Prepare

## Data Source

This project uses 12 monthly Divvy bike-share trip-data files covering January to December 2025.

- Data source: Divvy trip data.

- Period covered: January–December 2025.

- Number of datasets: 12 monthly datasets (2025_01_divvy_tripdata through 2025_12_divvy_tripdata)

- Download source: https://divvy-tripdata.s3.amazonaws.com/index.html

- License source: By Motivate International Inc. https://divvybikes.com/data-license-agreement

## Data Storage

The datasets were imported into Google BigQuery via Google Connected Sheets for preparation and analysis.

- Project ID: my-project-52671-510211

- Dataset: Cyclistic_bikeshare

## Relevant Data Fields

| Field | Description |
|---|---|
| ride_id | Unique identifier for each trip |
| rideable_type | Type of bicycle used |
| started_at | Date and time the trip started |
| ended_at | Date and time the trip ended |
| start_station_name | Starting station, where available |
| end_station_name | Ending station, where available |
| member_casual | Rider category: member or casual|

## Data Suitability

The datasets contain trip records, timestamps and rider categories. These fields make it possible to calculate trip duration and compare riding patterns between casual riders and annual members.

## Data Preparation Considerations

The following checks were considered before analysis:

Confirm that all 12 monthly datasets were successfully imported.

Review the structure and consistency of the monthly tables.

Check total records and distinct ride IDs.

Identify missing values in essential fields.

Examine invalid timestamps and trip durations.

Ensure the datasets can be combined for annual analysis.

## Data Limitations

The datasets describe recorded bike-share usage but do not explain individual customer motivations.

Consequently, the analysis can identify differences in riding behaviour but cannot independently establish why casual riders choose not to purchase annual memberships.
