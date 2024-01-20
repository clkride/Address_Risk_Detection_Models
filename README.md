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


# Table of Contents
- [Project Description](#project-description)
- [About Dataset](#about-dataset)
- [Data Exploration](#data-exploration)
- [Hypothesis Testing](#hypothesis-testing)
- [Modeling Approach](#modeling-approach)
- [Model Outcome](#model-outcome)
- [Feature Importance](#feature-importance)
- [Business Implications](#business-implications)
- [Author](#author)
- [License](#license)
- [Acknowledgments](#acknowledgments)

# Project Description

**Aim** - 

To identify policy holders with an increased likelihood of misrepresenting their primary addresses to secure lower insurance premiums by leveraging a combination of internal and external datasets.

**Null Hypothesis** - 

Policyholders are not strategically mis-representing their primary addresses to secure lower insurance premiums

**Alternate Hypothesis** - 

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
    1. Crime Rate Data: External datasets from local law enforcement agencies or public sources providing crime rate information.
    2. Income and Home Value Data: External sources such as government census data or real estate databases for average income and home values.
    3. Population Density Data: External datasets from demographic studies or government records.
    4. Catastrophe Risk Indicators: External sources providing information on natural disaster risks in specific regions.

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
                      

    
* **Data Dictionary**: Detailed Description can be found @ [Data_Dictionary.md](https://github.com/clkride/Address_Risk_Detection_Models/blob/main/data%20dictionary/feature_description.md)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Data Exploration

In this phase of the project, I have tried to disclose hidden pattern in the dataset.The key insights are as follows - 

Insight| &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; Visualization &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
:-------------------------|:-------------------------:
 Plot1: Premium Paid v/s Vehicle Registration Address Verified or Not  <br/> <br/> When vehicle registration address is not confirmed,<br/> the premium paid tends to be lower. | ![alt text](https://github.com/clkride/Address_Risk_Detection_Models/blob/main/plots/Premium_Amount_by_Confirmed_Vehicle_Reg_Address.png?raw=true)
  Plot2: Histogram of Duration with Subscription Overlay <br/> <br/> Subscription declines when the duration of call<br/> is close to 50 min. However, the outcome is most <br/>certainly 'yes' if the duration is close to 65 min. <br/>and 'no' when the duration exceeds 65 minutes. | ![alt text](https://github.com/clkride/Feature_Importance_ANN/blob/main/images/duration_limits.png?raw=true)
 Plot3: Months v/s Subscription <br/> <br/> Campaigns are most successful in months of - <br/> Dec, Mar, Oct, and Sep. | ![alt text](https://github.com/clkride/Feature_Importance_ANN/blob/main/images/months_vs_campaign_outcome.png?raw=true)
 Plot4: Job Type v/s Subscription <br/> <br/> Surprisingly, students and retired people are<br/> more likely to subscribe for a term deposit. | ![alt text](https://github.com/clkride/Feature_Importance_ANN/blob/main/images/job_type_vs_subscription.png?raw=true)

From the preliminary data analysis, I concluded that 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Hypothesis Testing

# Modeling Approach 
Steps - 


# Model Outcome 


# Feature Importance

# Business Implications

# Author

# License

# Acknowledgments

