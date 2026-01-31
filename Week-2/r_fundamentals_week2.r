# =============================================================================
# R Programming Fundamentals - Week 2
# Description: This script demonstrates 12 R syntax and programming 
#              fundamentals including data manipulation, visualization,
#              and machine learning preparation techniques.
# =============================================================================

# -----------------------------------------------------------------------------
# FUNDAMENTAL 1: Loading Packages with library()
# -----------------------------------------------------------------------------
# The library() function loads packages that extend R's functionality.
# Packages should be loaded at the top of the script, and each package
# should include a comment explaining its purpose.
# Source: https://style.tidyverse.org/syntax.html
# Source: https://www.w3schools.com/r/r_packages.asp
# -----------------------------------------------------------------------------

library(tidyverse)    # Data manipulation (dplyr) and visualization (ggplot2)
library(caret)        # Machine learning toolkit for partitioning and training
library(scales)       # Data rescaling functions for normalization
library(mlba)         # Textbook datasets for Machine Learning for Business Analytics

# -----------------------------------------------------------------------------
# FUNDAMENTAL 2: Setting Options for Scientific Notation
# -----------------------------------------------------------------------------
# The options() function controls R's global settings. Setting scipen limits
# scientific notation in outputs, making numbers more readable.
# Source: https://style.tidyverse.org/
# -----------------------------------------------------------------------------

options(scipen = 2)

# -----------------------------------------------------------------------------
# FUNDAMENTAL 3: Setting Random Seed for Reproducibility
# -----------------------------------------------------------------------------
# The set.seed() function ensures reproducible random number generation.
# Source: https://r4ds.hadley.nz/
# -----------------------------------------------------------------------------

set.seed(657)

# -----------------------------------------------------------------------------
# FUNDAMENTAL 4: Creating and Assigning Variables
# -----------------------------------------------------------------------------
# In R, the assignment operator <- assigns values to variables. Variable names
# should be lowercase with underscores separating words (snake_case).
# Source: https://www.w3schools.com/r/r_variables.asp
# Source: https://style.tidyverse.org/syntax.html#object-names
# -----------------------------------------------------------------------------

course_number <- 657
course_name <- "Machine Learning for Business Analytics"
current_week <- 2

# Print variable values
print(paste("Course:", course_name))
print(paste("Week:", current_week))

# -----------------------------------------------------------------------------
# FUNDAMENTAL 5: Creating Vectors with c()
# -----------------------------------------------------------------------------
# The c() function combines values into a vector, R's fundamental data structure.
# Vectors can hold numeric, character, or logical values.
# Source: https://www.w3schools.com/r/r_vectors.asp
# Source: https://rstudio-education.github.io/hopr/r-objects.html
# -----------------------------------------------------------------------------

# Numeric vector of student scores
student_scores <- c(85, 92, 78, 95, 88, 76, 91, 84, 89, 93)

# Character vector of student names
student_names <- c("Alice", "Bob", "Carol", "David", "Eve",
                   "Frank", "Grace", "Henry", "Ivy", "Jack")

# Calculate basic statistics on vectors
mean_score <- mean(student_scores)
median_score <- median(student_scores)
min_score <- min(student_scores)
max_score <- max(student_scores)

print(paste("Mean score:", round(mean_score, 2)))
print(paste("Median score:", median_score))
print(paste("Score range:", min_score, "to", max_score))

# -----------------------------------------------------------------------------
# FUNDAMENTAL 6: Creating Data Frames from Vectors
# -----------------------------------------------------------------------------
# Data frames are R's primary structure for tabular data. Each column is a
# vector, and columns can have different data types.
# Source: https://www.w3schools.com/r/r_data_frames.asp
# Source: https://r4ds.hadley.nz/data-transform.html
# -----------------------------------------------------------------------------

# Create a data frame from vectors
student_data <- data.frame(
  name = student_names,
  score = student_scores,
  passed = student_scores >= 80
)

# View data frame structure
print("Student data frame structure:")
str(student_data)

# View first few rows
print("First 6 rows of student data:")
head(student_data)

# Get dimensions (rows x columns)
print(paste("Dimensions:", nrow(student_data), "rows x", ncol(student_data), "columns"))

