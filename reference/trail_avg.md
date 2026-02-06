# Moving average for long data

A function to calculate moving average to smooth time series

## Usage

``` r
trail_avg(df, p = 4, ivars, by_vars)
```

## Arguments

- df:

  A data frame

- p:

  Numeric value for window period. Default to 4 for quarter. Other
  options are weekly 7 and monthly 12

- ivars:

  Coumns to calculate moving average. It keeps the column names

- by_vars:

  A selection of columns to group by for just this operation
