require 'test_helper'

class CosControllerTest < ActionController::TestCase
  setup do
    @co = cos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create co" do
    assert_difference('Co.count') do
      post :create, co: { item_group_id: @co.item_group_id, name: @co.name, status: @co.status }
    end

    assert_redirected_to co_path(assigns(:co))
  end

  test "should show co" do
    get :show, id: @co
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @co
    assert_response :success
  end

  test "should update co" do
    patch :update, id: @co, co: { item_group_id: @co.item_group_id, name: @co.name, status: @co.status }
    assert_redirected_to co_path(assigns(:co))
  end

  test "should destroy co" do
    assert_difference('Co.count', -1) do
      delete :destroy, id: @co
    end

    assert_redirected_to cos_path
  end
end
