require 'test_helper'

class EkiselevasControllerTest < ActionController::TestCase
  setup do
    @ekiseleva = ekiselevas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ekiselevas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ekiseleva" do
    assert_difference('Ekiseleva.count') do
      post :create, ekiseleva: {  }
    end

    assert_redirected_to ekiseleva_path(assigns(:ekiseleva))
  end

  test "should show ekiseleva" do
    get :show, id: @ekiseleva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ekiseleva
    assert_response :success
  end

  test "should update ekiseleva" do
    patch :update, id: @ekiseleva, ekiseleva: {  }
    assert_redirected_to ekiseleva_path(assigns(:ekiseleva))
  end

  test "should destroy ekiseleva" do
    assert_difference('Ekiseleva.count', -1) do
      delete :destroy, id: @ekiseleva
    end

    assert_redirected_to ekiselevas_path
  end
end
