require 'test_helper'

class PortalControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get job" do
    get :job
    assert_response :success
  end

  test "should get plan" do
    get :plan
    assert_response :success
  end

end
