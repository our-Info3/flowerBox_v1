require 'test_helper'

class FlowerBoxesControllerTest < ActionController::TestCase
  setup do
    @flower_box = flower_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flower_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flower_box" do
    assert_difference('FlowerBox.count') do
      post :create, flower_box: { color: @flower_box.color, price: @flower_box.price, size: @flower_box.size }
    end

    assert_redirected_to flower_box_path(assigns(:flower_box))
  end

  test "should show flower_box" do
    get :show, id: @flower_box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flower_box
    assert_response :success
  end

  test "should update flower_box" do
    patch :update, id: @flower_box, flower_box: { color: @flower_box.color, price: @flower_box.price, size: @flower_box.size }
    assert_redirected_to flower_box_path(assigns(:flower_box))
  end

  test "should destroy flower_box" do
    assert_difference('FlowerBox.count', -1) do
      delete :destroy, id: @flower_box
    end

    assert_redirected_to flower_boxes_path
  end
end
