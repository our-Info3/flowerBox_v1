require 'test_helper'

class AdressesControllerTest < ActionController::TestCase
  setup do
    @adress = adresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adress" do
    assert_difference('Adress.count') do
      post :create, adress: { billing_city: @adress.billing_city, billing_house_number: @adress.billing_house_number, billing_street: @adress.billing_street, billing_zipcode: @adress.billing_zipcode, shipping_city: @adress.shipping_city, shipping_house_number: @adress.shipping_house_number, shipping_street: @adress.shipping_street, shipping_zipcode: @adress.shipping_zipcode, user_id: @adress.user_id }
    end

    assert_redirected_to adress_path(assigns(:adress))
  end

  test "should show adress" do
    get :show, id: @adress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adress
    assert_response :success
  end

  test "should update adress" do
    patch :update, id: @adress, adress: { billing_city: @adress.billing_city, billing_house_number: @adress.billing_house_number, billing_street: @adress.billing_street, billing_zipcode: @adress.billing_zipcode, shipping_city: @adress.shipping_city, shipping_house_number: @adress.shipping_house_number, shipping_street: @adress.shipping_street, shipping_zipcode: @adress.shipping_zipcode, user_id: @adress.user_id }
    assert_redirected_to adress_path(assigns(:adress))
  end

  test "should destroy adress" do
    assert_difference('Adress.count', -1) do
      delete :destroy, id: @adress
    end

    assert_redirected_to adresses_path
  end
end
