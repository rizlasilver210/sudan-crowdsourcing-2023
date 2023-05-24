# Healthcare Facilities Map - Sudan

This Shiny app is designed to visualize healthcare facilities in Sudan on an interactive map. It provides an easy-to-use interface for exploring different types of healthcare facilities across the country.

## Features

-   Interactive map displaying healthcare facilities in Sudan
-   Clickable markers to view detailed information about each facility
-   Zoom and pan controls for easy navigation on the map

## Installation

To run this Shiny app locally, follow the steps below:

1.  Clone this repository to your local machine.
2.  Ensure you have R and RStudio installed.
3.  Install the *sf* package as described [here](https://github.com/r-spatial/sf).
4.  Open the project in RStudio.
5.  Install the required packages by running the following command in the R console:

```install.packages(c("shiny", "leaflet", "dplyr"))```

## Usage

1.  Open the `app.R` file in RStudio.
2.  Click the "Run App" button in the top right corner of the source code editor.
3.  The Shiny app will open in a web browser.
4.  Use the filter options to select the desired facility type.
5.  Explore the map by zooming in/out and panning across Sudan.
6.  Click on the markers to view detailed information about each facility.

## Data

The healthcare facility data used in this app is sourced from <https://data.humdata.org>. It includes information such as facility name in both Arabic and English with coordinates.

## Contributing

Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on the GitHub repository.

## Acknowledgments

Special thanks to the contributors and data providers who made this project possible.

## Contact

For any questions or inquiries, please contact Szymon Jakobsze at jakobsze.szymon2@gmail.com.
