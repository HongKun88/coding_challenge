/*
* 문제 출처 : https://programmers.co.kr/learn/courses/30/lessons/62284
* LEVEL?
*/
SELECT    CART_ID
  FROM    CART_PRODUCTS
 GROUP BY CART_ID
HAVING COUNT(DISTINCT CASE WHEN NAME IN ('Milk', 'Yogurt') THEN NAME END) > 1
 ORDER BY CART_ID
;