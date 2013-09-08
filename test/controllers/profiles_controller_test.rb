require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get user" do
    get :user
    assert_response :success
  end

  test "should get fitnessClub" do
    get :fitnessClub
    assert_response :success
  end

  test "should get instructor" do
    get :instructor
    assert_response :success
  end

end
