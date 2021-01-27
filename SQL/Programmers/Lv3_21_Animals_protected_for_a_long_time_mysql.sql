/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59044
* LEVEL3
*/
SELECT    A.NAME
     ,    A.DATETIME
  FROM    ANIMAL_INS    A
  LEFT JOIN ANIMAL_OUTS B
    ON    A.ANIMAL_ID = B.ANIMAL_ID
 WHERE    B.ANIMAL_ID IS NULL
 ORDER BY 2
 LIMIT 3
;