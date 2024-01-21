# Import Libraries
library(ggplot2)
library(dplyr)

# Load Dataset
data <- read.csv("C:/Users/abbas/OneDrive/Desktop/Practice Datasets/Desjardins Project/Dataset.csv")


# EDA 

# Create a boxplot
boxplot(premium_amount ~ vehicle_registration_address_verified, data = data,
        +         xlab = "Vehicle Address Verified", ylab = "Premium Paid")

# Create a boxplot with mean values
ggplot(data, aes(x = vehicle_registration_address_verified, y = premium_amount)) +
  +   geom_boxplot() +
  +   stat_summary(fun=mean, geom="point", shape=18, size=3, color="red", position=position_dodge(0.75)) +
  +   labs(x = "Vehicle Address Verified", y = "Premium Paid") +
  +   theme_minimal()

# Create a ggplot with side-by-side boxplots and mean values
ggplot(data, aes(x = current_add_same_as_vehicle_reg, y = premium_amount)) +
  +   geom_boxplot(width = 0.5, position = position_dodge(width = 0.75)) +
  +   stat_summary(fun=mean, geom="text", aes(label=sprintf("%.2f", ..y..)),
                   +                position=position_dodge(0.75), vjust=-0.5, color="blue", size=3) +
  +   labs(x = "Current Address same as Vehicle Registration Address", y = "Premium Paid") +
  +   theme_minimal()

data_true <- data %>% filter(suspicious_pattern == TRUE)

# Create a ggplot for filtered data
ggplot(data_true, aes(x = factor(num_address_changes))) +
  +   geom_bar(fill = "gray", color = "black", stat = "count") +
  +   labs(title = "Clustered Bar Chart of Suspicious Pattern by Number of Address Changes",
           +        x = "Number of Address Changes",
           +        y = "Count") +
  +   theme_minimal()

# Hypothesis Testing 

# Assuming your data frame is named 'data'
# Create a contingency table
contingency_table_1 <- table(data$historical_legal_issues, data$current_add_same_as_vehicle_reg)

# Perform chi-square test
chi_squared_test_1 <- chisq.test(contingency_table_1)
print(chi_squared_test_1)

# Create a contingency table
contingency_table_2 <- table(data$high_risk_neighborhood, data$historical_legal_issues)

# Perform chi-square test
chi_squared_test_2 <- chisq.test(contingency_table_3)
print(chi_squared_test_2)



# ANOVA
anova(lm(premium_amount ~ current_add_same_as_vehicle_reg, data = data))


# First Model
model <- lm(anomalies_payment_history ~ credit_score + infractions + catastrophe_risk_indicator, data = data)
summary(model)

# Second Model 
model <- glm(high_risk_neighborhood ~ historical_legal_issues, 
             +              data = data, family = "binomial")
summary(model)

# Third Model
model <- lm(num_vehicle_changes ~ crime_rate + avg_income_by_zip_code, data = data)
summary(model)

# Fourth Model
model <- glm(current_add_same_as_vehicle_reg ~ reported_income + population_density 
             +               + historical_legal_issues+ infractions + premium_amount + credit_score, 
             +              data = data, family = "binomial")
summary(model)