<a name="readme-top"></a>
![GitHub issues](https://img.shields.io/github/issues/clkride/Address_Risk_Detection_Models?style=flat-square)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/clkride/Address_Risk_Detection_Models?style=flat-square)
![GitHub contributors](https://img.shields.io/github/contributors/clkride/Address_Risk_Detection_Models?style=flat-square)
![GitHub watchers](https://img.shields.io/github/watchers/clkride/Address_Risk_Detection_Models?style=flat-square)
![GitHub Repo stars](https://img.shields.io/github/stars/clkride/Address_Risk_Detection_Models?style=flat-square)
![GitHub License](https://img.shields.io/github/license/clkride/Address_Risk_Detection_Models?style=flat-square)
<a href="https://linkedin.com/in/abbas-singapurwala">
<img src="https://img.shields.io/badge/LinkedIn-blue?style=flat&logo=linkedin&labelColor=blue">
</a>

# Project Description

* **Aim**:

To identify policy holders with an increased likelihood of misrepresenting their primary addresses to secure lower vehicle insurance premiums.

* **Business Impact and Rationale**: 
  * Improve the accuracy of underwriting processes by detecting potential misrepresentations in primary addresses.
  * Reduce the risk of financial losses from lower premiums due to potential inaccuracies in policyholders' primary address disclosures.
    
* **Default Scenario**:

Policyholders are not strategically mis-representing their primary addresses to secure lower insurance premiums

* **Conflicting Scenario**:

There are potential patterns indicating that policyholders are strategically mis-representing their primary addresses to secure lower insurance premiums

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# About Dataset

 * **Title**: Insurance Underwriting Mocked Dataset (with social/economic context)
 * **Overview** : This dataset is a simulated and fictitious collection of data designed for demonstration purposes in the context of insurance underwriting. The columns provide information related to policyholders and relevant factors influencing underwriting decisions.
 * **Internal Sources**
   
   1. Policyholder Information: Internal records of policyholders maintained by the insurance company.
   2. Payment History: Internal data reflecting the payment history of policyholders.
   3. Legal Issues Database: Internal database tracking historical legal issues related to policyholders.
  
  * **External Sources**
    1. Crime Rate Data: Datasets from local law enforcement agencies or public sources providing crime rate information.
    2. Income and Home Value Data: Sources such as government census data or real estate databases for average income and home values.
    3. Population Density Data: Data from demographic studies or government records.
    4. Catastrophe Risk Indicators: Sources providing information on natural disaster risks in specific regions.

* **Data Dictionary**: Detailed Description can be found @ [Data_Dictionary.md](https://github.com/clkride/Address_Risk_Detection_Models/blob/main/data%20dictionary/feature_description.md)
* **Data Sample**
    Here's a sample of the first few records in the dataset:
    
| policy_number | car_make  | car_model | car_year | driver_name         | driver_age | driver_gender | driver_license_number | num_vehicle_changes | policy_start_date | non_fault_claims | premium_amount | annual_mileage | infractions | credit_score | claim_amount | num_claims | suspicious_pattern | num_address_changes | current_add_same_as_vehicle_reg | historical_legal_issues | crime_rate | anomalies_payment_history | high_risk_neighborhood | is_individual_policy_holder | is_family_policy_holder | is_long_term_policy_holder | reported_income | is_home_owner | vehicle_registration_address | vehicle_registration_address_verified | debt_to_income_ratio | years_of_employment | avg_income_by_zip_code | population_density | catastrophe_risk_indicator | avg_home_value_by_zip_code | percent_owner_occupied_homes | historical_claim_frequency_by_location |
|---------------|-----------|-----------|----------|---------------------|------------|---------------|-----------------------|--------------------|-------------------|------------------|-----------------|----------------|--------------|--------------|--------------|------------|---------------------|----------------------|----------------------------------|-------------------------|------------|-----------------------------|------------------------|-----------------------------|------------------------|----------------------------|------------------|----------------|-------------------------------|--------------------------------------|----------------------|----------------------|-------------------------|----------------------|--------------------------|-----------------------------|-----------------------------|------------------------------------------|
| 1             | Chevrolet | Avalanche | 2010     | Herculie Gibbetts   | 70         | Male          | 100                   | 4                  | 09/10/2017        | 4                | 536.07          | 24517.53       | 0            | 659          | 1804.88      | 4            | TRUE                | 4                    | FALSE                            | 0                       | 0.98          | 1                       | FALSE                  | TRUE                        | FALSE                  | FALSE                      | 73619.57         | FALSE          | 8FR 1TH                          | confirmed                             | -1.39                | 33.6                 | 54985.46                | -0.48                | 5                          | 471783.84                  | 0.01                        | 167                                      |
| 2             | Suzuki    | SJ        | 1994     | Paxon Tunnoch       | 39         | Genderqueer   | 50                    | 1                  | 14/03/2015        | 1                | 626.37          | 21269.51       | 5            | 760          | 8586.71      | 1            | FALSE               | 4                    | FALSE                            | 0                       | 0.78       | 0                        | FALSE                  | TRUE                        | TRUE                       | FALSE                      | 62769.65         | TRUE           | N5R 54H                          | confirmed                             | 0.71                 | 30.61                | 36521.6                 | -0.38                | 4                          | 492487.23                  | 0                           | 259                                      |
| 3             | GMC       | Safari    | 2004     | Delainey Beidebeke  | 85         | Genderqueer   | 87                    | 1                  | 06/05/2020        | 3                | 590.85          | 18284.56       | 5            | 784          | 2867.25      | 1            | TRUE                | 2                    | TRUE                             | 1                       | 0.68 | 2                        | TRUE                   | TRUE                        | FALSE                  | FALSE                      | 56145.4          | FALSE          | M5T 8H3                   | confirmed                                    | 0.91                 | 7.59                 | 17983.38                | 1.28                 | 1                          | 460364.14                  | -0.02                       | 296                                      |
| 4             | Isuzu     | Rodeo     | 1998     | Morry Batisse       | 42         | Male          | 45                    | 5                  | 27/04/2018        | 6                | 971.4           | 34629.69       | 5            | 649          | 6213.08      | 3            | TRUE                | 1                    | FALSE                            | 0                       | 0.74       | 0                        | TRUE                   | TRUE                        | FALSE                  | FALSE                      | 44337.44         | FALSE          | 48000-000                     | confirmed                             | -0.21                | 7.97                 | 61730.34                | 1.2                  | 4                          | 400259.7                   | 0.02                        | 105                                      |
| 5             | Isuzu     | Hombre    | 1998     | Kellen Longthorne   | 72         | Male          | 97                    | 5                  | 18/10/2015        | 2                | 885.38          | 8225.17        | 2            | 478          | 5420.36      | 10           | FALSE               | 1                    | FALSE                            | 0                       | 0.53      | 1                       | FALSE                  | FALSE                       | FALSE                  | FALSE                      | 64310.5          | FALSE          | 88390-000                     | unconfirmed                           | 0.79                 | 11.47                | 66083.02                | 0.13                 | 2                          | 455473.66                  | -0.01                       | 126                                      |
| 6             | Pontiac   | Bonneville| 1988     | Ange Porch          | 80         | Female        | 87                    | 1                  | 20/08/2021        | 5                | 859.12          | 20393.19       | 3            | 487          | 6418.46      | 6            | FALSE               | 3                    | TRUE                             | 1                       | 0.48   | 2                        | TRUE                  | TRUE                   | TRUE                  | FALSE                          | 593199.33        | FALSE          | H9P                           | confirmed                             | 0.15                 | 18                | 91508.87                | 1.11                 | 4                          | 593199.33                  | 0                           | 238                                      |
                      

    

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Data Exploration

In this phase of the project, I have tried to disclose hidden patterns in the dataset. 

**Exploratory Data Analysis**: Detailed Description can be found @ [EDA.md](https://github.com/clkride/Address_Risk_Detection_Models/blob/main/data%20exploration/data_exploration.md)

* **Key Pattern**:

From the preliminary data analysis (**Plot 2**), I concluded that policyholders aligning their current address with the vehicle registration address might be engaging in practices to secure reduced insurance costs

Insight| &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; Visualization &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
:-------------------------|:-------------------------:
**Premium Paid v/s Current Address same as Vehicle Registration Address** <br/> <br/> When current address is same as vehicle registration <br/> address then its premium tends to be lower. | ![alt text](https://github.com/clkride/Address_Risk_Detection_Models/blob/main/plots/p2.png?raw=true)



<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Hypothesis Testing

### Objective:
To investigate whether the alignment of the current address with the vehicle registration address significantly impacts the premium amount.

### Hypothesis:
- **Null Hypothesis (\(H_0\)):**
 Whether addresses match or not doesn't seem to have a noticeable impact on how much customers pay for their insurance premiums

- **Alternate Hypothesis (\(H_a\)):**
  There is a statistically significant impact of whether addresses match or not on the amount customers pay for their insurance premiums

### Test Name: One Way ANOVA

I conducted a One-Way Analysis of Variance (ANOVA) using a linear regression model to explore the relationship between the alignment of the current address with the vehicle registration address and its impact on the premium amount. 

Code can be found @ [EDA_and_Hypothesis_Testing.R](https://github.com/clkride/Address_Risk_Detection_Models/blob/main/model/eda_and_hypothesis_testing.R)

* **Test Result**:
**Analysis of Variance Table**

| Response: premium_amount            | Df | Sum Sq    | Mean Sq | F value | Pr(>F)   |
|-------------------------------------|----|-----------|---------|---------|----------|
| current_add_same_as_vehicle_reg     | 1  | 81975     | 81975   | 3.9563  | 0.04672* |
| Residuals                           | 9998 | 207163531 | 20720   |         |          |

### Interpretation:
Since the p-value is less than 0.05 significance level, I reject the null hypothesis. There is a statistically significant impact of whether addresses match or not on insurance premiums

### Business Implication:
A significant result implies that policyholders aligning their current address with the vehicle registration address have a meaningful impact on securing lower insurance premiums.


### Additional Results from Hypothesis Tests:

After rigorous exploration and hypothesis testing, the following key verdicts are reached:

* Gender, vehicle registration address verification, and the alignment of current and registration addresses play pivotal roles in determining insurance premiums.
* Historical legal issues and their connection to the congruence of current and vehicle registration addresses suggest a nuanced relationship.
* The number of address changes emerges as a potential red flag for identifying suspicious policyholders.
* Income distribution across locations follows a normal distribution, providing a baseline understanding of the economic landscape.

Results can be found @ [Hypothesis_Test_Results.md](https://github.com/clkride/Address_Risk_Detection_Models/blob/main/data%20exploration/hypothesis_test_results.md)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Modeling Approach 

**Model Used**: Local Outlier Factor (LOF) for anomaly detection

Model Code be found @ [LOF.ipynb](https://github.com/clkride/Address_Risk_Detection_Models/blob/main/model/lof_anomaly_detection.ipynb)

**Model Description**: By comparing the local density of a sample to the local densities of its neighbors, one can identify samples that have a substantially lower density than their neighbors. These are considered outliers.

Steps - 
1. **Data Preparation**: Feature Engineering and Data Transformation of Categorical and Numerical Attributes
2. **Feature Selection**: Select features that are relevant for detecting anomalies
3. **Train-Test Split**: Split the dataset into training set (80%) and test set (20%).
4. **Model Training**: Initialize and Train the LOF Model. Fine tune the Hyper-parameters.
5. **Predict Anomalies**: Predict anomaly scores for each policyholder in test data.
6. **Performance Evaluation**: Plot test and training outliers to evaluate model.

Additional Models Tried @ [kmeans_and_isolation_forest.ipynb](https://github.com/clkride/Address_Risk_Detection_Models/blob/main/model/outlier_detection_models.ipynb)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Model Outcome 

The visualizations show the outliers encircled in red for both the training and test datasets. Outliers are identified based on the LOF scores calculated by the model.

Insight| &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; Visualization &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
:-------------------------|:-------------------------:
**Income distribution by location v/s Current Address same as Vehicle Registration Address** <br/> <br/> **Potential Outliers**: The present address matches/does not match the address of vehicle registration and very high or low level of income by location. | ![alt text](https://github.com/clkride/Address_Risk_Detection_Models/blob/main/plots/model_outcome.png?raw=true)
**Premium Amount v/s Current Address same as Vehicle Registration Address** <br/> <br/> **Potential Outliers**: The present address matches/does not match the address of vehicle registration and very high or low premium amount. | ![alt text](https://github.com/clkride/Address_Risk_Detection_Models/blob/main/plots/outcome_2.png?raw=true)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Conclusions
* **Address Alignment Impact on Premiums**: Policyholders strategically aligning their current address with the vehicle registration address tend to secure lower insurance premiums, as evidenced by a statistically significant impact on premium amounts.
* **Key Factors in Premium Determination**: Gender, vehicle registration address verification, alignment of current and registration addresses, historical legal issues, number of address changes, and income distribution.
  
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Author
 @[Abbas S.](https://github.com/clkride)

## License
The MIT License (MIT)

Copyright (c) 2023 Abbas Singapurwala

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments
Inspiration, code snippets, etc.
* [Choose an Open Source License](https://choosealicense.com)
* [Img Shields](https://shields.io)
* [GitHub Pages](https://pages.github.com)

