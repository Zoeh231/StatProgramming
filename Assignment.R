#Importing data file#
library(readr)
losAngeles <- read_csv("listings_2.csv")
head(losAngeles)

#Dropping uneeded columns for this observation#
library(dplyr)
newData <- select(losAngeles, -c(thumbnail_url, medium_url, picture_url, xl_picture_url,
                      host_url, host_acceptance_rate, host_thumbnail_url, host_picture_url,
                      neighbourhood_group_cleansed, reviews_per_month, calculated_host_listings_count_shared_rooms, 
                      calculated_host_listings_count_private_rooms, calculated_host_listings_count_entire_homes))
