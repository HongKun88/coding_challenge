/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59036
* LEVEL1
*/
SELECT    ANIMAL_ID
     ,    NAME
  FROM    ANIMAL_INS
 WHERE    INTAKE_CONDITION = 'Sick'
 ORDER BY 1
;