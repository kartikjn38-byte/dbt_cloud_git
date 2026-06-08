WITH CTE AS 
( SELECT 
to_timestamp(TIME)  as TIME_FORMAT ,
DATE(to_timestamp(TIME) ) AS DATE_FORMAT,
HOUR(to_timestamp(TIME)) AS HOUR_FORMAT,
{{ day_type('TIME')}} DAY_TYPE,
DAYNAME(to_timestamp(TIME)) AS WEEKDAY_FORMAT,
{{get_season('TIME')}} PHASE_OF_YEAR,
MONTH(to_timestamp(TIME)) as MONTH_FORMAT

from {{ source('demo', 'WEATHER') }}
)

SELECT * FROM CTE

-- CTE2 AS 
-- (
--     STUFF FROM CTE
-- ),

-- CTE3 AS
-- (
--     STUFF FROM CTE2
-- )