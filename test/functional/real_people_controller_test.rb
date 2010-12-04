require 'test_helper'

class RealPeopleControllerTest < ActionController::TestCase
  setup do
    @real_person = real_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:real_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create real_person" do
    assert_difference('RealPerson.count') do
      post :create, :real_person => @real_person.attributes
    end

    assert_redirected_to real_person_path(assigns(:real_person))
  end

  test "should show real_person" do
    get :show, :id => @real_person.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @real_person.to_param
    assert_response :success
  end

  test "should update real_person" do
    put :update, :id => @real_person.to_param, :real_person => @real_person.attributes
    assert_redirected_to real_person_path(assigns(:real_person))
  end

  test "should destroy real_person" do
    assert_difference('RealPerson.count', -1) do
      delete :destroy, :id => @real_person.to_param
    end

    assert_redirected_to real_people_path
  end
end
