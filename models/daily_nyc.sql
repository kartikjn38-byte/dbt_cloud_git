WITH CTE  AS 
(
    SELECT 
    date(observation_time) as daily_weather , weather_condition , pressure, temperature,relative_humidity 
    FROM {{source ('demo' ,'ZERO_NYC')}} 
),

dw_agg as(
    select daily_weather , weather_condition  ,
    ROUND(avg(temperature),2) as avg_temp, 
    ROUND(avg(pressure),2) as avg_pressuure , ROUND(avg(relative_humidity),2) as avg_humidity from cte
    group by daily_weather , weather_condition 
    QUALIFY(ROW_NUMBER() OVER( PARTITION BY DAILY_WEATHER ORDER BY COUNT(weather_condition) DESC)) = 1
)
select * from dw_agg