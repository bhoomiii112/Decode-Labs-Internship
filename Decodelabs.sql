CREATE TABLE smartphone_usage (
    Transaction_id VARCHAR(50) PRIMARY KEY,
    User_id VARCHAR(50),
    Age INT,
    Gender VARCHAR(20),
    Daily_screen_time_hours NUMERIC,
    Social_media_hours NUMERIC,
    Gaming_hours NUMERIC,
    Work_study_hours NUMERIC,
    Sleep_hours NUMERIC,
    Notifications_per_day INT,
    App_opens_per_day INT,
    Weekend_screen_time NUMERIC,
    Stress_level VARCHAR(20),
    Academic_work_impact VARCHAR(10),
    Addiction_level VARCHAR(20),
    Addicted_label INT
)
select * from smartphone_usage 

SELECT User_id, Age, Addiction_level
FROM smartphone_usage
WHERE Age > 25 AND Addiction_level = 'Severe'

SELECT Gender, 
       AVG(Sleep_hours) AS Average_Sleep
FROM smartphone_usage
GROUP BY Gender

SELECT User_id, Daily_screen_time_hours, Notifications_per_day
FROM smartphone_usage
ORDER BY Daily_screen_time_hours DESC
LIMIT 5

SELECT 
    SUM(Social_media_hours) AS Total_Social_Media_Hours,
    SUM(Gaming_hours) AS Total_Gaming_Hours
FROM smartphone_usage;























