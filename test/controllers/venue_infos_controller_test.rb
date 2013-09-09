require 'test_helper'

class VenueInfosControllerTest < ActionController::TestCase
  setup do
    @venue_info = venue_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venue_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venue_info" do
    assert_difference('VenueInfo.count') do
      post :create, venue_info: { description: @venue_info.description, name: @venue_info.name, picture: @venue_info.picture }
    end

    assert_redirected_to venue_info_path(assigns(:venue_info))
  end

  test "should show venue_info" do
    get :show, id: @venue_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venue_info
    assert_response :success
  end

  test "should update venue_info" do
    patch :update, id: @venue_info, venue_info: { description: @venue_info.description, name: @venue_info.name, picture: @venue_info.picture }
    assert_redirected_to venue_info_path(assigns(:venue_info))
  end

  test "should destroy venue_info" do
    assert_difference('VenueInfo.count', -1) do
      delete :destroy, id: @venue_info
    end

    assert_redirected_to venue_infos_path
  end
end
