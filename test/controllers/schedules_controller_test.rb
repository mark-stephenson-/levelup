require 'test_helper'

class SchedulesControllerTest < ActionController::TestCase
  setup do
    @schedule = schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedules)
  end

  test "should create schedule" do
    assert_difference('Schedule.count') do
      post :create, schedule: { default: @schedule.default, default: @schedule.default, default: @schedule.default, default: @schedule.default, default: @schedule.default, default: @schedule.default, default: @schedule.default, default: @schedule.default, false: @schedule.false, false: @schedule.false, friday: @schedule.friday, monday: @schedule.monday, on: @schedule.on, saturday: @schedule.saturday, sunday: @schedule.sunday, thursday: @schedule.thursday, true: @schedule.true, true: @schedule.true, true: @schedule.true, true: @schedule.true, true: @schedule.true, true: @schedule.true, tuesday: @schedule.tuesday, user_id: @schedule.user_id, wednesday: @schedule.wednesday }
    end

    assert_response 201
  end

  test "should show schedule" do
    get :show, id: @schedule
    assert_response :success
  end

  test "should update schedule" do
    put :update, id: @schedule, schedule: { default: @schedule.default, default: @schedule.default, default: @schedule.default, default: @schedule.default, default: @schedule.default, default: @schedule.default, default: @schedule.default, default: @schedule.default, false: @schedule.false, false: @schedule.false, friday: @schedule.friday, monday: @schedule.monday, on: @schedule.on, saturday: @schedule.saturday, sunday: @schedule.sunday, thursday: @schedule.thursday, true: @schedule.true, true: @schedule.true, true: @schedule.true, true: @schedule.true, true: @schedule.true, true: @schedule.true, tuesday: @schedule.tuesday, user_id: @schedule.user_id, wednesday: @schedule.wednesday }
    assert_response 204
  end

  test "should destroy schedule" do
    assert_difference('Schedule.count', -1) do
      delete :destroy, id: @schedule
    end

    assert_response 204
  end
end
