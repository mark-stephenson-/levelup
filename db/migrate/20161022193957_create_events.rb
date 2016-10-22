class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :outbound_msg_id
      t.integer :motivating_msg_id
      t.string :description
      t.integer :initial_effort
      t.integer :subsequent_effort

      t.timestamps null: false
    end
  end
end
