#' Load raw data
#'
#' Load raw data from CSV file. This file should have either two or three
#' columns:
#' 1. \code{datetime} - \code{price}
#' 2. \code{date} - \code{time} - \code{price}
#'
#' @param filename String with the input filename.
#' @param wdir String to working directory.
#' @param col_names Boolean flag to indicate whether the input file contains
#'     column names.
#'
#' @return Tibble structure with raw data.
#' @export
load_raw <- function(filename, wdir = here::here(), col_names = FALSE) {
  raw <- readr::read_csv(filename, col_names = col_names)
  if (ncol(raw) == 2) {
    colnames(raw) <- c("datetime", "price")
  } else if (ncol(raw) == 3) {
    colnames(raw) <- c("date", "time", "price")
  } else {
    stop("\nThe input file should have two or three columns: ",
         "\n 1. datime - price",
         "\n 2. date - time - price")
  }
  return(raw)
}
