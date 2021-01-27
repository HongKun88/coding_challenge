/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59043
* LEVEL3
*/
SELECT    A.ANIMAL_ID
     ,    A.NAME
  FROM    ANIMAL_INS  A
  JOIN    ANIMAL_OUTS B
    ON    A.ANIMAL_ID = B.ANIMAL_ID
   AND    A.DATETIME  > B.DATETIME
 ORDER BY A.DATETIME
;