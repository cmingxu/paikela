require 'test_helper'

class CuriculiamsControllerTest < ActionController::TestCase
  setup do
    @curiculiam = curiculiams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:curiculiams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create curiculiam" do
    assert_difference('Curiculiam.count') do
      post :create, curiculiam: { begin_at: @curiculiam.begin_at, end_at: @curiculiam.end_at, status: @curiculiam.status, student_id: @curiculiam.student_id, student_name: @curiculiam.student_name, teacher_id: @curiculiam.teacher_id, teacher_name: @curiculiam.teacher_name }
    end

    assert_redirected_to curiculiam_path(assigns(:curiculiam))
  end

  test "should show curiculiam" do
    get :show, id: @curiculiam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @curiculiam
    assert_response :success
  end

  test "should update curiculiam" do
    patch :update, id: @curiculiam, curiculiam: { begin_at: @curiculiam.begin_at, end_at: @curiculiam.end_at, status: @curiculiam.status, student_id: @curiculiam.student_id, student_name: @curiculiam.student_name, teacher_id: @curiculiam.teacher_id, teacher_name: @curiculiam.teacher_name }
    assert_redirected_to curiculiam_path(assigns(:curiculiam))
  end

  test "should destroy curiculiam" do
    assert_difference('Curiculiam.count', -1) do
      delete :destroy, id: @curiculiam
    end

    assert_redirected_to curiculiams_path
  end
end
