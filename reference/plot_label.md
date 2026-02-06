# Add on-graph labels to graphs

Add text labels for lines, columns or other elements directly onto the
graph plot. This is preferred over using legends.

## Usage

``` r
plot_label(
  label,
  x,
  y,
  colour = NA,
  size = 3.5,
  hjust = 0,
  geom = c("text", "label"),
  angle = 0,
  facet_name = NULL,
  facet_value = NULL
)
```

## Arguments

- label:

  String vector. Label text to be displayed.

- x:

  Numeric or string vector. X-axis positions of the label text.

- y:

  Numeric or string vector. Y-axis positions of the label text.

- colour:

  (optional) Vector of colour names or strings. Default uses the e61
  palette.

- size:

  (optional) Integer. Size of the text, the default size should be
  appropriate in most cases.

- hjust:

  (optional) A numeric value from 0-1. Adjusts the alignment of the
  text. 0 left-aligns (default), 0.5 centre-aligns and 1 right-aligns.

- geom:

  (optional) String. Either "text" (default) or "label". "label" adds a
  white box around the text which could be useful sometimes.

- angle:

  (optional) Numeric. Rotate the labels. Defaults to 0 which is normal
  left-to-right text.

- facet_name, facet_value:

  (optional) String. Specify the name of the facetting variable in
  `facet_name` and the panel to show the labels in using `facet_value`.
  Defaults to NULL which shows the labels on all facets. You must
  specify both `facet_name` and `facet_value` or leave both as NULL.

## Value

ggplot2 object
