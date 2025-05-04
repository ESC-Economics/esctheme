#' Predefined ESC colours combined into palettes
#' 
#' @export
#' 
esc_palette <- function(){
  
  esc_colours <- c("#236192","#ed8b00", "#ce0058", "#183028","#d50032", "#fdda24",
                   "#75787b", "#4986a0", "#a3d168", "#3c7964")
  
  return(esc_colours)
  
}

#' esc_blue
#' 
#'
#' @export
#'
esc_blue <- grDevices::colorRampPalette(c("#236192", "#D3DFE9"))

#' esc_magenta
#'
#' @export
#'
esc_magenta <- grDevices::colorRampPalette(c("#ce0058", "#F5CCDE"))

#' esc_aqua
#'
#' @export
#'
esc_aqua <- grDevices::colorRampPalette(c("#4986a0", "#DBE7EC"))

#' esc_deepgreen
#'
#' @export
#'
esc_deepgreen <- grDevices::colorRampPalette(c("#183028", "#D1D6D4"))

#' esc_yellow
#'
#' @export
#'
esc_yellow <- colorRampPalette(c("#fdda24", "#FFF8D3"))

#' esc_orange
#'
#' @export
#'
esc_orange <- colorRampPalette(c("#ed8b00", "#FBE8CC"))

#' esc_red
#'
#' @export
#'
esc_red <- colorRampPalette(c("#d50032", "#F7CCD6"))