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


Here are the total counts of the negative and positive reviews of each airline. United Airlines and Air Canada Rouge have significant higher negative review counts than positive. It is very critical to investigate what causes this result and how to improve it.

![image](https://github.com/YingHu1234/airline/blob/master/img1/2.PNG)


A confusion table is created to test the accuracy of the interpretation results. To begin, two attributes are extracted from data frame: content and recommended. 
![image](https://github.com/YingHu1234/airline/blob/master/img1/3.PNG)


The review contents are broken down into individual words, and these words are labeled as neg or pos. Adjustives are selected for analysis only to eliminate background noise words.


Tagged the wrods:

![image](https://github.com/YingHu1234/airline/blob/master/img/4.PNG)


Extracted Adjustives:

![image](https://github.com/YingHu1234/airline/blob/master/img/5.PNG)


Classification starts after defining each feature set. First, training and testing set are generated at 80/20. Then, Naïve Bayes and Decision Tree are used to compare results and accuracy.

![image](https://github.com/YingHu1234/airline/blob/master/img1/4.PNG)




## 🌳 Result of classification and confusion table:  <a name = "result"></a>
 

### Air Canada Rouge: 


![image](https://github.com/YingHu1234/airline/blob/master/img/7.PNG)


![image](https://github.com/YingHu1234/airline/blob/master/img/8.PNG)


![image](https://github.com/YingHu1234/airline/blob/master/img/9.PNG)


![image](https://github.com/YingHu1234/airline/blob/master/img/10.PNG)


### British AirwaysAir: 



![image](https://github.com/YingHu1234/airline/blob/master/img1/5.PNG)

![image](https://github.com/YingHu1234/airline/blob/master/img1/6.PNG)

![image](https://github.com/YingHu1234/airline/blob/master/img1/7.PNG)


### United Airlines: 


![image](https://github.com/YingHu1234/airline/blob/master/img1/8.PNG)

![image](https://github.com/YingHu1234/airline/blob/master/img1/9.PNG)

![image](https://github.com/YingHu1234/airline/blob/master/img1/10.PNG)


## 🌽 Topic Modeling  <a name = "topic_modeling"></a>
Topic Modeling is also performed to compare with the result done by Chunking. First, the review contents are broken into individual words and initialized as a dictionary. Then, a corpus is generated, which is a library of words. Lastly, an LDA model is used to get the weight of each word in the negative reviews.

![image](https://github.com/YingHu1234/airline/blob/master/img/11.PNG)

![image](https://github.com/YingHu1234/airline/blob/master/img/12.PNG)




### Air Canada Rouge:

![image](https://github.com/YingHu1234/airline/blob/master/img/13.PNG)


### British AirwaysAir: 

![image](https://github.com/YingHu1234/airline/blob/master/img1/11.PNG)


### United Airlines: 

![image](https://github.com/YingHu1234/airline/blob/master/img1/12.PNG)



## 🎉 Conclusion <a name = "conclusion"></a>
In conclusion, this data analysis project has discovered the major customer complaints for the top three airline companies. They are categorized as seat comfortableness, food quality, customer service, and schedule on-time performance. If an airline company can provide comfortable seats, high quality food, exceptional customer service, and on-time schedule performance, then they would receive high customer satisfactions and good reviews, and they would be on the way to becoming a very successful airline company in this competitive industry. 
