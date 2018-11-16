require 'test_helper'

class SupplementariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplementary = supplementaries(:one)
  end

  test "should get index" do
    get supplementaries_url
    assert_response :success
  end

  test "should get new" do
    get new_supplementary_url
    assert_response :success
  end

  test "should create supplementary" do
    assert_difference('Supplementary.count') do
      post supplementaries_url, params: { supplementary: { course_id: @supplementary.course_id, student_id: @supplementary.student_id } }
    end

    assert_redirected_to supplementary_url(Supplementary.last)
  end

  test "should show supplementary" do
    get supplementary_url(@supplementary)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplementary_url(@supplementary)
    assert_response :success
  end

  test "should update supplementary" do
    patch supplementary_url(@supplementary), params: { supplementary: { course_id: @supplementary.course_id, student_id: @supplementary.student_id } }
    assert_redirected_to supplementary_url(@supplementary)
  end

  test "should destroy supplementary" do
    assert_difference('Supplementary.count', -1) do
      delete supplementary_url(@supplementary)
    end

    assert_redirected_to supplementaries_url
  end
end
