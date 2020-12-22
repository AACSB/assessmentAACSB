#' Return the total enrollment for each Group/Racial/Gender category for a given
#' state code.
#'
#' \code{get_category_by_state} returns total enrollment by diversity category
#' for a given state code.
#'
#' This function parses the \code{yaml} configuration file that lists all
#' of the sources for each customer. .
#'
#' @param data a tibble or data frame.
#' @param state_code the 2-character state code
#' @return Returns a data frame.
#'
#' @examples
#' get_category_by_state(my_df, "FL")

#' @importFrom magrittr %>%

