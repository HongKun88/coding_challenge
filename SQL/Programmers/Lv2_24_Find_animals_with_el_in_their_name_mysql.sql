/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/59047
* LEVEL2
*/
SELECT    ANIMAL_ID
     ,    NAME
  FROM    ANIMAL_INS
 WHERE    UPPER(NAME) LIKE ('%EL%')
   AND    ANIMAL_TYPE = 'Dog'
 ORDER BY 2
;