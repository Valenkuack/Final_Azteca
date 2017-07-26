require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get mission" do
    get :mission
    assert_response :success
  end

  test "should get standards" do
    get :standards
    assert_response :success
  end

end
