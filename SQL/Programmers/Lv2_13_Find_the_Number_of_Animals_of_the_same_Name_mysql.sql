/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59041
* LEVEL2
*/
SELECT    NAME
     ,    SUM(1) AS `COUNT`
  FROM    ANIMAL_INS
 WHERE    NAME IS NOT NULL
 GROUP BY NAME
 HAVING SUM(1) > 1
 ORDER BY 1
;