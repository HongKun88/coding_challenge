/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59046
* LEVEL2
*/
SELECT    HOUR(DATETIME) AS `HOUR`
     ,    SUM(1)         AS `COUNT`
  FROM    ANIMAL_OUTS
 WHERE    HOUR(DATETIME) BETWEEN 9 AND 19
 GROUP BY HOUR(DATETIME)
 ORDER BY 1
;