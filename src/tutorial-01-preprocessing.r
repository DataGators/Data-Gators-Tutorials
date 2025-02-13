# The purpose of this code block is to check if the 'datasets'
# package is installed. If it is not installed,
# Then it will be installed and loaded. Isn't this cool?!
if (!require(datasets)) {
    # Install the 'datasets' package if it is not installed
    install.packages("datasets")
    # Load the 'datasets' package
    library(datasets)
}
# Load the iris dataset
data(iris)

# Display the first few rows of the dataset
cat("\nFirst few rows of the iris dataset:\n")
print(head(iris))

# Display the structure of the dataset
cat("\nStructure of the iris dataset:\n")
str(iris)

# Check for any null or NA values in the dataset
any(is.na(iris))

# If there are any NA values, remove rows with NA values
iris_clean <- na.omit(iris)

# Display the first few rows of the cleaned dataset
head(iris_clean)


# Summary of the cleaned dataset
# This will give us an overview of the dataset,
# including information such as the mean,
# median, minimum, and maximum values for each variable,
# and the quartile values for each variable. Take note that
# the 2nd and 4th quartile values are represented by
# the median and the maximum values, respectively.

summary(iris_clean)
