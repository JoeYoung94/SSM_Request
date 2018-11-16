require "application_system_test_case"

class SupplementariesTest < ApplicationSystemTestCase
  setup do
    @supplementary = supplementaries(:one)
  end

  test "visiting the index" do
    visit supplementaries_url
    assert_selector "h1", text: "Supplementaries"
  end

  test "creating a Supplementary" do
    visit supplementaries_url
    click_on "New Supplementary"

    fill_in "Course", with: @supplementary.course_id
    fill_in "Student", with: @supplementary.student_id
    click_on "Create Supplementary"

    assert_text "Supplementary was successfully created"
    click_on "Back"
  end

  test "updating a Supplementary" do
    visit supplementaries_url
    click_on "Edit", match: :first

    fill_in "Course", with: @supplementary.course_id
    fill_in "Student", with: @supplementary.student_id
    click_on "Update Supplementary"

    assert_text "Supplementary was successfully updated"
    click_on "Back"
  end

  test "destroying a Supplementary" do
    visit supplementaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supplementary was successfully destroyed"
  end
end
