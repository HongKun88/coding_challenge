/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59046
* LEVEL2
*/
SELECT    ANIMAL_ID
     ,    NAME
     ,    SEX_UPON_INTAKE
  FROM    ANIMAL_INS
 WHERE    NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
;