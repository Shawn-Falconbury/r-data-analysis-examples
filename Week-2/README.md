# Week 2: R Programming Fundamentals

This folder contains R scripts demonstrating fundamental programming concepts learned during Week 2 of studying R for data analysis and machine learning.

## Contents

| File | Description |
|------|-------------|
| `r_fundamentals_week2.r` | Comprehensive script demonstrating 13 R programming fundamentals |

## Fundamentals Demonstrated

| # | Concept | Description |
|---|---------|-------------|
| 1 | Package Loading | Using `library()` to load required packages |
| 2 | Options Configuration | Setting `scipen` to control scientific notation |
| 3 | Random Seed | Using `set.seed()` for reproducible results |
| 4 | Variable Assignment | Using `<-` operator with snake_case naming |
| 5 | Vectors | Creating vectors with `c()` function |
| 6 | Data Frames | Building data frames from vectors |
| 7 | Package Data | Loading datasets from packages (`mlba::WestRoxbury`) |
| 8 | Subsetting | Using `[ ]` and `$` for data access |
| 9 | Factors | Converting variables with `factor()` |
| 10 | Pipe Operator | Chaining functions with native |> pipe |
| 11 | Data Partitioning | Splitting data with `sample()` for ML workflows |
| 12 | Normalization | Using `scale()` and `rescale()` for standardization |
| 13 | Visualization | Creating plots with `ggplot2` |

## Required Packages

```r
install.packages("tidyverse")
install.packages("caret")
install.packages("scales")
install.packages("devtools")
devtools::install_github("gedeck/mlba/mlba")
```

## Data Sources

- **Synthetic data**: Student scores and names created for demonstration
- **mlba::WestRoxbury**: Housing dataset from the Machine Learning for Business Analytics textbook

## Resources

- [W3Schools R Tutorials](https://www.w3schools.com/r/)
- [R for Data Science (2nd ed.)](https://r4ds.hadley.nz/)
- [Tidyverse Style Guide](https://style.tidyverse.org/)
- [Hands-on Programming with R](https://rstudio-education.github.io/hopr/)
