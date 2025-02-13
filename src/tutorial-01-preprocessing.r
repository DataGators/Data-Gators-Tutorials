# The purpose of the below code blocks are to check if the 'datasets'
# and 'ggplot2' packages are installed. If they are not installed,
# Then they will be installed and loaded. Isn't this cool?!
if (!require(datasets)) {
    # Install the 'datasets' package if it is not installed
    install.packages("datasets")
    # Load the 'datasets' package
    library(datasets)
}
if (!require(ggplot2)) {
    install.packages("ggplot2")
    library(ggplot2)
}

# TODO: Load the tutorial dataset from the data folder
# Once you successfully load in this dataset, you can
# use it in place of the iris dataset. Just make sure
# you replace all isntances of the iris dataset so you
# don't get any errors or encounter any confusion when
# executing the code.

# data_path <- "path/{file_name}"
# dataset <- read.csv({data_path})

# Load the iris dataset
data(iris)

# Display the first few rows of the dataset
cat("\nFirst few rows of the iris dataset:\n")
print(head(iris))

# Display the structure of the dataset
cat("\nStructure of the iris dataset:\n")
str(iris)

# Check for any null or NA values in the dataset
cat("\nChecking for NA values in the dataset:\n")
print(any(is.na(iris)))

# If there are any NA values, remove rows with NA values
iris_clean <- na.omit(iris)

# Display the first few rows of the cleaned dataset
cat("\nFirst few rows of the cleaned dataset:\n")
print(head(iris_clean))

# Summary of the cleaned dataset
cat("\nSummary of the cleaned dataset:\n")
summary(iris_clean)

# Data Visualization
cat("\nVisualizing the dataset:\n")



# Scatter plot of Sepal.Length vs Sepal.Width
ggplot(iris_clean, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
    geom_point() +
    labs(title = "Sepal Length vs Sepal Width")

# Data Transformation
cat("\nTransforming the dataset:\n")
# Create a new column for Sepal Area
iris_clean$Sepal.Area <- iris_clean$Sepal.Length * iris_clean$Sepal.Width
cat("\nFirst few rows with Sepal Area:\n")
print(head(iris_clean))

# Correlation Analysis
cat("\nCorrelation analysis:\n")
correlation_matrix <- cor(iris_clean[, 1:4])
print(correlation_matrix)

# Save the cleaned dataset to a CSV file
cat("\nSaving the cleaned dataset to a CSV file:\n")
write.csv(iris_clean, "data/cleaned_iris.csv", row.names = FALSE)
cat("Cleaned dataset saved as 'cleaned_iris.csv'\n")

# You should now have a file saved in the `data` folder. Check it out
# and look over your data. This is something you could try with
# the tutorial dataset. Try to load it in and see what you can find!

# Go back to the top of the code and find the commented code block.
# Remove the comment markers and see if you can figure out how to
# load the tutorial data and carry out pre-processing and a basic analysis
# like we just did on the `iris` dataset.
