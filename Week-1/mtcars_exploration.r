# =============================================================================
# File: mtcars_exploration.r
# Author: [Your Name]
# Course: [Course Name]
# Date: [Date]
# Purpose: Load, explore, and export the built-in mtcars dataset
# Description: This script demonstrates basic data exploration techniques
#              using the mtcars dataset, which contains fuel consumption and
#              automobile design data for 32 vehicles from 1973-74.
# Reference: https://www.rdocumentation.org/packages/datasets/topics/mtcars
# =============================================================================

# -----------------------------------------------------------------------------
# Configuration Settings
# -----------------------------------------------------------------------------

# Limit scientific notation in outputs for better readability
options(scipen = 2)

# -----------------------------------------------------------------------------
# 1. Load the Built-in mtcars Dataset
# -----------------------------------------------------------------------------

# The data() function loads datasets that are built into R or R packages.
# mtcars is part of the base datasets package and is always available.
data(mtcars)

# Confirm the dataset has loaded by printing a message to the console
cat("=== mtcars Dataset Successfully Loaded ===\n\n")

# -----------------------------------------------------------------------------
# 2. Explore the mtcars Data Frame with Three Functions
# -----------------------------------------------------------------------------

# Function 1: summary()
# The summary() function provides descriptive statistics for each variable
# including min, max, median, mean, and quartiles for numeric columns.
cat("--- Summary Statistics for All Variables ---\n")
print(summary(mtcars))
cat("\n")

# Function 2: str()
# The str() function displays the internal structure of an R object.
# It shows the data type, dimensions, and a preview of each column.
cat("--- Data Frame Structure ---\n")
str(mtcars)
cat("\n")

# Function 3: head()
# The head() function displays the first n rows of a data frame.
# By default, it shows 6 rows, which helps verify data was loaded correctly.
cat("--- First 6 Rows of mtcars ---\n")
print(head(mtcars))
cat("\n")

# Additional exploration: Specific summary statistics for mpg (miles per gallon)
# These calculations demonstrate how to extract individual statistics.
cat("--- MPG (Miles Per Gallon) Detailed Statistics ---\n")
cat("Mean MPG:      ", mean(mtcars$mpg), "\n")
cat("Median MPG:    ", median(mtcars$mpg), "\n")
cat("Minimum MPG:   ", min(mtcars$mpg), "\n")
cat("Maximum MPG:   ", max(mtcars$mpg), "\n")
cat("Std Dev MPG:   ", sd(mtcars$mpg), "\n")
cat("\n")

# -----------------------------------------------------------------------------
# 3. Save the mtcars Data Frame as a CSV File
# -----------------------------------------------------------------------------

# The write.csv() function exports a data frame to a CSV file.
# row.names = TRUE preserves the car model names as the first column.
# The file is saved in the current working directory (same as the script).
write.csv(mtcars, "mtcars_data.csv", row.names = TRUE)

# Confirm the file was saved successfully
cat("=== CSV file saved as 'mtcars_data.csv' ===\n")
cat("File location: ", getwd(), "/mtcars_data.csv\n", sep = "")

# =============================================================================
# References
# =============================================================================

# The R Project for Statistical Analysis.
#   https://www.r-project.org/

# RStudio user guide.
#   https://docs.posit.co/ide/user/

# W3Schools R Tutorials.
#   https://www.w3schools.com/r/default.asp

# Grolemund, G. (n.d.). Hands-on Programming with R.
#   https://rstudio-education.github.io/hopr/

# Wickham, H. (n.d.). Tidyverse style guide.
#   https://style.tidyverse.org/

# Wickham, H. & Grolemund, G. (n.d.). R for Data Science, 2nd edition.
#   https://r4ds.hadley.nz/

# Rodrigues, B. (2022). Modern R with the tidyverse.
#   https://modern-rstats.eu/

# Huynh, Y. W. (2019). R for Graduate Students.
#   https://bookdown.org/yih_huynh/Guide-to-R-Book/

# Baruffa, O. (2023). Big Book of R.
#   https://www.bigbookofr.com/

# =============================================================================
# End of Script
# =============================================================================
