/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59410
* LEVEL2
*/
SELECT    ANIMAL_TYPE
     ,    COALESCE(NAME, 'No name') AS `NAME`
     ,    SEX_UPON_INTAKE
  FROM    ANIMAL_INS
 ORDER BY ANIMAL_ID
;