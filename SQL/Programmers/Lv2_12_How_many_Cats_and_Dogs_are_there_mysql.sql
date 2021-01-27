/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59040
* LEVEL2
*/
SELECT    ANIMAL_TYPE
     ,    SUM(1) AS `count`
  FROM    ANIMAL_INS
 GROUP BY ANIMAL_TYPE
 ORDER BY 1
;