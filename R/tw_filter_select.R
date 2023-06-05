#' Filtering and selecting
#'
#' This function can be used to filter rows and select columns in one function using the dplyr package
#'
#' @param x the table to be filtered
#' @param filter_col column where the filter_value can be found
#' @param filter_value value to be filtered on
#' @param select the columns to be selected
#'
#' @return A filtered and selected data
#' @export
#'
#' @examples
#' library(twPackage)
#' tw_filter_select(
#' pokemon,
#' filter_col = "Type.1",
#' filter_value = "Fire",
#' select = c("Name", "Type.1")
#' )

tw_filter_select <- function(x, filter_col, filter_value, select) {
 filter(x, pokemon[filter_col]==filter_value) %>% select(select)
}
