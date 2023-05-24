# Preamble
library(pacman)
p_load(leaflet, shiny, tidyverse, here, rgdal, sf, geojsonio)

# Load .geojson file
facilities.geo <- geojson_sf("sudan_facilities.geojson")
facilities.ct <- sf::st_centroid(facilities.geo)

facilities <- tibble(name_en = facilities.ct$name_en,
                     amenity = facilities.ct$amenity,
                     name_ar = facilities.ct$name,
                     lat = (sf::st_coordinates(facilities.ct)[,1]),
                     long = (sf::st_coordinates(facilities.ct)[,2]))

rm(facilities.ct, facilities.geo)

# Create the custom icon
icons <- awesomeIcons(
  icon = 'ios-medkit',
  iconColor = 'white',
  library = 'ion')