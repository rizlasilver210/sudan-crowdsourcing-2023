# Project to map the location of health facilities in Sudan.

# Preamble

# Remember to install sf and rgdal packages using the instructions from https://github.com/r-spatial/sf
library(pacman)
p_load(leaflet, shiny, tidyverse, rgdal, sf, geojsonsf)

# Set working directory
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# Load data
source("location_extraction.R")

# Define UI for application
ui <- fluidPage(

    # Application title
    titlePanel("Health facilities in Sudan"),
    # Display map on screen
    leafletOutput("locations")

)

# Define server logic
server <- function(input, output) {
  output$locations <- renderLeaflet({
    
    # Setup an empty map
    locations <- leaflet(facilities)
    locations <- addProviderTiles(locations,providers$CartoDB.Positron) 
    
    # Add markers onto the map
    locations <- addAwesomeMarkers(locations, ~lat, ~long, icon = ~icons, 
                                  popup = ~paste(name_en, "<br>", 
                                                 name_ar, "<br>",
                                                "Coordinates:",
                                                round(long,3),
                                                   "N, ",round(lat,3), "E"))
    
    
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
