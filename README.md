# airline

<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://i.imgur.com/6wj0hh6.jpg" alt="Project logo"></a>
</p>

<h3 align="center">:zap: :rocket: Airline negative comments analysis </h3>


---

<p align="center">
The objective of this project is to identify the most important issues faced by airline companies based on customers’ negative reviews. 
    <br> 
</p>

## 📝 Table of Contents
- [About](#about)
- [Data Clearning](#data_leaning)
- [Classification](#classification)
- [Result of Classification](#result)
- [Topic_modeling](#topic_modeling)
- [Conclusion](#conclusion)


## 🧐 About <a name = "about"></a>
The investigation is done through data analysis by using Python scripts. First, data cleaning is performed to narrow down the dataset to three major airline companies for analysis purpose. Then, data accuracy and classification are done using three methods: confusion matrix, Naïve Bayes, and Decision Tree. Lastly, results are analyzed and compared using Chunking, Word Cloud, and Topic Modeling.  

![Working](https://media.giphy.com/media/W1T1DxaxgqQQgdvHvq/giphy.gif)

### Prerequisites
SQL, Tableau, Python or Jupyter Notebook 


## 🔖 Data Cleaning <a name = "data_leaning"></a>

The dataset shown below is downloaded from Kaggle.com.; There are a total of 14 columns, 27284 lines, and no null values. In this dataset, the top 3 of the company are chosen for analysis. They are Air Canada Rouge, British Airways, and United Airlines.

![image](https://github.com/YingHu1234/airline/blob/master/img/1.PNG)

Before the analysis, I used python NLTK, SQL and Tableau to checked the overall reviews about the airline industry,
shows that the word “good” appeared the most in customer reviews, which has almost 16,000 counts.  

![image](https://github.com/YingHu1234/airline/blob/master/img/2.PNG)

SQL：
![image](https://github.com/YingHu1234/airline/blob/master/img/SQL1.PNG)
![image](https://github.com/YingHu1234/airline/blob/master/img/SQL2.PNG)

Tableau:
![image](https://github.com/YingHu1234/airline/blob/master/img/T-dashboard.PNG)

## 🌱 Classification <a name = "classification"></a>
A deeper mining is done to explore why customers give negative reviews. Three attributes are kept for classification and topic modeling, they are airline_name, content, and recommended. Number 0 represents negative reviews and number 1 represents positive reviews.

img1


the total counts of the negative and positive reviews of each airline. United Airlines and Air Canada Rouge have significant higher negative review counts than positive. It is very critical to investigate what causes this result and how to improve it.

img2


A confusion table is created to test the accuracy of the interpretation results. To begin, two attributes are extracted from data frame: content and recommended. Then, the reviews are converted to a list of a list. 

img3


Here are the object sets for each airline, which are lists of tuples. The review contents are broken down into individual words, and these words are labeled as neg or pos. Adjustives are selected for analysis only to eliminate background noise words.


Tagged the wrods:

![image](https://github.com/YingHu1234/airline/blob/master/img/4.PNG)


Extracted Adjustives:

![image](https://github.com/YingHu1234/airline/blob/master/img/5.PNG)


Classification starts after defining each feature set. First, training and testing set are generated at 80/20. Then, Naïve Bayes and Decision Tree are used to compare results and accuracy.

img4




## 🌳 Result of classification and confusion table:  <a name = "result"></a>
In classification, Naïve Bayes and Decision Tree are used for testing accuracy; and confusion tables are set for visualization of the algorithm. In addition, Chunking and Word Cloud are used to extract informative words from customers’ negative reviews. 

### Air Canada Rouge: 
For Air Canada Rouge, the accuracy of the two models are high which is at around 90%. According to the confusion table, five reviews should be negative but prediction shows positive; and eight reviews should be positive but prediction shows negative. The overall accuracy is high and the most informative word for this airline is “unconformable”. From Chucking and Word Cloud, many customers complained the seat being uncomfortable; they also feel uncomfortable because of limited leg room.
 

![image](https://github.com/YingHu1234/airline/blob/master/img/7.PNG)


![image](https://github.com/YingHu1234/airline/blob/master/img/8.PNG)


![image](https://github.com/YingHu1234/airline/blob/master/img/9.PNG)


![image](https://github.com/YingHu1234/airline/blob/master/img/10.PNG)


### British AirwaysAir: 

British Airways has an accuracy of 80% from the two models. Nineteen reviews should be negative but prediction shows positive, and twenty six reviews should be positive but predition shows negative. The most informative words for this airline are “awful”, “terrible”, “worst”, “uncomfortable” and “disappointed”. From Chucking and Word Cloud results, customers mainly complained about the seat, food, and schedule delays.

img 5
img 6
img 7


### United Airlines: 
United Airlines has an accuracy of 85% from the two models. 31 reviews should be negative but prediction shows positive, and 40 reviews should be positive but predition shows negative. The overall accuracy is good and the most informative words for this airline are “worst”, “terrible” and “rude”. From Chucking and Word Cloud results, customers mainly complained about the seat, food, and customer service

img 8
img 9
img 10


## 🌽 Topic Modeling  <a name = "topic_modeling"></a>
Topic Modeling is also performed to compare with the result done by Chunking. First, the review contents are broken into individual words and initialized as a dictionary. Then, a corpus is generated, which is a library of words. Lastly, an LDA model is used to get the weight of each word in the negative reviews.

![image](https://github.com/YingHu1234/airline/blob/master/img/11.PNG)

![image](https://github.com/YingHu1234/airline/blob/master/img/12.PNG)


### Air Canada Rouge:
![image](https://github.com/YingHu1234/airline/blob/master/img/13.PNG)


### British AirwaysAir: 

img 11

### United Airlines: 
img 12



## 🎉 Conclusion <a name = "conclusion"></a>
In conclusion, this data analysis project has discovered the major customer complaints for the top three airline companies. They are categorized as seat comfortableness, food quality, customer service, and schedule on-time performance. If an airline company can provide comfortable seats, high quality food, exceptional customer service, and on-time schedule performance, then they would receive high customer satisfactions and good reviews, and they would be on the way to becoming a very successful airline company in this competitive industry. 
