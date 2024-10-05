-- Write query to get number of graded assignments for each student:
SELECT COUNT(id) FROM assignments WHERE "state"='GRADED' GROUP BY student_id ORDER BY COUNT(id) ;