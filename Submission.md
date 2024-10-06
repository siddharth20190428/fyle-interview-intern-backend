## Completed Tasks

- Implemented the `GET /principal/assignments` endpoint to list all submitted and graded assignments for the principal.
- Implemented the `GET /principal/teachers` endpoint to list all teachers.
- Implemented the `POST /principal/assignments/grade` endpoint to grade submitted assignments for the principal.
- Fixed the bug that allowed null content submissions in `POST /student/assignments/submit`.
- Fixed the bug that did not set the grade of an assignment in `POST /teacher/assignments/grade`.
- Fixed the bug that returned empty assignments even if the teacher had received assignments in `GET /teacher/assignments`.
- Fixed the bug that allowed teachers to cross-grade assignments in `POST /teacher/assignments/grade`.
- Implemented the `count_grade_A_assignments_by_teacher_with_max_grading` SQL query for the SQL test case.
- Implemented the `number_of_graded_assignments_for_each_student` SQL query for the SQL test case.
- Implemented the `test_grade_assignment_success` test case to test grading an assignment for a teacher.
- Implemented the `test_list_teachers` test case to test listing all teachers for the principal.
- Dockerized the project with a Dockerfile and docker-compose file, which benefits us with simplified dependency management and simplified deployment.

## Docker Instructions

### Prerequisites

- Docker Desktop installed on your machine

### Running the Docker Container

1. Clone the repository to your local machine
2. Navigate to the repository directory
3. Run the command `docker-compose up` to start the Docker container
4. The container will start and the API will be available at `http://localhost:7755`

### Services

1. web - for running the server
2. test - for running the tests
3. coverage - for running the coverage report

### API Endpoints

- `GET /principal/assignments`: List all submitted and graded assignments
- `GET /principal/teachers`: List all teachers
- `POST /principal/assignments/grade`: Grade an assignment
