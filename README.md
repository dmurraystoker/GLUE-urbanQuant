# GLUE-urbanQuant

Data and R code for the manuscript "Comparing approaches to quantify urbanization on a multicontinental scale"
================
David Murray-Stoker

Updated: 18 April 2024

Data, metadata, and all R code for reproducing data extraction and analyses for the manuscript:

Murray-Stoker, D., J. S. Santangelo, M. Szulkin, and M. T. J. Johnson. Comparing approaches to quantify urbanization on a multicontinental scale.



## Abstract

Urbanization is an increasingly prevalent driver of environmental, ecological, and evolutionary change in both terrestrial and aquatic systems, and it is important that our sampling designs accurately capture this urban environmental change. Common approaches to sampling urban environments include: urban-nonurban transects, which sample along urbanization gradients; random points, which sample locations at random within an area of interest; and systematic points, which sample locations based on a regularly-spaced grid from a predetermined starting point within the area of interest. Presently, we lack a comparative analysis of the efficacy of these different sampling designs in capturing variation in urban environments. Here, we compare the environmental variation captured by transect- and point-based sampling designs in 136 cities across six continents. We quantified and compared a common set of environmental variables for each sampling design, with variables capturing landcover, climate, and socioeconomic facets of urban environments. Mean landcover and socioeconomic metrics consistently differed among sampling designs, in contrast to climate variables that primarily varied among cities. Additionally, changes in environmental variables with distance from the city centre depended on the sampling design, with this distance-by-sampling design interaction present in 27%–51% of cities, depending on the environmental variable. This implies that the rate of environmental change along urban-nonurban gradients frequently depends on the sampling design used. We also examined potential causes of deviations between transect- and point-based sampling designs and identified human population density and city area as common predictors of deviations between transect- and point-sampling designs. Our results show that sampling design can dictate how the urban environment is characterized, with sampling design as important − or more important − as the selected environmental variable. We have also developed a method with R code for researchers to use as they develop and validate sampling designs in novel or unstudied urban environments.


## Contents

The [R Project](https://github.com/dmurraystoker/GLUE-urbanQuant/blob/main/GLUE-urbanQuant.Rproj) provides a local relative directory for all data and R code.


### Data

All data and R objects are provided in the [data](https://github.com/dmurraystoker/GLUE-urbanQuant/tree/main/data) folder.

Data are organized into subfolders, which are briefly described below:

* Aridity_Index_data
  - TBD
* GDP_SSP_data
  - T
* HII_data
  - T
 * ISC_data
  - T
* NDVI_data
  - T
* WorldClim_data
  - T
* analysis_data
  - T
* data_filtered
  - T
* distance_data
  - T
* filtered_random_points
  - T
* filtered_random_transects
  - T
 * filtered_systematic_points
  - T
* sampled_random_points
  - T
* sampled_random_transects
  - T
* sampled_systematic_points
  - T
* GLUE-raw_city_characteristics.csv
  - T
* adjusted_sample_sizes.csv
  - T
* full_city_information
  - T
* sample_size_summaries
  - T
* transect_rotation_angles
  - T


Detailed metadata is located within each folder, with metadata for standalone data .csv files provided [here](ADD_LINK).


### Rasters

An empty directory for raster files is provided in [raster_files](https://github.com/dmurraystoker/GLUE-urbanQuant/tree/main/raster_files). Due to the large size of the raster files, users will need to download the associated raster files onto their local disk. *Links and references to download raster files to be provided here*


### Data Analysis

R Markdown code for all data extraction and analyses are provided in the [data_analysis](https://github.com/dmurraystoker/GLUE-urbanQuant/tree/main/data_analysis) folder. Separate README files are provided for each subfolder to describe the purpose of the script files.


### Using this repository

To use the data and R code for this project:

1. `git clone` this repository or download it as a zip folder
2. Open `R Studio`, go to `file > Open project`, and open the `GLUE-urbanQuant.Rproj`
R Project associated with this repository.
3. The data extraction and analyses can be performed by running through the code in [data_analysis](https://github.com/dmurraystoker/GLUE-urbanQuant/tree/main/data_analysis).
