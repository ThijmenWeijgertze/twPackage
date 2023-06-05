#' tw table
#'
#' This command creates a basic table with the reactable package.
#'
#' @param x A variable containing a dataframe or tibble
#' @param pagesize Number of rows per page
#'
#' @return A basic table made with the reactable package
#' @export
#'
#' @examples
#' library(twPackage)
#' tw_table(pokemon, pagesize = 5)

tw_table <- function(x, pagesize) {
  reactable(
    x,
    filterable = TRUE,
    compact = TRUE,
    bordered = TRUE,
    defaultPageSize = pagesize
  )
}
