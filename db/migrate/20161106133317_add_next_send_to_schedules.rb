class AddNextSendToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :next_send, :datetime
  end
end
