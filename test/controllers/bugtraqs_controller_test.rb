require 'test_helper'

class BugtraqsControllerTest < ActionController::TestCase
  setup do
    @bugtraq = bugtraqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bugtraqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bugtraq" do
    assert_difference('Bugtraq.count') do
      post :create, bugtraq: { bug: @bugtraq.bug, desc: @bugtraq.desc, fix: @bugtraq.fix, incep_date: @bugtraq.incep_date, name: @bugtraq.name, priority: @bugtraq.priority, remediated: @bugtraq.remediated, sourcefile: @bugtraq.sourcefile, tags: @bugtraq.tags, target_date: @bugtraq.target_date }
    end

    assert_redirected_to bugtraq_path(assigns(:bugtraq))
  end

  test "should show bugtraq" do
    get :show, id: @bugtraq
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bugtraq
    assert_response :success
  end

  test "should update bugtraq" do
    patch :update, id: @bugtraq, bugtraq: { bug: @bugtraq.bug, desc: @bugtraq.desc, fix: @bugtraq.fix, incep_date: @bugtraq.incep_date, name: @bugtraq.name, priority: @bugtraq.priority, remediated: @bugtraq.remediated, sourcefile: @bugtraq.sourcefile, tags: @bugtraq.tags, target_date: @bugtraq.target_date }
    assert_redirected_to bugtraq_path(assigns(:bugtraq))
  end

  test "should destroy bugtraq" do
    assert_difference('Bugtraq.count', -1) do
      delete :destroy, id: @bugtraq
    end

    assert_redirected_to bugtraqs_path
  end
end
