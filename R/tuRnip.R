#' Load raw data
#'
#' Load raw data from CSV file. This file should have two columns:
#' 1. \code{datetime}: Formatted as \code{yyyy-MM-dd HH:mm}.
#' 2. \code{price}: Integer.
#'
#' @param filename String with the input filename.
#' @param wdir String to working directory.
#' @param col_names Boolean flag to indicate whether the input file contains
#'     column names.
#'
#' @return Tibble structure with raw data.
#' @export
#'
#' @example
#' filename <- system.file("extdata",
#'                         "turnips.csv",
#'                         package = "tuRnip",
#'                         mustWork = TRUE)
#' turnips <- load_raw(filename)
load_raw <- function(filename, wdir = here::here(), col_names = FALSE) {
  raw <- readr::read_csv(filename,
                         col_names = col_names,
                         col_types = readr::cols(
                           readr::col_datetime(),
                           readr::col_integer()
                         ))
  # raw <- read.csv(filename, header = col_names)
  if (ncol(raw) == 2) {
    colnames(raw) <- c("datetime", "price")
  } else {
    stop("\nThe input file should have two columns: ",
         "\n 1. datime: Formatted as yyyy-MM-dd HH:mm.",
         "\n 2. price: Integer.")
  }
  return(raw)
}
