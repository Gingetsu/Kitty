require 'test_helper'

class KittiesControllerTest < ActionController::TestCase
  setup do
    @kitty = kitties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kitties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kitty" do
    assert_difference('Kitty.count') do
      post :create, kitty: { title: @kitty.title }
    end

    assert_redirected_to kitty_path(assigns(:kitty))
  end

  test "should show kitty" do
    get :show, id: @kitty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kitty
    assert_response :success
  end

  test "should update kitty" do
    patch :update, id: @kitty, kitty: { title: @kitty.title }
    assert_redirected_to kitty_path(assigns(:kitty))
  end

  test "should destroy kitty" do
    assert_difference('Kitty.count', -1) do
      delete :destroy, id: @kitty
    end

    assert_redirected_to kitties_path
  end
end
