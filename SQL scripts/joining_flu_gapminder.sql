create table flu_gapminder
as 
SELECT flu_tidy."Country", flu_tidy."Year" , flu_tidy."Month" , flu_tidy."Day" , flu_tidy.flu_cases , gapminder_tidy.infant_mortality, gapminder_tidy.life_expectancy, gapminder_tidy.fertility, gapminder_tidy.population, gapminder_tidy.gdp, gapminder_tidy.continent, gapminder_tidy.region  
FROM flu_tidy
left join gapminder_tidy on flu_tidy."Country" = gapminder_tidy.country and flu_tidy."Year" = gapminder_tidy."year"  
