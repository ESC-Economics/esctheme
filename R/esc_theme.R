
#' Create a ggplot2 theme consistent with the ESC style guide.
#' 
#' @import ggplot2
#' @import extrafont
#' 
#' @param scale Adjust the scale of the chart. Default is 0.8
#' @param rm_x_leg logical value indicating whether x label be removed from chart
#' @param rm_y_leg logical value indicating whether y label be removed from chart
#' 
#' @export

esc_theme <- function(scale = 0.8, rm_x_leg = FALSE, rm_y_leg = FALSE){
  
  loadfonts(device="win", quiet = TRUE)
  
  colorlist <- list(lt_grey = "#D9D9D9",
                    grey = "#D7D7D7",
                    dk_grey = "#595959",
                    lt_black = "#262626",
                    txt_grey = "#75787B")
  
  if (rm_x_leg == TRUE) {
    x_leg <- element_blank()
  }else{x_leg <- element_text(
    margin=unit(c(0,0,0,.15)*scale, "cm", colorlist$txt_grey), size = 20*scale
    )}
  
  if (rm_y_leg == TRUE) {
    y_leg <- element_blank()
  }else{y_leg <- element_text(
    margin=unit(c(0,0,0,.15)*scale, "cm", colorlist$txt_grey), size = 20*scale
    )}
  
  
  theme_minimal() %+replace%
    
    theme(
      text = element_text(
        face = "plain",
        colour = colorlist$txt_grey,
        family = "Arial"
      ),
    line = element_line(
        colour = colorlist$lt_grey, 
        linewidth = 0.5
                        ),
    rect = element_rect(
        fill = NA,
        linetype = 0,
        colour = "white"
        ),
    
    axis.title.y.left = y_leg,
    axis.title.y.right = element_text(
      angle=0,
      vjust=1.08,
      hjust=0,
      margin=unit(c(0,0,0,-1.5)*scale, "cm", colorlist$lt_black), 
      size=18*scale),
    
    axis.title.x = x_leg,
    
    axis.ticks.x = element_line(linewidth=1*scale, colour= colorlist$dk_grey), 
    axis.ticks.length = unit(-0.15*scale, "cm"),
    
    axis.text = element_text(angle = 0, colour = colorlist$dk_grey,size=16*scale),
    axis.text.x = element_text(margin=unit(c(0.35,0.35,0,0.5)*scale, "cm")),
    axis.text.y = element_text(margin=unit(c(0.5,0.35,0.5,0.5)*scale, "cm")),
    axis.text.y.right= element_text(margin=unit(c(0.5,0.5,0.5,0.35)*scale, "cm")),
    
    
    axis.line.x = element_line(linewidth=1*scale, colour= colorlist$dk_grey),
    axis.line.y = element_blank(),
    
    legend.key = element_rect(colour=NA, fill=NA),
    legend.margin = margin(0,0,0,0),
    legend.text = element_text(size = 18*scale, colour = colorlist$dk_grey),
    legend.title = element_blank(),
    legend.background = element_rect(),
    legend.spacing.x = unit(0,'cm'),
    legend.spacing.y = unit(0,'cm'),
    
    plot.title = element_text(
      margin=unit(c(0.2,0,0.15,0)*scale,"cm"),
      size=24*scale, 
      hjust=0.0, 
      face = 'bold', 
      colour = "#000000"
      ),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    plot.subtitle = element_text(
      hjust=0.0,
      margin=unit(c(0.15,0,0.5,0)*scale,"cm"),
      size=18*scale,
      colour = "#000000"
      ),
    plot.caption = element_text(
      hjust=0.0,
      size=14*scale,
      margin=unit(c(0.45,0,0.15,0)*scale,"cm"),
      colour = colorlist$dk_grey
      ),
    
    legend.justification.top = "left",
    legend.position = "top",
    legend.location = "plot",
    legend.direction = "horizontal",
    legend.box = "horizontal",
    
    panel.background = element_rect(
      fill = NA, 
      color = NA 
      ),
  
    panel.grid.major.y = element_line(colour = colorlist$lt_grey), 
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    plot.margin = unit(c(1, 1, 1, 1), "lines"),
    
    strip.background = element_blank(),
    strip.placement = "inside",
    panel.spacing = unit(1, "lines"),
    strip.text = element_text(size = 14*scale,
                              margin=unit(c(0.15,0,0.5,0)*scale,"cm"),
                              colour = colorlist$txt_grey)
    )
}


