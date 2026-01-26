# Week 1: mtcars Dataset Exploration

This script demonstrates fundamental R data exploration techniques using the built-in `mtcars` dataset.

## Script Overview

**File:** `mtcars_exploration.r`

### Purpose

1. Load a built-in R dataset
2. Explore data using multiple functions
3. Export data to CSV format

## The mtcars Dataset

The `mtcars` dataset contains fuel consumption and automobile design data for 32 vehicles extracted from the 1974 Motor Trend magazine.

### Variables (11 total)

| Variable | Description | Units |
|----------|-------------|-------|
| `mpg` | Miles per gallon | mpg |
| `cyl` | Number of cylinders | - |
| `disp` | Displacement | cubic inches |
| `hp` | Gross horsepower | hp |
| `drat` | Rear axle ratio | - |
| `wt` | Weight | 1000 lbs |
| `qsec` | 1/4 mile time | seconds |
| `vs` | Engine shape | 0 = V-shaped, 1 = straight |
| `am` | Transmission | 0 = automatic, 1 = manual |
| `gear` | Number of forward gears | - |
| `carb` | Number of carburetors | - |

### Dataset Dimensions

- **Observations:** 32 vehicles
- **Variables:** 11 attributes

## Functions Demonstrated

| Function | Purpose | Example Output |
|----------|---------|----------------|
| `data()` | Load built-in datasets | Loads mtcars into environment |
| `summary()` | Descriptive statistics | Min, max, median, mean, quartiles |
| `str()` | Data structure | Types, dimensions, column preview |
| `head()` | Preview first rows | First 6 rows of data |
| `mean()` | Calculate mean | Average value |
| `median()` | Calculate median | Middle value |
| `min()` | Find minimum | Smallest value |
| `max()` | Find maximum | Largest value |
| `sd()` | Standard deviation | Measure of spread |
| `write.csv()` | Export to CSV | Creates external file |

## How to Run

### Option 1: RStudio

1. Open `mtcars_exploration.r` in RStudio
2. Click **Source** or press `Ctrl+Shift+S`
3. View output in the Console pane

### Option 2: Command Line

```bash
Rscript mtcars_exploration.r
```

## Expected Output

```
=== mtcars Dataset Successfully Loaded ===

--- Summary Statistics for All Variables ---
      mpg             cyl             disp      ...

--- Data Frame Structure ---
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 ...
 ...

--- First 6 Rows of mtcars ---
                   mpg cyl disp  hp drat    wt ...
Mazda RX4         21.0   6  160 110 3.90 2.620 ...
...

--- MPG (Miles Per Gallon) Detailed Statistics ---
Mean MPG:       20.09062 
Median MPG:     19.2 
Minimum MPG:    10.4 
Maximum MPG:    33.9 
Std Dev MPG:    6.026948 

=== CSV file saved as 'mtcars_data.csv' ===
```

## Output Files

| File | Description |
|------|-------------|
| `mtcars_data.csv` | Exported dataset with row names preserved |

## Key Concepts Learned

- Loading built-in R datasets with `data()`
- Exploring data frames with `summary()`, `str()`, and `head()`
- Accessing columns using the `$` operator (e.g., `mtcars$mpg`)
- Calculating descriptive statistics
- Exporting data to CSV files

## References

- [R Documentation: mtcars](https://www.rdocumentation.org/packages/datasets/topics/mtcars)
- [Tidyverse Style Guide](https://style.tidyverse.org/)
- [R for Data Science](https://r4ds.hadley.nz/)
