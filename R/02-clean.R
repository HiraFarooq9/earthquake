library(tidyverse)
library(lubridate)
raw <- read.csv("data/raw/earthquakes.csv")

# Count how many earthquakes >5.0
n_eq_g5 <- raw |>
  filter(mag > 5.0) |>
  count()

min_date <- raw |>
  summarize(min=min(ymd_hms(time)))

max_date <- raw |>
  summarize(max = max(ymd_hms(time)))

save(n_eq_g5, min_date, max_date,
     file="data/clean/number_earthquakes.RData")

#Make clean dataset

clean <- raw |>
  select(time, mag)

save(clean, file="data/clean/clean.RData")


