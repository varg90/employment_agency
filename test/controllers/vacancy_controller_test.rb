require 'test_helper'

class VacancyControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get suitable_for_cv" do
    get :suitable_for_cv
    assert_response :success
  end

end
