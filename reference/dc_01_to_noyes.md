# Convert 0/1 vector to "No"/"Yes" factor

Convert a vector containing 0 and 1 (and NA) into a factor with labels
"No" and "Yes".

## Usage

``` r
dc_01_to_noyes(x)
```

## Arguments

- x:

  Integer or numeric vector. May contain NA. Non-missing values must be
  0 or 1.

## Value

A factor with levels c("No", "Yes") corresponding to values 0 and 1, and
the same length as `x`.

## Examples

``` r
dc_01_to_noyes(c(0, 1, NA, 1, 0))
#> [1] No   Yes  <NA> Yes  No  
#> Levels: No Yes
```
