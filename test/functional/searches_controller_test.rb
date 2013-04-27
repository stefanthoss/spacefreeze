require 'test_helper'

class SearchesControllerTest < ActionController::TestCase
  setup do
    @search = searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search" do
    assert_difference('Search.count') do
      post :create, search: { address: @search.address, begin: @search.begin, charge: @search.charge, end: @search.end, max_distance: @search.max_distance, max_price: @search.max_price, space_type: @search.space_type, user_id: @search.user_id }
    end

    assert_redirected_to search_path(assigns(:search))
  end

  test "should show search" do
    get :show, id: @search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @search
    assert_response :success
  end

  test "should update search" do
    put :update, id: @search, search: { address: @search.address, begin: @search.begin, charge: @search.charge, end: @search.end, max_distance: @search.max_distance, max_price: @search.max_price, space_type: @search.space_type, user_id: @search.user_id }
    assert_redirected_to search_path(assigns(:search))
  end

  test "should destroy search" do
    assert_difference('Search.count', -1) do
      delete :destroy, id: @search
    end

    assert_redirected_to searches_path
  end
end
