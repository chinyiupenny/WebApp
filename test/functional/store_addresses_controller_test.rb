require 'test_helper'

class StoreAddressesControllerTest < ActionController::TestCase
  setup do
    @store_address = store_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_address" do
    assert_difference('StoreAddress.count') do
      post :create, :store_address => @store_address.attributes
    end

    assert_redirected_to store_address_path(assigns(:store_address))
  end

  test "should show store_address" do
    get :show, :id => @store_address.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @store_address.to_param
    assert_response :success
  end

  test "should update store_address" do
    put :update, :id => @store_address.to_param, :store_address => @store_address.attributes
    assert_redirected_to store_address_path(assigns(:store_address))
  end

  test "should destroy store_address" do
    assert_difference('StoreAddress.count', -1) do
      delete :destroy, :id => @store_address.to_param
    end

    assert_redirected_to store_addresses_path
  end
end