# -----------------------------------------------------------------------------
# FUNDAMENTAL 7: Loading Data from a Package (mlba)
# -----------------------------------------------------------------------------
# The mlba package contains datasets from the textbook. Loading data from
# packages uses the syntax package::dataset or by calling the dataset after
# loading the package with library().
# Source: https://github.com/gedeck/mlba-R-code
# Source: https://r4ds.hadley.nz/data-import.html
# -----------------------------------------------------------------------------

# Load the West Roxbury housing dataset from the mlba package
housing_df <- mlba::WestRoxbury

# Examine the structure of the housing data
print("Housing data frame structure:")
str(housing_df)

# View first few rows
print("First 6 rows of housing data:")
head(housing_df)

# Get dimensions
print(paste("Housing data dimensions:", nrow(housing_df), "rows x", 
            ncol(housing_df), "columns"))

# Summary statistics for the housing data
print("Summary statistics for housing data:")
summary(housing_df)

# -----------------------------------------------------------------------------
# FUNDAMENTAL 8: Subsetting Data Frames
# -----------------------------------------------------------------------------
# Data frames can be subset using bracket notation [rows, columns] or the $
# operator for individual columns. This is essential for data exploration.
# Source: https://rstudio-education.github.io/hopr/r-objects.html#selecting-values
# Source: https://www.w3schools.com/r/r_data_frames_access.asp
# -----------------------------------------------------------------------------

# Select specific rows (first 10 houses)
first_ten_houses <- housing_df[1:10, ]
print("First 10 houses:")
print(first_ten_houses)

# Select specific column by name
all_values <- housing_df$TOTAL.VALUE
print(paste("Number of home values:", length(all_values)))
print(paste("Average home value:", round(mean(all_values), 2)))

# Select rows meeting a condition (houses with more than 8 rooms)
large_houses <- housing_df[housing_df$ROOMS > 8, ]
print(paste("Number of houses with more than 8 rooms:", nrow(large_houses)))

# Select specific rows and columns together
subset_data <- housing_df[1:5, c("TOTAL.VALUE", "ROOMS", "BEDROOMS")]
print("Subset of first 5 houses with selected columns:")
print(subset_data)

# -----------------------------------------------------------------------------
# FUNDAMENTAL 9: Using factor() for Categorical Variables
# -----------------------------------------------------------------------------
# The factor() function converts variables to categorical factors with defined
# levels. Factors are essential for ML algorithms and proper data analysis.
# Source: https://r4ds.hadley.nz/factors.html
# Source: https://www.w3schools.com/r/r_factors.asp
# -----------------------------------------------------------------------------
 
# Convert REMODEL to a factor variable in the housing data
housing_df$REMODEL <- factor(housing_df$REMODEL)

# Check the levels of the factor
print("REMODEL factor levels:")
print(levels(housing_df$REMODEL))

# View the distribution of the factor
print("REMODEL distribution:")
print(table(housing_df$REMODEL))

# Create grade categories for student data based on scores
student_data$grade <- cut(student_data$score,
                          breaks = c(0, 60, 70, 80, 90, 100),
                          labels = c("F", "D", "C", "B", "A"),
                          right = TRUE)

# Convert to factor and check levels
student_data$grade <- factor(student_data$grade)
print("Student grade levels:")
print(levels(student_data$grade))
print("Student grade distribution:")
print(table(student_data$grade))

# -----------------------------------------------------------------------------
# FUNDAMENTAL 10: Using the Pipe Operator |>
# -----------------------------------------------------------------------------
# The native pipe operator |> sequences functions for readability. Each pipe
# should be followed by a new line per coding standards.
# Source: https://r4ds.hadley.nz/data-transform.html#sec-the-pipe
# -----------------------------------------------------------------------------

# Using pipe to chain operations on housing data
expensive_houses <- housing_df |>
  filter(TOTAL.VALUE > 400) |>
  select(TOTAL.VALUE, ROOMS, BEDROOMS, FLOORS) |>
  arrange(desc(TOTAL.VALUE)) |>
  head(10)

print("Top 10 most expensive houses (value > 400):")
print(expensive_houses)

# Using pipe with student data
high_performers <- student_data |>
  filter(score >= 85) |>
  select(name, score, grade) |>
  arrange(desc(score))

print("High performing students (score >= 85):")
print(high_performers)

