# Applies changes to the theme for horizontal bar graphs

Horizontal bar graphs made with `coord_flip()` require some changes to
the `theme()` in order to look proper. This function wraps those changes
up in a convenient function that should be appended at the end of the
graph code, after theming functions such as
[`esctheme()`](https://esc-economics.github.io/esctheme/reference/esctheme-package.md)
have been called.

## Usage

``` r
format_flip(x_adj = 0)
```

## Arguments

- x_adj:

  Numeric. Adjusts the vertical position of the x-axis title, the
  default works for most graphs. A negative value moves the title up, a
  positive value moves the title down.

## Value

ggplot object
