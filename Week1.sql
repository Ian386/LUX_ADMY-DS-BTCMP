-- Find all records where the weather was exactly clear.
SELECT  * FROM weather WHERE weather = 'Clear';

-- Find the number of times the wind speed was exactly 4 km/hr.
SELECT COUNT(*) FROM weather WHERE wind_speed = 4;

-- What is the mean visibility of the dataset?
SELECT AVG(Visibility_km) FROM weather;

-- Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km.
SELECT COUNT(*) FROM weather WHERE wind_speed > 24 AND Visibility_km = 25;

-- Find the number of weather conditions that include snow
SELECT COUNT(*) FROM weather WHERE weather LIKE '%Snow%';

--Rename the column "Weather" to "Weather_Condition."
ALTER TABLE weather RENAME COLUMN weather TO Weather_Condition;

--Just a try
--What is the mean value of each column for each weather condition?
SELECT Weather_Condition, AVG(Temperature_C) AS Avg_Temperature, AVG(Wind_Speed) AS Avg_Wind_Speed, AVG(Visibility_km) AS Avg_Visibility_km FROM weather GROUP BY Weather_Condition;
