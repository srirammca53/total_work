require 'test_helper'

class EmpDetailsControllerTest < ActionController::TestCase
  setup do
    @emp_detail = emp_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emp_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emp_detail" do
    assert_difference('EmpDetail.count') do
      post :create, :emp_detail => @emp_detail.attributes
    end

    assert_redirected_to emp_detail_path(assigns(:emp_detail))
  end

  test "should show emp_detail" do
    get :show, :id => @emp_detail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @emp_detail.to_param
    assert_response :success
  end

  test "should update emp_detail" do
    put :update, :id => @emp_detail.to_param, :emp_detail => @emp_detail.attributes
    assert_redirected_to emp_detail_path(assigns(:emp_detail))
  end

  test "should destroy emp_detail" do
    assert_difference('EmpDetail.count', -1) do
      delete :destroy, :id => @emp_detail.to_param
    end

    assert_redirected_to emp_details_path
  end
end
