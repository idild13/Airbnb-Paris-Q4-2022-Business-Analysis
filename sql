#find primary key
SELECT id, COUNT(*) AS count
FROM `intro-to-sql-project-1.airbnb.listing`
GROUP BY id
HAVING COUNT(*) >= 2;


#check if the other tables uique id's are unique than the listing table
SELECT DISTINCT listing_id FROM `intro-to-sql-project-1.airbnb.calendar`
#500 unique id's so they have same number of unique id's


#join the tables
SELECT *
FROM `intro-to-sql-project-1.airbnb.listing` b
JOIN `intro-to-sql-project-1.airbnb.calendar` a
ON b.id = a.listing_id


# filter for Q4 only
SELECT DISTINCT id
FROM `intro-to-sql-project-1.airbnb.listing_calendar_joined`
WHERE date BETWEEN "2022-10-01" AND "2022-12-31"




#cleaning - check if there is any inconsistent data in columns regarding their data type
SELECT COUNT(*) AS total_rows,
      COUNTIF(SAFE_CAST(price AS INT64) IS NOT NULL) AS valid_integers,
      COUNTIF(SAFE_CAST(price AS INT64) IS NULL AND price IS NOT NULL) AS invalid_values
FROM `intro-to-sql-project-1.airbnb.Q4_listing_calendar_joined`




# find, min, max, median, and average for price to develop price ranges
SELECT MAX(price), MIN(price), AVG(price), APPROX_QUANTILES(price, 2)[OFFSET(1)] AS median
FROM `airbnb.Q4_listing_calendar_joined`


#   • Min: 30 • Median: 120 • Average: 154 •  Max: 4000


# check the proportion of price 0-200
SELECT price FROM `airbnb.Q4_listing_calendar_joined`
WHERE price <= 100
# 18589 rows


SELECT price
FROM `airbnb.Q4_listing_calendar_joined`
WHERE price > 100 AND price <=200
# 21000 rows. This tells us:
# • Prices are heavily right-skewed (long tail of expensive items).
# • Most values are clustered under ~200, but a few very high prices push the average up.


# set up the price ranges
SELECT
 *,
 CASE
   WHEN price <= 100 THEN 'Budget'
   WHEN price <= 200 THEN 'Standard'
   WHEN price <= 400 THEN 'Premium'
   WHEN price <= 1000 THEN 'Luxury'
   ELSE 'Ultra Luxury'
 END AS price_range
FROM `airbnb.Q4_listing_calendar_joined`;


# overwrite the table
