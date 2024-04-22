WorldClim\_data Metadata
================
David Murray-Stoker

# GLUE-urbanQuant

Updated: 21 April 2024

Metadata for the [WorldClim_data](https://github.com/dmurraystoker/GLUE-urbanQuant/tree/main/data/WorldClim_data) folder.

# Metadata

Separate folder for each sampling design, with a .csv file for each city. Each .csv file has the same structure:

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| UID | Unique identifier associated with that row of data | Character |
| Country | Name of the country | Character |
| City | Name of the city | Character |
| Mean\_Annual\_Temperature | Mean annual temperature for that site (C); extracted from WorldClim rasters | Numeric |
| Temperature\_Seasonality | Variation in temperature for that site (standard deviation); extracted from WorldClim rasters | Numeric |
| Range\_Annual Temperature | Range in annual temperature for that site (C); extracted from WorldClim rasters | Numeric |
| Annual\_Precipitation | Total annual precipitation for that site (mm); extracted from WorldClim rasters | Integer |
| Precipitation\_Seasonality | Variation in precipitation for that site (standard deviation); extracted from WorldClim rasters | Numeric |
