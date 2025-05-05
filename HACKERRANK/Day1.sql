# what type of triangle 
# https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

SELECT CASE
            WHEN A+B > C AND B+C > A AND A+C > B THEN
                CASE
                    WHEN A = B AND B = C THEN 'EQUILATERAL'
                    WHEN A = B AND B = C OR A = C THEN 'ISOSCELES'
                    ELSE 'SCALENE'
                END
            ELSE 'NOT A TRIANGLE'
        END
FROM TRIANGLES;


# https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true

SELECT * FROM CITY
                  WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';


# https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true
SELECT NAME
    FROM CITY
        WHERE POPULATION > 120000
            AND COUNTRYCODE = 'USA';


# https://www.hackerrank.com/challenges/select-all-sql/problem?isFullScreen=true
SELECT * FROM CITY;

# https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true

SELECT * 
    FROM CITY
        WHERE ID = 1661;

# https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true
SELECT *
    FROM CITY
        WHERE
            COUNTRYCODE = 'JPN';

# https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true
SELECT NAME
    FROM CITY
        WHERE COUNTRYCODE = 'JPN';


# https://www.hackerrank.com/challenges/weather-observation-station-1/problem?isFullScreen=true
SELECT CITY,STATE
    FROM STATION;

#https://www.hackerrank.com/challenges/weather-observation-station-3?isFullScreen=true

SELECT DISTINCT(CITY)
    FROM STATION 
        WHERE 
            ID %2 = 0;


# https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
SELECT COUNT(CITY)-COUNT(DISTINCT(CITY))
FROM STATION;

#https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true

## NEED TWO QUERIES 
SELECT CITY, LENGTH(CITY)
    FROM CITY
        ORDER BY LENGTH(CITY) ASC, CITY ASC LIMIT 1;

SELECT CITY, LENGTH(CITY)
    FROM CITY
        ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 1;


# https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
SELECT DISTINCT(CITY)
    FROM STATION 
        WHERE 
            SUBSTR(CITY,1,1) IN ('A','E','I','O','U');


#    https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
 SELECT DISTINCT(CITY)
    FROM STATION
        WHERE SUBSTR(CITY,LENGTH(CITY),1) IN ("A","E","I","O","U");  

# https://www.hackerrank.com/challenges/weather-observation-station-8/problem
SELECT CITY FROM STATION WHERE CITY RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$';

# https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true
SELECT DISTINCT(CITY)
    FROM STATION 
        WHERE 
            SUBSTR(CITY,1,1) NOT IN ('A','E','I','O','U');


# https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
SELECT DISTINCT(CITY)
FROM STATION
WHERE CITY NOT RLIKE '^[AEIOUaeiou].*[AEIOUaeiou]$';

# https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
SELECT NAME 
FROM STUDENTS
WHERE
MARKS > 75
ORDER BY RIGHT(NAME,3),ID;

# https://www.hackerrank.com/challenges/name-of-employees/problem?isFullScreen=true
SELECT NAME 
    FROM EMPLOYEE
        ORDER BY NAME ASC;


# PIVOTING AND PARTITIONING ## DIFFICULT
## PARTITIONING:
    