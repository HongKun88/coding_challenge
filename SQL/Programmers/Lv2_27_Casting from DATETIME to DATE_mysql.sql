/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59414
* LEVEL2
*/
SELECT    ANIMAL_ID
     ,    NAME
     ,    DATE_FORMAT(DATETIME, '%Y-%m-%d') AS `날짜`
  FROM    ANIMAL_INS
 ORDER BY ANIMAL_ID
;