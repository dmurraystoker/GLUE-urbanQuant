analysis\_data Metadata
================
David Murray-Stoker

# GLUE-urbanQuant

Updated: 21 April 2024

Metadata for the [analysis_data](https://github.com/dmurraystoker/GLUE-urbanQuant/tree/main/data) folder.

# Metadata

## file = urbanQuant-full\_data.csv

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| UID | Unique identifier associated with that row of data | Character |
| City | Name of the city | Character |
| Sampling\_Design | Name of the sampling design | Character |
| Distance | Distance from that site to the city center (km) | Numeric |
| Standardized\_Distance | Distance re-scaled to 0 = city center and 1 = most-distance, nonurban site | Numeric |
| ISC\_Mean | Mean impervious surface cover within a 250-m radius of the site (\%) | Numeric |
| HII | Calculated Human Influence Index value for that site | Integer |
| Mean\_NDVI | Mean normalized difference vegetation index value for that site, averaged over 1 January 2014-31 December 2018 | Numeric |
| Min\_NDVI | Minimum normalized difference vegetation index value for that site, calculated over 1 January 2014-31 December 2018 | Numeric |
| Max\_NDVI | Maximum normalized difference vegetation index value for that site, calculated over 1 January 2014-31 December 2018 | Numeric |
| Mean\_Annual\_Temperature | Mean annual temperature for that site (C); extracted from WorldClim rasters | Numeric |
| Temperature\_Seasonality | Variation in temperature for that site (standard deviation); extracted from WorldClim rasters | Numeric |
| Range\_Annual Temperature | Range in annual temperature for that site (C); extracted from WorldClim rasters | Numeric |
| Annual\_Precipitation | Total annual precipitation for that site (mm); extracted from WorldClim rasters | Integer |
| Precipitation\_Seasonality | Variation in precipitation for that site (standard deviation); extracted from WorldClim rasters | Numeric |
| Aridity\_Index | Estimate of aridity intensity (higher = more arid) | Integer |
| GDP\_2005 | Calculated gross domestic product (GDP) for that site (USD) | Numeric |
| SSP\_1\_2030 | Estimated GDP for that site under Shared Socioeconic Pathway (SSP 1) for 2030 | Numeric |
| SSP\_1\_2100 | Estimated GDP for that site under Shared Socioeconic Pathway (SSP 1) for 2100 | Numeric |
| SSP\_2\_2030 | Estimated GDP for that site under Shared Socioeconic Pathway (SSP 2) for 2030 | Numeric |
| SSP\_2\_2200 | Estimated GDP for that site under Shared Socioeconic Pathway (SSP 2) for 2100 | Numeric |
| SSP\_5\_2030 | Estimated GDP for that site under Shared Socioeconic Pathway (SSP 5) for 2030 | Numeric |
| SSP\_5\_2100 | Estimated GDP for that site under Shared Socioeconic Pathway (SSP 5) for 2100 | Numeric |




## Folder = city\_specific\_regressions

### file = full\_regression\_results.csv

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| City | Name of the city | Character |
| urban\_environmental\_variable | Name of the environmental variable for that model | Character |
| Distance | P-value for the distance term in the model | Numeric |
| Sampling\_Design | P-value for the sampling design term in the model | Numeric |
| Distance\_by\_Sampling\_Design | P-value for the interaction term in the model | Numeric |
| eta2\_Predictor | Partial eta-squared for the distance term in the model | Numeric |
| eta2\_Sampling\_Design | ial eta-squared for the sampling design term in the model | Numeric |
| eta2\_Interaction | Dial eta-squared for the interaction term in the model | Numeric |
| R2\_adjusted | Adjusted R-squared associated with the model | Numeric |




## Folder = deviation\_BRTs

### file = BRT\_training\_output.rds

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| n.trees | Optimal number of trees for the boosted regression | Integer |
| interaction.depth | Optimal number of possible interactions in the boosted regression | Integer |
| shrinkage | Optimal learning rate for the boosted regression | Numeric |
| n.minobsinnode | Number of minimum observations per node in the boosted regression | Integer |
| Urbanization\_Metric | Name of the environmental variable | Character |


### file = deviation\_data.rds

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| Continent | Name of the continent | Character |
| Country | Name of the country | Character |
| City | Name of the city | Character |
| Slope\_Absolute\_Difference | Absolute value of the difference in slopes between transect and point sampling designs | Numeric |
| City\_Area | Area of the urban extent of the city (km^2^) | Numeric |
| Human\_Population\_Size | Human population size from the latest available census | Integer |
| Human\_Population\_Density | Human population size divided by city area | Numeric |
| City\_Age | Number of years since the city reached a population size of 150,000. Cities with a lower population size than 150,000 were assigned a city age of 0 | Type |
| Number\_Nearby\_Cities | Number of cities within a 50 km radius of the city center | Integer |
| Urbanization\_Metric | Name of the environmental variable | Character |


### file = deviation\_predictor\_BRTs.rds

List of boosted regression tree models, with one model for each environmental variable.


### file = deviation\_predictor\_relative\_influence\_summary.rds

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| Predictor\_Variable | Name of the predictor variable | Character |
| Relative\_Influence | Relative influence of the variable for predicting the difference in slope between transects and slopes | Numeric |
| Urbanization\_Metric | Name of the environmental variable | Character |




## Folder = environmental\_heterogeneity

### file = environmental\_heterogeneity\_data.rds

| Variable   | Description                                             | Type      | 
|:-----------|:--------------------------------------------------------|:----------|
| City | Name of the city | Character |
| Sampling\_Design | Name of the sampling design | Character |
| Environmental\_Heterogeneity | Euclidean distance to the centroid for that site; separate centroids calculated for each city-by-sampling-design combination | Numeric |


### file = environmental\_heterogeneity\_sampling\_design\_model.rds

Fitted linear mixed-effects model comparing environmental heterogeneity by sampling design.




## Folder = metric_by_distance_LMMs

Fitted linear-mixed effects models for each environmental variable. Environmental variables were compared by distance, sampling design, and the interaction between distance and sampling design.
