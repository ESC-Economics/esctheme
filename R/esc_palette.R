#' Predefined ESC colours combined into palettes
#' 
#' @param n Numeric. The number of levels in your colour scale, defaults to 6. Minimum value is
#'   1, maximum is 12. Using more than 6 colours is not recommended as it may
#'   make it difficult to distinguish between colours.
#'
#' @param reverse Logical. Reverse the standard colour order, defaults to FALSE
#' 
#' @export
#' 
esc_palette <- function(n = 6, reverse = FALSE){
  
  if (n == 0) stop("You need to specify the number of colours/fills in your palette.")
  
  if (n > 10) stop("You cannot request more than 12 colours, consider using a
                   continuous colour scale or reducing the number of groups in
                   your data.")
  
  pal <- get_palette(n)
  
  if (isTRUE(reverse)) {
    pal <- rev(pal)
  }
  
  return(pal)
  
}

#' Get colours for palette function
#'
#' @param n Numeric.
#'
#' @return Vector of hex codes of the colour palette
#' @noRd

get_palette <- function(n){
  
  # Base colour codes
  base_pal <- list(
    base_blue = "#236192",
    base_orange = "#ed8b00",
    base_magenta = "#CE0058",
    base_aqua = "#4986a0",
    base_deepgreen = "#183028",
    base_lightgreen = "#3c7964",
    base_highgreen = "#a3d168",
    base_red = "#d50032",
    base_yellow = "#fdda24",
    base_grey = "#75787b"
  ) %>% unlist()
  
  pal <- base_pal[1:n] %>% as.vector()
  
  return(pal)
  
}



#' Palette generator for esc_blue
#' 
#'
#' @export
#'
esc_blue <- grDevices::colorRampPalette(c("#236192", "#D3DFE9"))(9)

#' Palette generator for esc_magenta
#'
#' @export
#'
esc_magenta <- grDevices::colorRampPalette(c("#CE0058", "#F5CCDE"))(9)

#' Palette generator for esc_aqua
#'
#' @export
#'
esc_aqua <- grDevices::colorRampPalette(c("#4986A0", "#DBE7EC"))(9)

#' Palette generator for esc_deepgreen
#'
#' @export
#'
esc_deepgreen <- grDevices::colorRampPalette(c("#183028", "#D1D6D4"))(9)

#' Palette generator for esc_yellow
#'
#' @export
#'
esc_yellow <- colorRampPalette(c("#FDDa24", "#FFF8D3"))(9)

#' Palette generator for esc_orange
#'
#' @export
#'
esc_orange <- colorRampPalette(c("#ED8B00", "#FBE8CC"))(9)

#' Palette generator for esc_red
#'
#' @export
#'
esc_red <- colorRampPalette(c("#D50032", "#F7CCD6"))(9)
