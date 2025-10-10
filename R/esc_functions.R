
#' Save a ESC styled plot with sensible defaults
#' 
#' @importFrom stats lag
#' 
#' @param n Name given to chart
#' @param path File path given to save chart
#' @param device "png" or "svg" file type
#' @param width The width size. Default to 14.5
#' @param height The height size. Default to 6
#' @param ... Optional arguments to ggsave.
#' 
#' @return Saved png file
#' 
#' @export

esc_save <- function(n, path = NULL, device = "png", width = 14.5, height = 6,
                     ...){
  
  if(!is.character(n)){stop('Graph name needs to be in character format')}
  if(device!="png"){ttl <- paste0(n,'.svg')
  ggplot2::ggsave(ttl, width = width, height = height, path = path, device = "svg", bg = NULL)} #10.03
  
  else{ttl <- paste0(n,'.png')
  ggplot2::ggsave(ttl, width = width, height = height, path = path, device = "png", bg = "white")}
}


#' Calculate summary statistics
#' @description 
#' A function to calculate median, min, max, and lower and upper percentiles
#' 
#' @param df A data frame
#' @param var Numeric column to compute distribution.
#' @param lower Numeric value for the bottom percentile.
#' @param upper Numeric value for the top percentile.
#' @param by_vars A selection of columns to group by for just this operation
#' 
#' @export

summarise_by <- function(df, var, lower=.10, upper = .90, by_vars){
  
  plower_name <- paste0("p",lower*100, recycle0 = TRUE)
  pupper_name <- paste0("p",upper*100, recycle0 = TRUE)
  
  df <- df %>% 
    dplyr::group_by(dplyr::pick({{ by_vars }})) %>% 
    dplyr::summarise(
      p_min = round(min({{ var }}, na.rm = TRUE),0),
      p_lower = round(stats::quantile({{ var }}, lower, na.rm = TRUE),0),
      p_median = round(stats::median({{ var }}, na.rm = TRUE),0),
      p_upper = round(stats::quantile({{ var }}, upper, na.rm = TRUE),0),
      p_max = round(max({{ var }}, na.rm = TRUE),0)
    ) %>% 
    dplyr::ungroup() %>% 
    dplyr::rename(
      !!plower_name := p_lower,
      !!pupper_name := p_upper
    )
  
  return(df)
  
}


#' Moving average for long data
#' @description
#' A function to calculate moving average to smooth time series
#' 
#' @param df A data frame
#' @param p Numeric value for window period. Default to 4 for quarter. 
#' Other options are weekly 7 and monthly 12
#' @param ivars Coumns to calculate moving average. It keeps the column names
#' @param by_vars A selection of columns to group by for just this operation
#' 
#'
#' @export

trail_avg <- function(df,p=4,ivars, by_vars){
  
  df <- df %>% 
    dplyr::group_by(dplyr::pick({{ by_vars }})) %>% 
    dplyr::mutate(
      dplyr::across(
        .cols = {{ ivars }},
        .fns = ~ caTools::runmean(.x, p, endrule = "NA", align = "right")
      )
    ) %>%
    dplyr::ungroup()
  
  return(df)
  
}


