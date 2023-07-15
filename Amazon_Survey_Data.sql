/****** Script for SelectTopNRows command from SSMS  ******/

--to view the data
  SELECT *
  FROM [Amazon Survey].[dbo].[Amazon_Survey]

  -- To REMOVE THE MINUTE FROM DATE
 -- SELECT CONVERT(Date, GETDATE())

 ----to get the unique value of the columns
 select distinct Gender
from Amazon_Survey

 ----to get the unique value of the columns
 select distinct Age
				 Gender
from Amazon_Survey


-----------*****-----------
-- to find out the gender and age of the customers who searches multiple pages in Search_Result_Exploration. 

 -- to find out the gender and age of the customers who searches multiple pages in Search_Result_Exploration. 
SELECT * 
 FROM Amazon_Survey
 WHERE Rating_Accuracy  <= 2;
 --THIS SHOWS THAT 237 CUSTOMERS RATED AMAZON SERVICES LESS THAN 2 OUT OF 603. THERE IS NEED TO ALSO NOTE THE IMPROVEMENT AREA THEY MARKED.

 SELECT * 
 FROM Amazon_Survey
 WHERE Purchase_Frequency = 'Once a month';
 --107 CUSTOMERS SHOP ONCE A MONTH AND DIFFERENT PRODUCT CATEGORIES.

 SELECT * 
 FROM Amazon_Survey
 WHERE Purchase_Frequency = 'Less than once a month';
 ---124 CUSTOMERS PURCHASE LEAA THAN ONCE A MONTH

 ----to get the unique value of the Purchase_Categories columns
 select distinct Purchase_Categories
from Amazon_Survey

 ----to get the unique value of the Purchase_Categories columns with the corresponding gender and age 
 select distinct Purchase_Categories,
		age,
		Gender
from Amazon_Survey

 -- the customers whose Browsing_Frequency is rarely.
SELECT	*
 FROM Amazon_Survey
 WHERE  Browsing_Frequency ='Rarely';
 77 CUSTOMERS RARELY BROWSE AND VERY FEW WERE NOT WELL SATISFIED

  --To observe the Personalized_Recommendation_Frequency = "No"
 SELECT *
FROM Amazon_Survey
WHERE Personalized_Recommendation_Frequency = 'No';
--251 CUSTOMERS HAVE NOT MADE A PURCHASE BASED ON PERSONALIZED PRODUCT RECOMMENDATIONS FROM AMAZON.

--To observe the Personalized_Recommendation_Frequency = "Sometimes"
 SELECT *
FROM Amazon_Survey
WHERE Personalized_Recommendation_Frequency = 'Sometimes';
---220 OUT 603 PEOPLE SOMETIMES RECEIVE PERSONALIZED PRODUCT RECOMMENDATION FROM AMAZON.

--To observe the Search_Result_Exploration = "first page"
 SELECT *
FROM Amazon_Survey
WHERE Search_Result_Exploration = 'First page';
--160 CUTOMERS WHO SEARCH JUST THE FIRST PAGE OF RESULT EXPLORATION

--To observe the Customer_Reviews_Importance = 1
 SELECT *
FROM Amazon_Survey
WHERE Customer_Reviews_Importance = 1;
--169 CUSTOMERS DO NOT CONSIDER OTHER CUSTOMERS REVIEW IMPORTANT BEFORE SHOPPING

--To observe the Cart_Completion_Frequency = rarely
 SELECT *
FROM Amazon_Survey
WHERE Cart_Completion_Frequency = 'Rarely';
--72 CUSTOMERS OUT OF 603 RARELY SHOP ALL THE PRODUCTS IN THEIR CART 

 ----to get the unique value of the columns
 select distinct Cart_Abandonment_Factors
from Amazon_Survey

--To observe the Cart_Abandonment_Factors = Changed my mind or no longer need the item
 SELECT *
FROM Amazon_Survey
WHERE Cart_Abandonment_Factors = 'Changed my mind or no longer need the item';
--241 OUT OF 603 CUSTOMERS ABANDONED THERI CART REASON BEING "CHANGED MY MIND OR NO LONGER NEED THE ITEM"

--To observe the Cart_Abandonment_Factors = High shipping costs
 SELECT *
FROM Amazon_Survey
WHERE Cart_Abandonment_Factors = 'High shipping costs';
--70 CUSTOMERS ABANDONED THERI CARTS DUE TO HIGH SHIPPING COST

--To observe the Cart_Abandonment_Factors = Found a better price elsewhere
 SELECT *
FROM Amazon_Survey
WHERE Cart_Abandonment_Factors = 'Found a better price elsewhere';
--255 ABANDONED THEIR CARTS BECAUSE THEY FOUND A BETTER PRICE ELSEWHERE

--To observe the Cart_Abandonment_Factors = Others
 SELECT *
FROM Amazon_Survey
WHERE Cart_Abandonment_Factors = 'Others';
---36 CUSTOMERS ABANDONED THERI CARTS FOR OTHER REASONS

--To observe the Review_Left = No
 SELECT *
