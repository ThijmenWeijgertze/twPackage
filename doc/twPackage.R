## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  warning = FALSE,
  message = FALSE, 
  error = TRUE
)

## ----examples-----------------------------------------------------------------
# load package
library(twPackage)

## -----------------------------------------------------------------------------
pokemon$Type.1 <- tw_factor(pokemon$Type.1)
levels(pokemon$Type.1)

## ---- eval=FALSE--------------------------------------------------------------
#  tw_csv_rds(pokemon, path = "pokemon")

## -----------------------------------------------------------------------------
tw_table(pokemon, 5)

## -----------------------------------------------------------------------------
tw_filter_select(
  pokemon, 
  filter_col = "Type.1", 
  filter_value = "Fire", 
  select = c("Name", "Type.1")
  ) %>% head(5)

