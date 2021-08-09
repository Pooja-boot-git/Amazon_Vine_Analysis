# PROJECT OVERVIEW

The purpose of this project is to analyze Amazon reviews written by members of the paid Amazon Vine program. The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. We need to determine if there is any bias toward favorable reviews from Vine members.

## RESULTS

I have used the **home improvement** dataset for this challenge. I have used **PySpark** to extract, transform & load my data in Postgres AWS database and **SQL** for my analysis. 

- There are **266** Vine reviews and **38829** non-vine reviews  
- There are **125** five star reviews for vine reviews
- There are **18246** five star reviews for non vine reviews
- **47%** of Vine reviews are rated five stars 
- **47%** of Non-Vine reviews are rated five stars 

## ADDITIONAL ANALYSIS
- 92% of the reviews are 3 and above star rated for vine reviews

![image](https://user-images.githubusercontent.com/82654977/128650197-e185efcc-f045-472f-b6a6-fe545f1f613b.png)


- 72% of the reviews are 3 and above star rated for non vine reviews

![image](https://user-images.githubusercontent.com/82654977/128650180-29c64666-fe53-4532-a2c5-34bf63912f3c.png)


## SUMMARY: 
As per the data, even though the number of vine reviews is much lesser than the number for non vine reviews but percentage of reviews that are 3 star and above is 92% for paid customers but just 72% for non paid customers. Although, we dont see any bias in reviews when only 5 star reviews are considered but we see a bias towards better reviews in paid customers.