FROM Amazon_Survey
WHERE Review_Left = 'No';
---283 CUSTOMERS DID NOT LEAVE REVIEW AFTER SHOPPING

--To observe the Review_Reliability = rarely
 SELECT *
FROM Amazon_Survey
WHERE Review_Reliability = 'Rarely';
--41 CUSTOMERS RARELY RELY ON REVIEW OF OTHER CUSTOMERS

--To observe the Review_Helpfulness = no
 SELECT *
FROM Amazon_Survey
WHERE Review_Helpfulness = 'No';
--138 CUSTOEMRS DO NOT FIND REVIEWS HELPFUL

--To observe the Rating_Accuracy   = < 2
 SELECT *
FROM Amazon_Survey
WHERE Rating_Accuracy  <= 2;
--237 CUSTOMERS FEEL THAT THE RATING RELEVANCE AND ACCURACY OF THE RECOMMENDATIONS YOU RECEIVE.

--To observe the Shopping_Satisfaction   = < 2
 SELECT *
FROM Amazon_Survey
WHERE Shopping_Satisfaction  <= 2;
---309 CUSTOMERS RATEDTHERI SHOPPING SATISFACTION LESS THAN 2

 ----to get the unique value of the columns
 select distinct Service_Appreciation
from Amazon_Survey

--To observe the Service_Appreciation = Customer service
 SELECT *
FROM Amazon_Survey
WHERE Service_Appreciation = 'Customer service';
--ONLY 2 CUSTOMERS APPRECIATE THE CUSTOMER SERVICES OF AMAZON AND RATED SHOPPING SATISFACTION 1.

--To observe the Service_Appreciation = Quick delivery
 SELECT *
FROM Amazon_Survey
WHERE Service_Appreciation = 'Quick delivery';
-- 1 FEMALE CUSTOMER APPRECIATES THE QUICK DELIVERY OF AMAZON SERVICES. SHE WANTS AMAZON TO IMPROVE ON THER REDUCE PACAGING WASTE


--To observe the Service_Appreciation = All the above
 SELECT *
FROM Amazon_Survey
WHERE Service_Appreciation = 'All the above';
--A 39 YEARS OLF CUSTOMERS APPRECIATES ALL THE SERVICES OF AMAZON 

--To observe the Service_Appreciation = Competitive prices
 SELECT *
FROM Amazon_Survey
WHERE Service_Appreciation = 'Competitive prices';
--182 CUSTOMERS APPRECIATE THE COMPETITIVE PRICES

--To observe the Service_Appreciation = Wide product selection
 SELECT *
FROM Amazon_Survey
WHERE Service_Appreciation = 'Wide product selection';
--150 CUSTOMERS APPRECIATE THE WIDE PRODUCT SELECTION PRIVILEDGE

--To observe the Service_Appreciation = User-friendly website/app interface
 SELECT *
FROM Amazon_Survey
WHERE Service_Appreciation = 'User-friendly website/app interface';
--80 CUSTOMERS APPRECIATE AMAZON USER-FRIENDLY WEBSITE/APP INTERFACE

--To observe the Service_Appreciation = Product recommendations
 SELECT *
FROM Amazon_Survey
WHERE Service_Appreciation = 'Product recommendations';
--185 CUSTOMERS APPRECIATE THE PRODUCT RECOMMENDATION

 ----to get the unique value of the columns
 select distinct Improvement_Areas
from Amazon_Survey

--To observe the improvement area = Add more familiar brands to the list
 SELECT *
FROM Amazon_Survey
WHERE Improvement_Areas = 'Add more familiar brands to the list';
--A 26 YEAR FEMALE SHOPPER WANTS AMAZON TO IMPROVE IN ADDING MORE FAMILIAR BRANDS TO THE LIST

--To observe the improvement area = better app interface and lower shipping charges
 SELECT *
FROM Amazon_Survey
WHERE Improvement_Areas = 'better app interface and lower shipping charges';
--A 23 YEAR MALE SHOPPER WANTS AMAZON TO IMPROVE IN BETTER APP INTERFACE AND LOWER SHIPPING CHARGES

--To observe the improvement area = Customer service responsiveness
 SELECT *
FROM Amazon_Survey
WHERE Improvement_Areas = 'Customer service responsiveness';
--217 CUSTOMERS WANT AMAZON TO IMPROVE THERI CUSTOMER SERVICE RESPONSIVENESS

--To observe the improvement area = Irrelevant product suggestions
 SELECT *
FROM Amazon_Survey
WHERE Improvement_Areas = 'Irrelevant product suggestions';
--1 OUT OF 602 CUSTOMERS WANTS AMAZON TO IMPROVE FROM IRRELEVANT PRODUCT SUGGESTIONS


--To observe the improvement area = Product quality and accuracy
 SELECT *
FROM Amazon_Survey
WHERE Improvement_Areas = 'Product quality and accuracy';
--159 CUSTOMERS WANT AMAZON TO IMPROVE IN PRODUCT QUALITY AND ACCURACY

--To observe the improvement area = Quality of product is very poor according to the big offers
 SELECT *
 FROM Amazon_Survey
