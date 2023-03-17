create table flu_dengue
as
SELECT dengue_tidy."Country", dengue_tidy."Year" , dengue_tidy."Month" , dengue_tidy."Day" , dengue_tidy.dengue_cases , flu_tidy.flu_cases 
FROM dengue_tidy
left join flu_tidy on dengue_tidy."Country" = flu_tidy."Country" and dengue_tidy."Year" = flu_tidy."Year" and dengue_tidy."Month" = flu_tidy."Month" and dengue_tidy."Day" = flu_tidy."Day" 
