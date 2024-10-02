from flask import Blueprint
from core import db
from core.apis import decorators
from core.apis.responses import APIResponse
from core.models.assignments import Assignment
from core.models.teachers import Teacher

from .schema import AssignmentSchema
principal_assignments_resources = Blueprint('principal_assignments_resources', __name__)

@principal_assignments_resources.route('/assignments', methods=['GET'], strict_slashes=False)
@decorators.authenticate_principal
def list_assignments(p):
    """Returns list all submitted and graded assignments"""
    students_assignments = Assignment.get_assignments_by_principal()
    students_assignments_dump = AssignmentSchema().dump(students_assignments, many=True)
    return APIResponse.respond(data=students_assignments_dump)