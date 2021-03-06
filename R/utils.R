#' Create hexagonal logo for the package
#'
#' @param subplot image to use as the main logo
#' @param dpi plot resolution (dots-per-inch)
#' @param h_color colour for hexagon border
#' @param h_fill colour to fill hexagon
#' @param output output file (hexagonal logo)
#' @param package title for logo (package name)
#' @param p_color colour for package name
#' @param url URL for package repository or website
#' @param u_size text size for URL
#'
#' @return hexagonal logo
#'
#' @keywords internal
#' @noRd
hex_logo <- function(subplot = system.file("images/turnip.png",
                                           package = "tuRnip"),
                     dpi = 600,
                     h_color = "#000000",
                     h_fill = "#FBFCFC",
                     output = system.file("images/logo.png",
                                          package = "tuRnip"),
                     package = "tuRnip",
                     p_color = "#000000",
                     url = "https://github.com/villegar/tuRnip",
                     u_size = 1.45) {
  hexSticker::sticker(subplot = subplot, package = package,
                      h_color = h_color,  h_fill = h_fill,
                      dpi = dpi,
                      s_x = 1.0, s_y = .85, s_width = .5,
                      p_x = 1.0, p_y = 1.52, p_size = 6, p_color = p_color,
                      url = url,
                      u_angle = 30, u_color = p_color, u_size = u_size,
                      filename = output)
}
hex_logo("inst/images/turnip.png", output = "inst/images/logo.png")
