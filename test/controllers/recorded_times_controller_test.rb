require 'test_helper'

class RecordedTimesControllerTest < ActionController::TestCase
  setup do
    @recorded_time = recorded_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recorded_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recorded_time" do
    assert_difference('RecordedTime.count') do
      post :create, recorded_time: { number: @recorded_time.number }
    end

    assert_redirected_to recorded_time_path(assigns(:recorded_time))
  end

  test "should show recorded_time" do
    get :show, id: @recorded_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recorded_time
    assert_response :success
  end

  test "should update recorded_time" do
    patch :update, id: @recorded_time, recorded_time: { number: @recorded_time.number }
    assert_redirected_to recorded_time_path(assigns(:recorded_time))
  end

  test "should destroy recorded_time" do
    assert_difference('RecordedTime.count', -1) do
      delete :destroy, id: @recorded_time
    end

    assert_redirected_to recorded_times_path
  end
end
