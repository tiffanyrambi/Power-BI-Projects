with hotels as (
select * from hotel2018
union
select * from hotel2019
union
select * from hotel2020)

select * from hotels
left join market_segment$
on hotels.market_segment = market_segment$.market_segment
left join meal_cost$
on meal_cost$.meal = hotels.meal