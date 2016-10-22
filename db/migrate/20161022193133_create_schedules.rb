class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :user, index: true, foreign_key: true
      t.boolean :monday, default: true
      t.boolean :tuesday, default: true
      t.boolean :wednesday, default: true
      t.boolean :thursday, default: true
      t.boolean :friday, default: true
      t.boolean :saturday, default: false
      t.boolean :sunday, default: false
      t.boolean :schedule_on, default: true

      t.timestamps null: false
    end
  end
end
