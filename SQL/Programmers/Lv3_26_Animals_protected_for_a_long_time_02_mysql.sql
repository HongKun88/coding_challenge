/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59411
* LEVEL2
*/
SELECT    A.ANIMAL_ID
     ,    A.NAME
  FROM    ANIMAL_OUTS A
  JOIN    ANIMAL_INS  B
    ON    A.ANIMAL_ID = B.ANIMAL_ID
 ORDER BY DATEDIFF(A.DATETIME, B.DATETIME) DESC
 LIMIT 2
;