# BRITISH AIRWAYS ANALYSIS
# By Ofolebe Cyndi
---
![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/british_airways_image.png)

---
INTRODUCTION
---
British Airways is the largest international airline in the UK which offers world class services across 162 destinations.The operate a fleet of aircrafts ranging from Airbus and Boeing.It offers  customer support through its website,mobile app and phone helpline which helps passengers to book flights and manage bookings online. 

---
PROBLEM STATEMENT
---
This project is focused on analysing the data provided by the company in order to further improve the company. With the help of the questions that will be answered using Sql queries, British Airline will know the areas the capitalize on in order to generate more revenue,increase the customer base and satisfy their customers.
The questions are as follows;
 * Which manufacturer has the besr aircrafts in terms of fuel efficiency?
 * Does British Airways tend to use aircrafts from manufacturers known for their superior efficiencymore frequently?
 * Which month did passengers cancel the flight the most?
 * which city do passengers travel the most?
 * What is the revenue generated from baggage overtime?
 * what is tha average number of passengers for each month like?

---
DATA SOURCING
---

The data set was obtained from kaggle.com

---
DATA MODEL/ERD
---
![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/ERD.png)

 ---
 SKILLS DEMONSTRATED
 ---
 * Data Cleaning; The data was throughly cleaned using MS Excel via removal of duplicates,some blanks were removed while some were filled      up,formating of the data types to match sql column data types,standardization of date, time and currency.
 * Data Importation; A database  was created and tables were created prior to the importation of the data
   AIRCRAFTS TABLE
  # Query
   ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/aircrafts_table_code.png)

  # Result
  ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/aircrafts_table2.png)

  # FLIGHT TABLE
  # Query
   ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/flight_table_%20code.png)

   # Result
   ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/flight_table.png)

   # FUEL EFFICIENCY TABLE
   # Query
   ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/fuel_efficiency_table_code.png)
   
   # Result
   ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/fuel_efficiency_table.png)

   # ROUTE TABLE
   # Query
   ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/route_table_code.png)

   # Result
   ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/route_table.png)

   ---
   ANALYSIS AND VISUALIZATION
   ---
   Using this data base I Will be ansering questions that are of interest to British Airways
   
   ---
   Which manufacturer has the best aircrafts in terms of fuel effiency?
   ---
   
 # Query
    
  ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/best_aircraft_via_fuel_effiency.png)

  # Result
  ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/answer_1.png)

  # INSIGHT
  
  Mitsubushi has the best fuel efficiency
  
  ---
  Does British Airways tend to use aircrafts from manufacturers known for their superior fuel efficiency more frquently?
  ---

 # Query
    
   ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/aircraft_used_more_frequently.png)

 # Result
   
   ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/answer_2.png)

  # Insight
   British Airways uses Boeing more frequently

    ---
   Which month did passengers cancel flights the most?
   ---

   # Query

   ![image alt](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/most_cancelled_flights.png)
    
  # Result
   ![](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/answer_3.png)
   
  # INSIGHT
   April was the month with the most cancelled flights.

---
Which city  did passengers travel the most?
---

# Query
![](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/city_most_travelled.png)

# Result
![](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/answer_4.png)

# Insight
 London is the city most travelled to

 ---
 What is the revenue generated from baggage overtime?
 ---
 # Query
![](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/baggage_overtime_revenue.png)

 # Result
 ![](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/answer_5.png)

---
What is the average number of passengers  for each month like?
---

# Query
![](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/avg_monthly_revenue.png)

# Result
![](https://github.com/Cyndi-24/British-Airways-Analysis/blob/main/BA%20flights%20SQL%20PROJECTS/capstone_images/answer_6.png)

---
 RECOMMENDATION AND CONCLUSION
 ---
* The city passengers travelled to the most was London and this has to be capitalised on to generate more revenue.This can be achieved via creating more ports in  different parts London,resources or flights can be diverted from less travelled places to meet the demands of the frequently travelled places.
* The month of April had the most cancelled flights but generated the most revenue.Investigation should be done to find out the reason for this via an online questionaire to help the company restrategize.The window for cancellation can also be reduced to avoid a lot of cancellation
* With an idea of the average monthly passengers, dynamic pricing srategies can be implemented to adjust fares based on demand flunctuations thus maximizing revenue
* For cities with fewer passengers  a larger booking time should me made available to accomodate more passengers and to avoid flying few passengers on a flight  and increased fuel consumption
* Proper resources should be chanelled to ensure customers get optimum value  and satisfaction
  for their payments.
  
