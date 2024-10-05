-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
-- Method 1: Simpler and specific to the question
SELECT COALESCE(MAX(cnt), 0) 
FROM (
  SELECT COUNT(id) AS cnt, teacher_id 
  FROM assignments 
  WHERE state = 'GRADED' 
    AND teacher_id IS NOT NULL 
    AND grade = 'A'
  GROUP BY teacher_id
) AS graded_assignments;


-- Method 2: Using CTE and flexible to answer other questions
-- WITH teacher_assignment_count AS (
--     -- Step 1: Find the teacher who has graded the most assignments
--     SELECT 
--         teacher_id,
--         COUNT(*) AS graded_assignments
--     FROM 
--         assignments
--     WHERE 
--         teacher_id IS NOT NULL
--     GROUP BY 
--         teacher_id
--     ORDER BY 
--         graded_assignments DESC
--     LIMIT 1
-- )
-- -- Step 2: Count the number of grade A's given by that teacher
-- SELECT 
--     COUNT(*) AS grade_a_count
-- FROM 
--     assignments
-- WHERE 
--     grade = 'A' 
--     AND teacher_id = (SELECT teacher_id FROM teacher_assignment_count);
