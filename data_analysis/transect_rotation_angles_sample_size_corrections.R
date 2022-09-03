## urbanQuant

## Transect Validation

## Packages & Data=========================================================

## Load the tidyverse
library(tidyverse)

## Packages for data extraction and management
library(sf)
library(sp)

## Packages for viewing points and transects
library(ggmap, quietly = TRUE)
library(ggpubr)
library(viridis)

## Load Data===============================================================

create_df_list <- function(inpath){
	
	# Get all csv files in inpath
	files <- dir(inpath, pattern = "*.csv")
	
	# Read in all the files, appending the path before the filename
	df_list <- files %>%
		map(~ read_csv(file.path(inpath, .), show_col_types = FALSE))
	
	return(df_list)
	
	}

## Set paths to data
# GLUE
GLUE.transect.path <- "data/data_filtered/"
# Random points
random.points.path <- "data/filtered_random_points/"
# Systematic points
systematic.points.path <- "data/filtered_systematic_points/"
# Random transects
random.transects.path <- "data/filtered_random_transects/"

## Import lists of dataframes
# GLUE
GLUE.transect.list <- create_df_list(GLUE.transect.path)
# Random points
random.points.list <- create_df_list(random.points.path)
# Systematic points
systematic.points.list <- create_df_list(systematic.points.path)
# Random transects
random.transects.list <- create_df_list(random.transects.path)



## Figure Colours==========================================================
plasma.continuous <- plasma(n = 16)

## View the base palettes
#scales::show_col(plasma.continuous)

## Set colours
sampled.points.col    <- plasma.continuous[7]  # Pink
random.transect.col   <- plasma.continuous[1]  # Blue
city.center.col       <- plasma.continuous[14] # Yellow



## Rotate & Visualize Transects============================================

df <- GLUE.transect.list[[134]]

# Get city name
city <- df %>% pull(City) %>% unique()

# Set the transect origin
transect.origin <- tibble(
	Origin_Longitude = df$City_Longitude %>% unique(),
	Origin_Latitude  = df$City_Latitude %>% unique()
	) %>%
	as.numeric()

# Set rotation angle near min and max for validation
random.angle <- 12.5

# Rotate the transect by a random angle
random.transect.df <- rearrr::rotate_2d(
	data = df,
	degrees = random.angle,
	x_col = "Population_Longitude",
	y_col = "Population_Latitude",
	origin = transect.origin
	) %>%
	select(Country, City, Population_Latitude_rotated, Population_Longitude_rotated) %>%
	rename(Rotated_Latitude = Population_Latitude_rotated,
				 Rotated_Longitude = Population_Longitude_rotated)

## Load sampled transect
sampled.transect.df <- df

## Set the boundary box
# Height and width of the boundary box
height <- max(random.transect.df$Rotated_Latitude) - min(random.transect.df$Rotated_Latitude)
width  <- max(random.transect.df$Rotated_Longitude) - min(random.transect.df$Rotated_Longitude)

# Add buffer around the boundary box
boundary_box <- c(
	left   = min(random.transect.df$Rotated_Longitude) - (2 * width),
	bottom = min(random.transect.df$Rotated_Latitude) - (2 * height),
	right  = max(random.transect.df$Rotated_Longitude) + (2 * width),
	top    = max(random.transect.df$Rotated_Latitude) + (2 * height)
	)

## Prepare data for spatial plotting
# Specify columns with coordinates
coordinates(random.transect.df) <- ~Rotated_Longitude + Rotated_Latitude

# Set CRS
proj4string(random.transect.df) <- CRS("+init=epsg:4326")

# Convert df to sf
random.transect.sf <- random.transect.df %>%
	st_as_sf(coords = c("Rotated_Longitude", "Rotated_Latitude")) %>%
	st_transform(crs = 4326)

# Random transect map
random.transect.map <- get_stamenmap(
	bbox = boundary_box,
	zoom = 10,
	maptype = "terrain-background",
	source = "stamen"
) %>%
	ggmap() +
	geom_sf(
		data = random.transect.sf,
		color = random.transect.col,
		alpha = 0.75,
		size = 3,
		inherit.aes = FALSE
	) +
	geom_point(
		data = sampled.transect.df,
		aes(x = Population_Longitude, y = Population_Latitude),
		color = sampled.points.col,
		size = 3
	) + 
	geom_point(
		data = sampled.transect.df,
		aes(x = City_Longitude, y = City_Latitude),
		color = city.center.col,
		size = 7.5,
		shape = 18
	) +
	labs(x = "Longitude",
			 y = "Latitude") +
	theme_pubr()
random.transect.map



## Sample Size Corrections=================================================

## Check city name
GLUE.transect.list[[2]]$City %>% unique()

## Check sample sizes
# GLUE
length(GLUE.transect.list[[2]]$Population)
# Random points
length(random.points.list[[2]]$UID)
# Systematic points
length(systematic.points.list[[2]]$UID)
# Random transect (check if rotation angle was valid)
length(random.transects.list[[2]]$UID)



