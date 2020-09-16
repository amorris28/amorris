# R/morris

R package containing R functions that are useful for Andrew Morris.

## Install

`r devtools::install_github("amorris28/morris")`

## Functions

- `se()` Calculate standard errors.
- `rmse()` Calcualte root mean squared errors.
- `wfps()` Calculate water-filled pore space in soil using gravimetric water
  content, bulk density, and particle density.
- `rarefy_mean()` Rarefy a community matrix `n` times and average the outcomes.
- `reverse_str()` Takes a string and returns it backwards.
- `reverse_substr()` Performs `substr` from back to front.
- `%notin%` Opposite of `%in%`.
- `mutate_cond` Mutates a `data.frame` only on the rows that satisfy the
  condition.
- `mtry_finder` Calculates the number of variables to try at each split in a
  random forest.
