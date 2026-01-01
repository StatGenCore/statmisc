#' Convert 0/1 vector to "No"/"Yes" factor
#'
#' Convert a vector containing 0 and 1 (and NA) into a factor
#' with labels "No" and "Yes".
#'
#' @param x Integer or numeric vector. May contain NA. Non-missing values must be 0 or 1.
#' @return A factor with levels c("No", "Yes") corresponding to values 0 and 1,
#'   and the same length as \code{x}.
#' @examples
#' dc_01_to_noyes(c(0, 1, NA, 1, 0))
#' @export
dc_01_to_noyes <- function(x) {
    stopifnot(all(na.omit(x) %in% c(0, 1)))
    factor(
        x = x,
        levels = c(0, 1),
        labels = c('No', 'Yes')
    )
}
