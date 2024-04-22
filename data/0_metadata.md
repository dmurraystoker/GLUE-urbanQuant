Metadata
================
David Murray-Stoker

# GLUE-urbanQuant

Updated: 21 April 2024

Metadata for standalone .csv files in the [data](https://github.com/dmurraystoker/GLUE-urbanQuant/tree/main/data) folder. Additional metadata files are provided in each of the subfolders.

# Metadata

## file = adjusted\_sample\_sizes.csv

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| Country | Name of the country | Character |
| City | Name of the city | Character |
| GLUE\_Transect\_N | Number of sites along the GLUE transect | Integer |
| Random\_Points\_N | Number of sites following the random points sampling design | Integer |
| Systematic\_Points\_N | Number of sites following the systematic points sampling design | Integer |
| Random\_Transect\_N | Number of sites following the random transect sampling design | Integer |
| RT\_Minus\_GLUE | Difference in the number of sites between random and GLUE transects | Integer |
| Adjusted\_Random\_Points | Proportion to increase random points sampling before filtering sites | Numeric |
| Adjusted\_Systematic\_Points | Proportion to increase systematic points sampling before filtering sites | Numeric |
| Random\_Transect\_Percent\_Deficit | Percent difference in the number of sites between random and GLUE transects | Numeric |


## file = full\_city\_information.csv

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| Continent | Name of the continent | Type |
| Country | Name of the country | Character |
| City | Name of the city | Character |
| City\_Latitude | Latitude of the city center (decimal degrees) | Numeric |
| City\_Longitude | Longitude of the city center (decimal degrees) | Numeric |
| City\_Area | Area of the urban extent of the city (km^2^) | Numeric |
| Human\_Population\_Size | Human population size from the latest available census | Integer |
| Human\_Population\_Density | Human population size divided by city area | Numeric |
| City\_Age | Number of years since the city reached a population size of 150,000. Cities with a lower population size than 150,000 were assigned a city age of 0 | Type |
| Number\_Nearby\_Cities | Number of cities within a 50 km radius of the city center | Integer |

Note: All city information was compiled by [Santangelo et al. 2022](https://www.science.org/doi/10.1126/science.abk0989).


## file = sample\_size\_summaries.csv

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| Country | Name of the country | Character |
| City | Name of the city | Character |
| GLUE\_Transect\_N | Number of sites along the GLUE transect | Integer |
| Random\_Points\_N | Number of sites following the random points sampling design | Integer |
| Systematic\_Points\_N | Number of sites following the systematic points sampling design | Integer |
| Random\_Transect\_N | Number of sites following the random transect sampling design | Integer |
| RT\_Minus\_GLUE | Difference in the number of sites between random and GLUE transects | Integer |
| Adjusted\_Random\_Points | Proportion to increase random points sampling before filtering sites | Numeric |
| Adjusted\_Systematic\_Points | Proportion to increase systematic points sampling before filtering sites | Numeric |
| Random\_Transect\_Percent\_Deficit | Percent difference in the number of sites between random and GLUE transects | Numeric |

Note: Values for the sample size summary differ from the adjusted sample sizes because summaries were calculated after adjusting the sample sizes.


## file = transect\_rotation\_angles.csv

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| Continent | Name of the continent | Character |
| Country | Name of the country | Character |
| City | Name of the city | Character |
| Minimum\_Angle | Minimum rotation angle to generate a random transect from a GLUE transect | Integer |
| Maximum\_Angle | Maximum rotation angle to generate a random transect from a GLUE transect | Integer |

Note: Angles are provided for a counterclockwise rotation. Rotation angles were set through manual inspection of GLUE transects and setting angle limits (e.g, to avoid bodies of water).
