# Glass-Type-Classification-with-K-Nearest-Neighbors
This project focuses on applying data science techniques to classify different types of glass using the K-Nearest Neighbors (KNN) algorithm. The glass dataset, sourced from the UCI Machine Learning Repository, contains various chemical components of glass and their corresponding types. The goal is to accurately predict the type of glass based on its chemical composition.

## Key Features:

### 1. Data Preprocessing:
- **Standardization:** The features (chemical components) are standardized to ensure they have a mean of 0 and a standard deviation of 1. This step is crucial for the KNN algorithm, which is sensitive to the scale of the data.
- **Handling Missing Values:** The dataset is checked for any missing values and cleaned accordingly to ensure the quality of the data.

### 2. Exploratory Data Analysis (EDA):

- **Correlation Analysis:** The project includes a correlation analysis using the corrplot package to understand the relationships between different chemical components.

### 3. Data Splitting:

- **Train-Test Split:** The dataset is split into training (70%) and testing (30%) sets to evaluate the performance of the model.

### 4. Model Building and Evaluation:
  
- **K-Nearest Neighbors (KNN):** The KNN algorithm is implemented using the class library in R.
- **Hyperparameter Tuning:** Different values of 
𝑘
k (number of neighbors) are tested to find the optimal value that minimizes the error rate.

- **Model Accuracy:** The accuracy of the model is calculated, and a confusion matrix is generated to evaluate its performance. The model achieved an accuracy of 80% with 
𝑘
=
3
k=3.

### 5. Visualization:

- **Error Rate Plot:** A plot is generated using ggplot2 to visualize the error rate for different values of 
𝑘
k, helping to identify the optimal number of neighbors.

This project demonstrates the application of data preprocessing, exploratory data analysis, model building, and evaluation techniques in data science. It provides insights into the effectiveness of the KNN algorithm for classification tasks and the importance of selecting the appropriate hyperparameters for optimal model performance.

## Technologies and Libraries Used:
- **R Programming Language**
- **Libraries: caTools, dplyr, ggplot2, caret, class, corrplot**

By working through this project, one can gain a deeper understanding of the K-Nearest Neighbors algorithm and its application in classification problems, as well as essential data science practices in data preprocessing and model evaluation. ​
