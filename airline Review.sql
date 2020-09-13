create database Airline;
use Airline;

CREATE TABLE t_airline (
    id    INT		        NOT NULL,
    airline_name  VARCHAR(255),
    overall_rating  INT,
    seat_comfort_rating  INT,
	cabin_staff_rating   INT,
	food_beverages_rating	INT,
	inflight_entertainment_rating	INT,
	value_money_rating	INT,
	month_airline	INT,
    year_airline	INT,
    recommended		INT,
    PRIMARY KEY (id)
);


BULK
INSERT t_airline
FROM 'C:\Users\wingy\Desktop\Airline1.csv'
WITH
(
fieldterminator=',',
rowterminator='\n'
)
go

select* from t_airline;

--average rating for each airline
select airline_name, avg(overall_rating) as avg_rate
from t_airline
group by airline_name
order by avg_rate;


--find out the year 2015 and month for the lowest rate for each airline


select*
from (
select airline_name, sum(case when overall_rating<=5 then 1 else 0 end) as rate, year_airline, month_airline
from t_airline 
where year_airline=2015
group by airline_name,year_airline,month_airline) a
group by a.airline_name,a.month_airline, a.rate, a.year_airline
order by a. airline_name,a.rate desc;


--How many people recommend most and not recommend for this airline? 

select* from t_airline;

select airline_name, sum(case when recommended=1 then 1 else 0 end) as satifaction 
from t_airline
group by airline_name
order by count(airline_name);



--which airline company has most full rating in 2015? 
select airline_name, count(cabin_staff_rating) as customer_service, count(seat_comfort_rating) as seat_comfort, 
count(value_money_rating) as ticket_price,month_airline
from t_airline
where year_airline=2015 and cabin_staff_rating=5 and seat_comfort_rating=5 and value_money_rating=5
group by airline_name,month_airline
having count(*)>=10
order by airline_name, month_airline;