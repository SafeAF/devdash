require 'test_helper'

class KnolsControllerTest < ActionController::TestCase
  setup do
    @knol = knols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:knols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create knol" do
    assert_difference('Knol.count') do
      post :create, knol: { date: @knol.date, desc: @knol.desc, examples: @knol.examples, instructions: @knol.instructions, knowledge: @knol.knowledge, name: @knol.name, tags: @knol.tags }
    end

    assert_redirected_to knol_path(assigns(:knol))
  end

  test "should show knol" do
    get :show, id: @knol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @knol
    assert_response :success
  end

  test "should update knol" do
    patch :update, id: @knol, knol: { date: @knol.date, desc: @knol.desc, examples: @knol.examples, instructions: @knol.instructions, knowledge: @knol.knowledge, name: @knol.name, tags: @knol.tags }
    assert_redirected_to knol_path(assigns(:knol))
  end

  test "should destroy knol" do
    assert_difference('Knol.count', -1) do
      delete :destroy, id: @knol
    end

    assert_redirected_to knols_path
  end
end
