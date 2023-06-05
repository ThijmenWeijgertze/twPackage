#' Make factor
#'
#' This command changes a column type to factor with unique levels using the unique() command
#'
#' @param x The column to be changed into a factor
#'
#' @return Column with type factor
#' @export
#'
#' @examples
#' library(twPackage)
#' pokemon$Type.1 <- tw_factor(pokemon$Type.1)
#' levels(pokemon$Type.1)

tw_factor<- function(x) {
  x %>% factor(levels = unique(x))
}
