# <font color=#FE8F77>**Bellabeat Analysis - Google Capstone Project**</font>
Bellabeat, co-founded by Urška Sršen and Sando Mur, is a high-tech company specializing in health-focused smart products, leveraging Sršen's artistic background to create beautifully designed technology aimed at empowering women worldwide. By collecting data on various health metrics like activity, sleep, stress, and reproductive health, Bellabeat provides women with valuable insights into their health and habits. Since its inception in 2013, the company has experienced rapid growth, establishing itself as a leading tech-driven wellness brand for women. Expanding globally, Bellabeat distributes its products through both online retailers and its e-commerce platform. While investing in traditional advertising channels, the company heavily focuses on digital marketing, utilizing platforms like Google, Facebook, Instagram, Twitter, YouTube, and the Google Display Network. Sršen recognizes the importance of leveraging consumer data for further growth and has tasked the marketing analytics team with analyzing smart device usage data to inform future marketing strategies.  
  
## <font color=#FE8F77>Data Preparation</font>  
* **Data Source**  
The fitbit dataset employed for this analysis was curated by Mobius, the dataset is composed on activity of thirty eligible fitbit users who consented to the submission of their personal tracker data and was generated via a distributed survey via Amazon Mechanical Turk between 03.12.2016 - 05.12.2016. The dataset can be found [here](https://www.kaggle.com/datasets/arashnic/fitbit). 
  
* **Data Accessibility**  
The dataset is available publicly for use, according to the metadata for the dataset, the dataset has been dedicated to the public domain implying the freedom to copy, edit and distribute the work for even commercial purposes.  
  
* **About the Data**  
The dataset is composed of 18 files, each composed of user activity records either on a daily, hourly, minutes or second-wise basis. Some of the activities tracked include but not limited to; sleep, heart rate, steps, intensities, etc.  
  
* **Data Limitations**
The dataset was generated with the information of only 30 users, hence the analysis will be done at the risk of sampling bias, because the sample size of 30 users is not representative of total user base. Another limitation encountered, is the fact that the data is not current, as well as the limited time in which the survey was carried out.
  
## <font color=#FE8F77>Analysis</font>
The analysis of the fitbit dataset can be found [here](https://github.com/seungisanrin/bellabeat-analysis/blob/main/bellabeat-analysis.ipynb).  
  
# <font color=#FE8F77>**Recommendation**</font>  
This analysis was conducted with data collected from 30 users to determine the pattern of usage of the fitbit, and use the analysis to develop insights for the Bellabeat marketing analytics team. However, the dataset is limited as it was conducted with the data of 30 users, which is not representative of the sample set. And the timeframe of the dataset is limited as well.
  
From the analysis concluded, the following trends were observed amongst users with the corresponding recommendation.  
  
|| Trend Observed | Recommendation |
|:--------:|:--------|:--------|
|1.|Approximately 42% of users utilised their fitbits daily within the month of observation.|Phone app reminders every morning to remind users to wear their fitbits to track their daily activities.|
|2.|Only 58.3% of users on average walk more than the recommended 10,000 steps daily.|Watch reminders to get users to walk more, or activity tracker to show users their daily walking goals.|
|3.|Approximately 54% of users do not get the recommended 7 hours of sleep.|Provide a setting for users to set sleeping periods and send reminders to users recommending sleep.|
