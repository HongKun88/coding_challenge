/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59042
* LEVEL3
*/
SELECT    A.ANIMAL_ID
     ,    A.NAME
  FROM    ANIMAL_OUTS  A
  LEFT JOIN ANIMAL_INS B
    ON    A.ANIMAL_ID = B.ANIMAL_ID
 WHERE    B.ANIMAL_ID IS NULL
 ORDER BY 1, 2
;