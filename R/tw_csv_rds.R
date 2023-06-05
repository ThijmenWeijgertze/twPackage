#' creating csv and rds files
#'
#' Exports a variable containing a dataframe or tibble into a .csv and .rds file at a chosen location. The packages relies on the readr and here package. A project must be loaded in order to make this command work.
#'
#' @param x Dataframe or tibble
#' @param path The path where the files must be stored. The path must be specified starting at the rproject directory. Do not add .csv or .rds at the end of the file name.
#'
#' @return A .csv and .tsv from a dataframe or tibble at the chosen location
#' @export
#'
#' @examples
#' # A Rproject must be loaded.
#' # The Rproject location is the startpoint.
#' # Do not add .csv or .rds at the end of the file name.
#'
#' # library(twPackage)
#' # tw_csv_rds(pokemon, path = "pokemon")

tw_csv_rds <- function(x, path) {
  write_csv(
    x,
    file = here(paste0(path,".csv"))
  )
  write_rds(
    x,
    file = here(paste0(path,".rds"))
  )
}





