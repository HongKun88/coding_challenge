/*
문제 출처: https://www.hackerrank.com/challenges/15-days-of-learning-sql/submissions/code/168165471
Hard Level
*/

WITH TEMP_TB AS
(
  SELECT    submission_date
       ,    hacker_id
       ,    SUM(1) AS submission_cnt
    FROM    Submissions
   GROUP BY submission_date
       ,    hacker_id
)

SELECT  Q1.submission_date
     ,  Q1.con_cnt
     ,  Q2.hacker_id
     ,  Q2.name
  FROM (SELECT    T4.submission_date
             ,    COUNT(T4.hacker_id) AS con_cnt
          FROM   (SELECT    T3.submission_date
                       ,    T3.hacker_id
                       ,    CASE WHEN DATEDIFF(DD, D1.first_date, T3.submission_date)+1 = T3.CNT THEN 1 ELSE 0 END AS diff_flag
                    FROM   (SELECT    T1.submission_date
                                 ,    T1.hacker_id
                                 ,    1 AS dummy
                                 ,    SUM(1) AS CNT
                              FROM    TEMP_TB T1
                              JOIN    TEMP_TB T2
                                ON    T1.hacker_id        = T2.hacker_id
                               AND    T1.submission_date >= T2.submission_date
                             GROUP BY T1.submission_date
                                 ,    T1.hacker_id
                           ) T3
                    JOIN (SELECT MIN(submission_date) AS first_date
                               , 1 AS dummy
                            FROM Submissions
                         ) D1
                      ON  T3.dummy = D1.dummy
                 ) T4
         WHERE T4.diff_flag = 1
         GROUP BY T4.submission_date
       ) Q1
  JOIN (SELECT  S2.submission_date
             ,  S2.hacker_id
             ,  H1.name
          FROM (SELECT submission_date
                     , hacker_id
                     , ROW_NUMBER() OVER(PARTITION BY submission_date ORDER BY submission_cnt DESC, hacker_id) AS sub_rn
                  FROM TEMP_TB S1
               ) S2
          JOIN Hackers H1
            ON S2.hacker_id = H1.hacker_id
           AND S2.sub_rn    = 1
       ) Q2
    ON  Q1.submission_date = Q2.submission_date
;