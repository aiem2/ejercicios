require "test_helper"

class BuildingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buildings_index_url
    assert_response :success
  end

  test "should get create" do
    get buildings_create_url
    assert_response :success
  end

  test "should get show" do
    get buildings_show_url
    assert_response :success
  end

  test "should get edit" do
    get buildings_edit_url
    assert_response :success
  end
end
