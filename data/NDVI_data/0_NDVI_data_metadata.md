NDVI\_data Metadata
================
David Murray-Stoker

# GLUE-urbanQuant

Updated: 21 April 2024

Metadata for the [NDVI_data](https://github.com/dmurraystoker/GLUE-urbanQuant/tree/main/data/NDVI_data) folder.

# Metadata

Separate folder for each sampling design, with a .csv file for each city. Each .csv file has the same structure:

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| UID | Unique identifier associated with that row of data | Character |
| Country | Name of the country | Character |
| City | Name of the city | Character |
| Mean\_NDVI | Mean normalized difference vegetation index value for that site, averaged over 1 January 2014-31 December 2018 | Numeric |
| Min\_NDVI | Minimum normalized difference vegetation index value for that site, calculated over 1 January 2014-31 December 2018 | Numeric |
| Max\_NDVI | Maximum normalized difference vegetation index value for that site, calculated over 1 January 2014-31 December 2018 | Numeric |
