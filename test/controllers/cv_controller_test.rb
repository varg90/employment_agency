require 'test_helper'

class CvControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get suitable_for_vacancy" do
    get :suitable_for_vacancy
    assert_response :success
  end

end
