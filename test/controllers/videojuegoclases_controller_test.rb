require 'test_helper'

class VideojuegoclasesControllerTest < ActionController::TestCase
  setup do
    @videojuegoclase = videojuegoclases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videojuegoclases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create videojuegoclase" do
    assert_difference('Videojuegoclase.count') do
      post :create, videojuegoclase: { clase_id: @videojuegoclase.clase_id, videojuego_id: @videojuegoclase.videojuego_id }
    end

    assert_redirected_to videojuegoclase_path(assigns(:videojuegoclase))
  end

  test "should show videojuegoclase" do
    get :show, id: @videojuegoclase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @videojuegoclase
    assert_response :success
  end

  test "should update videojuegoclase" do
    patch :update, id: @videojuegoclase, videojuegoclase: { clase_id: @videojuegoclase.clase_id, videojuego_id: @videojuegoclase.videojuego_id }
    assert_redirected_to videojuegoclase_path(assigns(:videojuegoclase))
  end

  test "should destroy videojuegoclase" do
    assert_difference('Videojuegoclase.count', -1) do
      delete :destroy, id: @videojuegoclase
    end

    assert_redirected_to videojuegoclases_path
  end
end
