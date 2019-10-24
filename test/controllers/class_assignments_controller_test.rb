require 'test_helper'

class ClassAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_assignment = class_assignments(:one)
  end

  test "should get index" do
    get class_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_class_assignment_url
    assert_response :success
  end

  test "should create class_assignment" do
    assert_difference('ClassAssignment.count') do
      post class_assignments_url, params: { class_assignment: { course_id: @class_assignment.course_id, professor_id: @class_assignment.professor_id } }
    end

    assert_redirected_to class_assignment_url(ClassAssignment.last)
  end

  test "should show class_assignment" do
    get class_assignment_url(@class_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_assignment_url(@class_assignment)
    assert_response :success
  end

  test "should update class_assignment" do
    patch class_assignment_url(@class_assignment), params: { class_assignment: { course_id: @class_assignment.course_id, professor_id: @class_assignment.professor_id } }
    assert_redirected_to class_assignment_url(@class_assignment)
  end

  test "should destroy class_assignment" do
    assert_difference('ClassAssignment.count', -1) do
      delete class_assignment_url(@class_assignment)
    end

    assert_redirected_to class_assignments_url
  end
end
