/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59409
* LEVEL2
*/
SELECT    ANIMAL_ID
     ,    NAME
     ,    CASE WHEN REGEXP_LIKE (SEX_UPON_INTAKE, 'Neutered|Spayed') THEN 'O' ELSE 'X' END AS `중성화`
  FROM    ANIMAL_INS
 ORDER BY 1
;