require 'test_helper'

class ApiUsersControllerTest < ActionController::TestCase
  setup do
    @api_user = api_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_users)
  end

  test "should create api_user" do
    assert_difference('ApiUser.count') do
      post :create, api_user: { auth_token: @api_user.auth_token, email: @api_user.email, password: @api_user.password }
    end

    assert_response 201
  end

  test "should show api_user" do
    get :show, id: @api_user
    assert_response :success
  end

  test "should update api_user" do
    put :update, id: @api_user, api_user: { auth_token: @api_user.auth_token, email: @api_user.email, password: @api_user.password }
    assert_response 204
  end

  test "should destroy api_user" do
    assert_difference('ApiUser.count', -1) do
      delete :destroy, id: @api_user
    end

    assert_response 204
  end
end
