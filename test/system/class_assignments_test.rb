require "application_system_test_case"

class ClassAssignmentsTest < ApplicationSystemTestCase
  setup do
    @class_assignment = class_assignments(:one)
  end

  test "visiting the index" do
    visit class_assignments_url
    assert_selector "h1", text: "Class Assignments"
  end

  test "creating a Class assignment" do
    visit class_assignments_url
    click_on "New Class Assignment"

    fill_in "Course", with: @class_assignment.course_id
    fill_in "Professor", with: @class_assignment.professor_id
    click_on "Create Class assignment"

    assert_text "Class assignment was successfully created"
    click_on "Back"
  end

  test "updating a Class assignment" do
    visit class_assignments_url
    click_on "Edit", match: :first

    fill_in "Course", with: @class_assignment.course_id
    fill_in "Professor", with: @class_assignment.professor_id
    click_on "Update Class assignment"

    assert_text "Class assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Class assignment" do
    visit class_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class assignment was successfully destroyed"
  end
end
