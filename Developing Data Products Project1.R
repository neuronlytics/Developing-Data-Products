#' ---
#' title: "Developing Data Product Projet 1"
#' author: Dennis Oriaifo
#' date: "July 16th, 2017"
#' ---

## San Diego's Colleges and Universities
  
#### Clear console
rm(list=ls())
cat('\014')

#### Load libraries
library(leaflet)
library(dplyr)
library(rmarkdown)

#### Load dataset
dataset = read.csv("SDHigherEd.csv")

#### Truncate dataset
dataset = dataset[3:4]

#### Create custom map icon
GradIcon = makeIcon (
  iconUrl = "https://image.flaticon.com/icons/svg/201/201799.svg",
  iconWidth = 31*215/230, iconHeight = 31,
  iconAnchorX = 31*215/230/2, iconAnchorY = 16
)

#### Add links to popups
unipopups = c(
  "<a href='http://csusm.edu/'>California State University - San Marcos </a>",
  "<a href='http://cwsl.edu/'>California Western School of Law </a>",
  "<a href='http://sdcc.edu/'>San Diego Christian College </a>",
  "<a href='http://nu.edu/'>National University </a>",
  "<a href='http://pointloma.edu/'>Point Loma Nazarene University </a>",
  "<a href='http://sdsu.edu/'>San Diego State University </a>",
  "<a href='http://ucsd.edu/'>University of California San Diego </a>",
  "<a href='http://phoenix.edu/'>University of Phoenix </a>",
  "<a href='http://sandiego.edu/'>University of San Diego </a>",
  "<a href='http://alliant.edu/locations/san-diego-campus/index.php'>Alliant International University </a>",
  "<a href='http://tjsl.edu/'>Thomas Jefferson School of Law </a>",
  "<a href='http://www.apu.edu/sandiego/'>Azusa Pacific University </a>",
  "<a href='http://sdccd.edu/'>San Diego Community College District</a>",
  "<a href='http://grossmont.edu/'>Grossmont College</a>",
  "<a href='http://miracosta.edu/'>MiraCosta College</a>",
  "<a href='http://palomar.edu/'>Palomar Community College</a>",
  "<a href='http://sdcity.edu/'>San Diego City College</a>",
  "<a href='http://sdmesa.edu/'>San Diego Mesa College</a>",
  "<a href='http://sdmiramar.edu/'>San Diego Miramar College</a>",
  "<a href='http://swccd.edu/'>Southwestern College</a>"
)

#### Generate Map with custom icons, popup links and clustering
dataset %>%
  leaflet() %>%
  addTiles() %>%
  addMarkers(icon = GradIcon, popup = unipopups, clusterOptions = markerClusterOptions())

