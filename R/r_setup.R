
#' Loads core packages for workflow
#' @description A general setup function that clears the console and workspace and loads in the packages you need to create ESC style charts
#'
#'
#'@export 

r_setup <- function(){

  rm(list = ls()[ls()!="path"])   # clear workspace - with the exception of the working directory
  gc()              # garbage collection
  cat("\014")       # Clear console
  grDevices::graphics.off()    # Clear graphic plots

  # Package installation

  list.of.packages <- c("dplyr","plyr","tidyr","timeDate","ggplot2","lubridate","readxl",
                        "tidyverse",'magrittr','gridExtra',
                        "leaps","tseries","urca","writexl",
                        "reshape2","cowplot","ggplotify",
                        "scales","readabs","caTools","zoo",
                        'rmarkdown','rstudioapi','extrafont',"readrba", "fpp3","sf",'haven',
                        "shinyjs", "shinydashboard","shinyWidgets","ggspatial", "extrafont")
  new.packages <- list.of.packages[!(list.of.packages %in% utils::installed.packages()[,"Package"])]
  if(length(new.packages)) {utils::install.packages(new.packages)}
  invisible(lapply(list.of.packages, require, character.only = TRUE))

}

