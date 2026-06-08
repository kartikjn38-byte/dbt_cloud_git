{% macro get_season(x) %}

CASE WHEN MONTH(to_timestamp({{x}})) IN (12,1,2) THEN 'WINTER'
WHEN MONTH(to_timestamp({{x}})) IN(3,4,5) THEN 'SPRING'
WHEN MONTH(to_timestamp ({{x}})) IN (6,7,8) THEN 'MONSOON'
ELSE 'AUTUMN' END

{% endmacro %}


{% macro day_type(x) %}

CASE WHEN DAYNAME(to_timestamp({{x}})) IN ('Sat','Sun') then 'WEEKEND'
ELSE 'BUSINESS_DAY' END

{% endmacro %}