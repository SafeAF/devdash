require 'test_helper'

class StorsControllerTest < ActionController::TestCase
  setup do
    @stor = stors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stor" do
    assert_difference('Stor.count') do
      post :create, stor: { name: @stor.name, tags: @stor.tags, upload_date: @stor.upload_date, upload_file: @stor.upload_file }
    end

    assert_redirected_to stor_path(assigns(:stor))
  end

  test "should show stor" do
    get :show, id: @stor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stor
    assert_response :success
  end

  test "should update stor" do
    patch :update, id: @stor, stor: { name: @stor.name, tags: @stor.tags, upload_date: @stor.upload_date, upload_file: @stor.upload_file }
    assert_redirected_to stor_path(assigns(:stor))
  end

  test "should destroy stor" do
    assert_difference('Stor.count', -1) do
      delete :destroy, id: @stor
    end

    assert_redirected_to stors_path
  end
end
