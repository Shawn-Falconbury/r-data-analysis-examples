# R Script Study Examples

A collection of R scripts demonstrating fundamental data analysis techniques, following the [Tidyverse style guide](https://style.tidyverse.org/) coding standards.

## Repository Structure

```
R-Script-Study-Examples/
├── README.md
├── Week-1/
│   ├── README.md
│   └── mtcars_exploration.r
└── Week-2/
    ├── README.md
    └── r_fundamentals_week2.r
```

## Weekly Content

### Week 1: Introduction to R
- Basic data exploration using the `mtcars` dataset
- Summary statistics and initial visualization

### Week 2: R Programming Fundamentals
- Package management and configuration
- Data structures (vectors, data frames, factors)
- Data manipulation with tidyverse
- Data partitioning for machine learning
- Normalization and standardization
- Visualization with ggplot2

## Getting Started

### Prerequisites

Install R and RStudio:
- R: https://cran.r-project.org/
- RStudio: https://posit.co/download/rstudio-desktop/

### Common Packages

```r
# Install core packages
install.packages("tidyverse")
install.packages("caret")
install.packages("scales")

# Install mlba package from GitHub (for textbook datasets)
install.packages("devtools")
devtools::install_github("gedeck/mlba/mlba")
```

## Coding Standards

All scripts in this repository follow these conventions:

| Standard | Description |
|----------|-------------|
| File names | Lowercase with underscores, `.r` extension |
| Object names | Lowercase with underscores (e.g., `model_one`) |
| Comments | Extensive comments explaining how, what, and why |
| Scientific notation | Limited using `options(scipen = 2)` |
| Spacing | Single space after commas and around operators |
| Packages | Loaded at top with `library()`, never `install.packages()` |

For complete style guidelines, see the [Tidyverse style guide](https://style.tidyverse.org/).

## References

- [The R Project for Statistical Computing](https://www.r-project.org/)
- [RStudio User Guide](https://docs.posit.co/ide/user/)
- [Tidyverse Style Guide](https://style.tidyverse.org/)
- [R for Data Science, 2nd edition](https://r4ds.hadley.nz/)
- [Hands-on Programming with R](https://rstudio-education.github.io/hopr/)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
