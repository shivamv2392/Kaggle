#######################################
# Library
#######################################

library(data.table)

library(tibble)

library(dplyr)

library(lubridate)

#######################################
# Load data into frames
#######################################

train <- as.tibble(fread("D:/Kaggle/train/train.csv"))

test <- as.tibble(fread("D:/Kaggle/test/test.csv"))

#######################################
# Handling Missing Values (NA's)
#######################################

table(is.na(train))

table(is.na(test))

#######################################
# Converting into factors
#######################################

train <- mutate(train, pickup_datetime = ymd_hms(pickup_datetime), dropoff_datetime = ymd_hms(dropoff_datetime),
	vendor_id = factor(vendor_id), passenger_count = factor(passenger_count))

#######################################
# abc
#######################################
