CREATE DATABASE practo_db;
USE practo_db;

-- 1. View all records
SELECT * FROM doctors;

-- 2. Total number of doctors
SELECT COUNT(*) AS total_doctors FROM doctors;

-- 3. Doctors count per city
SELECT City, COUNT(*) AS doctor_count FROM doctors 
GROUP BY City 
ORDER BY doctor_count DESC;

-- 4. Doctors count per specialization
SELECT Specialization, COUNT(*) AS total FROM doctors 
GROUP BY Specialization 
ORDER BY total DESC;

-- 5. Top 5 most common specializations
SELECT Specialization, COUNT(*) AS total FROM doctors 
GROUP BY Specialization 
ORDER BY total DESC 
LIMIT 5;

-- 6. Average consultation fee per city
SELECT City, ROUND(AVG(Consultation_Fee), 2) AS avg_fee FROM doctors 
GROUP BY City;

-- 7. Most expensive doctors (top 10)
SELECT Doctor_Name, Specialization, City, Consultation_Fee FROM doctors 
ORDER BY Consultation_Fee DESC 
LIMIT 10;

-- 8. Most affordable doctors (bottom 10)
SELECT Doctor_Name, Specialization, City, Consultation_Fee FROM doctors 
ORDER BY Consultation_Fee ASC 
LIMIT 10;

-- 9. Doctors with 24x7 availability
SELECT Doctor_Name, Specialization, City, Hospital_Name FROM doctors 
WHERE Working_Hours = '24x7';

-- 10. Count of morning vs evening doctors
SELECT Timing_Category, COUNT(*) AS total FROM doctors 
GROUP BY Timing_Category;

-- 11. Average working hours duration per city
SELECT City, ROUND(AVG(Time_Duration), 2) AS avg_hours FROM doctors 
GROUP BY City;

-- 12. Hospitals with the most doctors
SELECT Hospital_Name, COUNT(*) AS doctor_count FROM doctors 
GROUP BY Hospital_Name 
ORDER BY doctor_count DESC 
LIMIT 10;

-- 13. Doctors with more than 10 years experience
SELECT Doctor_Name, Specialization, Experience, City FROM doctors 
WHERE Experience > 10;

-- 14. Average rating per specialization
SELECT Specialization, ROUND(AVG(Rating), 1) AS avg_rating FROM doctors 
GROUP BY Specialization 
ORDER BY avg_rating DESC;

-- 15. Highest rated doctors (top 10)
SELECT Doctor_Name, Specialization, Hospital_Name, Rating FROM doctors 
ORDER BY Rating DESC 
LIMIT 10;

-- 16. Doctors per locality
SELECT Locality, COUNT(*) AS total FROM doctors 
GROUP BY Locality 
ORDER BY total DESC 
LIMIT 10;

-- 17. Fee distribution — count by range
SELECT 
  CASE 
    WHEN Consultation_Fee < 300 THEN 'Under 300'
    WHEN Consultation_Fee BETWEEN 300 AND 600 THEN '300-600'
    WHEN Consultation_Fee BETWEEN 601 AND 1000 THEN '601-1000'
    ELSE 'Above 1000'
  END AS fee_range,
  COUNT(*) AS total
FROM doctors GROUP BY fee_range;

-- 18. City-wise average experience
SELECT City, ROUND(AVG(Experience), 1) AS avg_experience FROM doctors 
GROUP BY City;

-- 19. Specializations available in all cities
SELECT Specialization, COUNT(DISTINCT City) AS city_count
FROM doctors 
GROUP BY Specialization 
HAVING COUNT(DISTINCT City) = (SELECT COUNT(DISTINCT City) FROM doctors);

-- 20. Top doctor per city by rating
SELECT City, Doctor_Name, Specialization, Rating
FROM doctors d1
WHERE Rating = (
  SELECT MAX(Rating) FROM doctors d2 WHERE d2.City = d1.City
)
ORDER BY City;