# Calculate summary statistics

A function to calculate median, min, max, and lower and upper
percentiles

## Usage

``` r
summarise_by(df, var, lower = 0.1, upper = 0.9, by_vars)
```

## Arguments

- df:

  A data frame

- var:

  Numeric column to compute distribution.

- lower:

  Numeric value for the bottom percentile.

- upper:

  Numeric value for the top percentile.

- by_vars:

  A selection of columns to group by for just this operation
