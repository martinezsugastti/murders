library(tidyverse)
murders <- read.csv("Data/murders.csv")
murders <- murders %>% mutate(region = factor(region), rate = total / population * 10^5)
save(murders, file = "Rda/murders.rda")
