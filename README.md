# R Script Study Examples

A collection of R scripts demonstrating fundamental data analysis techniques, following the [Tidyverse style guide](https://style.tidyverse.org/) coding standards.

## Repository Structure

```
R-Script-Study-Examples/
├── README.md
└── Week-1/
    ├── README.md
    └── mtcars_exploration.r
```

## Getting Started

### Prerequisites

- [R](https://cran.r-project.org/) (version 4.0 or higher recommended)
- [RStudio](https://posit.co/download/rstudio-desktop/) (optional but recommended)

### Running the Scripts

1. Clone this repository:
   ```bash
   git clone https://github.com/Shawn-Falconbury/R-Script-Study-Examples.git
   ```

2. Open RStudio and set the working directory to the script location

3. Open and run the desired script using:
   - Click **Source** button, or
   - Press `Ctrl+Shift+S`, or
   - Run line-by-line with `Ctrl+Enter`

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
