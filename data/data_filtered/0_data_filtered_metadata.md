data\_filtered Metadata
================
David Murray-Stoker

# GLUE-urbanQuant

Updated: 21 April 2024

Metadata for the [data_filtered](https://github.com/dmurraystoker/GLUE-urbanQuant/tree/main/data/data_filtered) folder, which contains .csv files for each of the sampled GLUE transects.

# Metadata

Each .csv file has the same structure:

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| Country | Name of the country | Character |
| City | Name of the city | Character |
| City\_Latitude | Latitude of the city center (decimal degrees) | Numeric |
| City\_Longitude | Longitude of the city center (decimal degrees) | Numeric |
| Site\_Latitude | Latitude of the site (decimal degrees) | Numeric |
| Site\_Longitude | Longitude of the site (decimal degrees) | Numeric |
| Distance | Distance from that site to the city center (km) | Numeric |
| Maximum\_Distance | Distance of the site furthest from the city center (km) | Numeric |
| Standardized\_Distance | Distance re-scaled to 0 = city center and 1 = most-distance, nonurban site | Numeric |
