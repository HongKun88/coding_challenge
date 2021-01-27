/*
* 문제 출처: https://programmers.co.kr/learn/courses/30/lessons/59413
* LEVEL4
*/

-- 1) 재귀 쿼리를 활용한 방식
/*
WITH RECURSIVE
TM(HH) AS
(
    SELECT 0 AS HH
    UNION ALL
    SELECT HH+1
      FROM TM
     WHERE HH < 23
)

SELECT A.HH AS HOUR
     , COALESCE(B.CNT, 0) AS `COUNT`
  FROM TM A
  LEFT OUTER JOIN (SELECT HOUR(DATETIME) AS HH
                        , SUM(1) AS CNT
                     FROM ANIMAL_OUTS
                    GROUP BY HOUR(DATETIME)
                  ) B
    ON A.HH = B.HH
 ORDER BY 1
;
*/

-- 2) Dummy 데이터를 생성하여 집계하는 방식
SELECT A.HH AS HOUR
     , COALESCE(B.CNT, 0) AS `COUNT`
  FROM (SELECT ROW_NUMBER() OVER(ORDER BY ANIMAL_ID)-1 AS HH
          FROM ANIMAL_OUTS
         LIMIT 24
       ) A
  LEFT OUTER JOIN (SELECT HOUR(DATETIME) AS HH
                        , SUM(1) AS CNT
                     FROM ANIMAL_OUTS
                    GROUP BY HOUR(DATETIME)
                  ) B
    ON A.HH = B.HH
 ORDER BY 1
;

-- 3) 변수 사용 방식
/*
SET @HOUR_LIST = -1;
SELECT (@HOUR_LIST := @HOUR_LIST + 1) AS HOUR
     , (SELECT COUNT(*) FROM ANIMAL_OUTS WHERE HOUR(DATETIME) = @HOUR_LIST) AS `COUNT`
  FROM ANIMAL_OUTS
 WHERE @HOUR_LIST < 23
;
*/