WHERE Improvement_Areas = 'Quality of product is very poor according to the big offers';
--1 CUSTOMER BELIEVES Quality of product is very poor according to the big offers

--To observe the improvement area = Reducing packaging waste
 SELECT *
FROM Amazon_Survey
WHERE Improvement_Areas = 'Reducing packaging waste';
--133 CUSTOMERS WANTS AMAZON TO REDUCE PACKAGING WASTE

--To observe the improvement area = Scrolling option would be much better than going to next page
 SELECT *
FROM Amazon_Survey
WHERE Improvement_Areas = 'Scrolling option would be much better than going to next page';
--1 CUSTOMER BELIEVES Scrolling option would be much better than going to next page 

--To observe the improvement area = Shipping speed and reliability
 SELECT *
FROM Amazon_Survey
WHERE Improvement_Areas = 'Shipping speed and reliability';
--79 CUSTOMERS WANT AMAZON TO IMPROVE ON SHIPPING AND RELIABILITY

--To observe the improvement area = User interface 
 SELECT *
FROM Amazon_Survey
WHERE Improvement_Areas = 'User interface';
--1 CUSTOMER WANTS AMAZON TO IMPROVE THEIR USER INTERFACE

--To observe the improvement area = UI
 SELECT *
FROM Amazon_Survey
WHERE Improvement_Areas = 'UI';
--1 CUSTOMER WANTS AMAZON TO IMPROVE THEIR UI

--To observe the improvement area = User interface of app---
 SELECT *
FROM Amazon_Survey
WHERE Improvement_Areas = 'User interface of app---';

 SELECT *
FROM Amazon_Survey
WHERE Service_Appreciation = 'Product recommendations';
--185 APPRECIATE PRODUCT RECOMMENDATIONS

 --To observe the purchase frequency = "less than once a month"
 SELECT *
FROM Amazon_Survey
WHERE Purchase_Frequency = 'Less than once a month';

--To observe the purchase frequency = "once a month"
 SELECT *
FROM Amazon_Survey
WHERE Purchase_Frequency = 'Once a month';
--107 CUSTOMERS PURCHASE ONCE IN A MONTH

 --To observe the purchase preference of female and male gender
 SELECT *
FROM Amazon_Survey
WHERE Gender IN ('Female','Male');
--494 OUT OF 602 CUSTOMERS WERE PROPERLY IDENTIFIED AS MALE AND FEMALE 

--To observe the purchase preference of customers under the age of 20
 SELECT *
FROM Amazon_Survey
WHERE Age IN (3,12,15,16,17,18,19,20)
--29 CUSTOMERS FALLS BETWEEN THE AGES OF 3 TO 20

--To observe the purchase preference of customers under the age of 21-30
 SELECT *
FROM Amazon_Survey
WHERE Age IN (21,22,23,24,25,26,27,28,29,30)
--316 CUSTOMERS FALL BETWEEN THE AGES OF 21 TO 30

--To observe the purchase preference of customers under the age of 31-40
 SELECT *
FROM Amazon_Survey
WHERE Age IN (31,32,33,34,35,36,37,38,39,40)
---148 CUSTOMERS FALL BETWEEN THE AGE OF 31 TO 40

--To observe the purchase preference of customers under the age of 41-50
 SELECT *		
FROM Amazon_Survey
WHERE Age IN (41,42,43,44,45,46,47,48,49,50)
--80 CUSTOMERS FALL BETWEEN THE AGES OF 41 TO 50

--To observe the purchase preference of customers under the age of 51-60
 SELECT *
FROM Amazon_Survey
WHERE Age IN (51,52,53,54,55,56,57,58,59,60)
--24 CUSTOMERS FALL BETWEEN THE AGES OF 51 AND 60

--To observe the purchase preference of customers under the age of 61-70
 SELECT*
FROM Amazon_Survey
WHERE Age IN (61,62,63,64,65,66,67)
--5 CUSTOMERS FALL BETWEEN THE AGES OF 61 TO 67

----conditional selection: 
SELECT *
FROM Amazon_Survey
 WHERE  Purchase_Frequency = 'Less than once a month' AND Review_Reliability = 'Never' AND Review_Left = 'No';
 --5 CUSTOMERS PURCHASE ON AMAZON LESS THAN ONCE A MONTH, NEVER RELY ON REVIEW ANDD NEVER LEFT A REVIEW

 ----conditional selection: 
SELECT *
FROM Amazon_Survey
 WHERE  Purchase_Frequency = 'Once a month' AND Personalized_Recommendation_Frequency= 'No' AND Browsing_Frequency = 'Rarely';
 --5 CUSTOMERS PURCHASE ONCE A MONTH AND RARELY BROWSE

  ----conditional selection: 
SELECT *
FROM Amazon_Survey
 WHERE Shopping_Satisfaction = 1 AND Recommendation_Helpfulness= 'No' AND Rating_Accuracy  = 1;
 ---5 CUSTOMERS ARE NOT SATISFIED WITH SHOPPING ON AMAZON, RECOMMENDATIONS BY AMAZON ARE NOT HELPFUL AND ACCURACY RATE OF AMAZON SERVICES TO THEM IS 1

 