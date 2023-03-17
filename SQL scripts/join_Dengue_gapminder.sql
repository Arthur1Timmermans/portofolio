create table dengue_gapminder
as 
SELECT dengue_tidy."Country", dengue_tidy."Year" , dengue_tidy."Month" , dengue_tidy."Day" , dengue_tidy.dengue_cases , gapminder_tidy.infant_mortality, gapminder_tidy.life_expectancy, gapminder_tidy.fertility, gapminder_tidy.population, gapminder_tidy.gdp, gapminder_tidy.continent, gapminder_tidy.region  
FROM dengue_tidy
left join gapminder_tidy on dengue_tidy."Country" = gapminder_tidy.country and dengue_tidy."Year" = gapminder_tidy."year"  