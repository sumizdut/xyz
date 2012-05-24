require 'test_helper'

class PmatsControllerTest < ActionController::TestCase
  setup do
    @pmat = pmats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pmats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pmat" do
    assert_difference('Pmat.count') do
      post :create, pmat: { head: @pmat.head, meaning: @pmat.meaning, usage: @pmat.usage }
    end

    assert_redirected_to pmat_path(assigns(:pmat))
  end

  test "should show pmat" do
    get :show, id: @pmat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pmat
    assert_response :success
  end

  test "should update pmat" do
    put :update, id: @pmat, pmat: { head: @pmat.head, meaning: @pmat.meaning, usage: @pmat.usage }
    assert_redirected_to pmat_path(assigns(:pmat))
  end

  test "should destroy pmat" do
    assert_difference('Pmat.count', -1) do
      delete :destroy, id: @pmat
    end

    assert_redirected_to pmats_path
  end
end
