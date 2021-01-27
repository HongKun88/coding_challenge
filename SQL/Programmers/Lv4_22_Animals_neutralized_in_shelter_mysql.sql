/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59045
* LEVEL4
*/
SELECT    A.ANIMAL_ID
     ,    A.ANIMAL_TYPE
     ,    A.NAME
  FROM    ANIMAL_OUTS  A
  JOIN    ANIMAL_INS B
    ON    A.ANIMAL_ID        =  B.ANIMAL_ID
   AND    A.SEX_UPON_OUTCOME <> B.SEX_UPON_INTAKE
   AND    B.SEX_UPON_INTAKE  LIKE 'Intact%'
 ORDER BY 1
;