# Load the dataset
file_path <- "SalesForCourse_quizz_table.csv"
data <- read.csv(file_path)

# View the first few rows of the dataset
head(data)

# View column names
colnames(data)

# Remove unnecessary columns
data_cleaned <- subset(data, select = -c(Column1, index))

# View the cleaned dataset
head(data_cleaned)

# Remove rows with null values
data_cleaned_new <- na.omit(data_cleaned)

# View the dataset after removing null values
head(data_cleaned_new)

#Save the new Cleaned Data
write.csv(data_cleaned_new, "SalesForCourse_quizz_table_cleaned.csv", row.names = FALSE)