# -----------------------------------------------------------------------------
# FUNDAMENTAL 11: Data Partitioning with sample()
# -----------------------------------------------------------------------------
# The sample() function randomly selects elements, essential for splitting
# data into training and test sets to prevent overfitting.
# Source: https://r4ds.hadley.nz/
# Source: Machine Learning for Business Analytics textbook, Chapter 2
# -----------------------------------------------------------------------------

# Partition housing data into training (60%) and holdout (40%) sets
train_rows <- sample(row.names(housing_df), nrow(housing_df) * 0.6)
train_df <- housing_df[train_rows, ]

holdout_rows <- setdiff(row.names(housing_df), train_rows)
holdout_df <- housing_df[holdout_rows, ]

print(paste("Training set size:", nrow(train_df)))
print(paste("Holdout set size:", nrow(holdout_df)))
print(paste("Total records:", nrow(train_df) + nrow(holdout_df)))

# Verify the split worked correctly
print(paste("Original dataset size:", nrow(housing_df)))

# -----------------------------------------------------------------------------
# FUNDAMENTAL 12: Data Normalization with scale() and rescale()
# -----------------------------------------------------------------------------
# The scale() function performs z-transformation (standardization), converting
# values to standard deviations from the mean. The rescale() function from the
# scales package transforms values to a 0-1 range. Both are essential for
# distance-based machine learning algorithms.
# Source: https://r4ds.hadley.nz/
# Source: https://modern-rstats.eu/
# -----------------------------------------------------------------------------

# Standardize home values using z-transformation
standardized_values <- scale(housing_df$TOTAL.VALUE)
print("Original home values (first 10):")
print(housing_df$TOTAL.VALUE[1:10])
print("Standardized home values (first 10):")
print(round(standardized_values[1:10], 3))

# Rescale to 0-1 range using scales package
rescaled_values <- rescale(housing_df$TOTAL.VALUE)
print("Rescaled home values to 0-1 range (first 10):")
print(round(rescaled_values[1:10], 3))

# Demonstrate on student scores as well
print("Original student scores:")
print(student_scores)
print("Standardized student scores:")
print(round(scale(student_scores), 3))

# -----------------------------------------------------------------------------
# FUNDAMENTAL 13 (BONUS): Creating Visualizations with ggplot2
# -----------------------------------------------------------------------------
# The ggplot2 package creates publication-quality visualizations.
# All plots should have title, axis labels, and appropriate subtitles.
# Source: https://r4ds.hadley.nz/data-visualize.html
# -----------------------------------------------------------------------------

# Create a histogram of home values from the housing dataset
value_histogram <- ggplot(housing_df, aes(x = TOTAL.VALUE)) +
  geom_histogram(bins = 30, fill = "steelblue", color = "white") +
  labs(title = "Distribution of Home Values in West Roxbury",
       subtitle = "R Programming Fundamentals - Week 2",
       x = "Total Value (in thousands)",
       y = "Number of Homes") +
  theme_minimal()

print(value_histogram)

# Create a scatter plot of rooms vs. total value
rooms_value_plot <- ggplot(housing_df, aes(x = ROOMS, y = TOTAL.VALUE)) +
  geom_point(alpha = 0.5, color = "darkgreen") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Relationship Between Rooms and Home Value",
       subtitle = "R Programming Fundamentals - Week 2",
       x = "Number of Rooms",
       y = "Total Value (in thousands)") +
  theme_minimal()

print(rooms_value_plot)

# Create a bar chart of REMODEL categories
remodel_plot <- ggplot(housing_df, aes(x = REMODEL, fill = REMODEL)) +
  geom_bar() +
  labs(title = "Distribution of Home Remodel Status",
       subtitle = "R Programming Fundamentals - Week 2",
       x = "Remodel Category",
       y = "Number of Homes") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2")

print(remodel_plot)

# Create a bar chart of student grade distribution
grade_plot <- ggplot(student_data, aes(x = grade, fill = grade)) +
  geom_bar() +
  labs(title = "Distribution of Student Grades",
       subtitle = "R Programming Fundamentals - Week 2",
       x = "Grade Category",
       y = "Number of Students") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set1")

print(grade_plot)

# -----------------------------------------------------------------------------
# Script Completion
# -----------------------------------------------------------------------------

finished_time <- format(Sys.time(), "%A %b %d, %Y at %R")
print(paste("Script completed on:", finished_time))

# =============================================================================
# END OF SCRIPT
# =============================================================================
