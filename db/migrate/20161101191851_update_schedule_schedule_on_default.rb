class UpdateScheduleScheduleOnDefault < ActiveRecord::Migration
  def change
    change_column_default(:schedules, :schedule_on, false)
  end
end
