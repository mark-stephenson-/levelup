class CreateMessageStocks < ActiveRecord::Migration
  def change
    create_table :message_stocks do |t|
      t.integer :message_type
      t.string :text

      t.timestamps null: false
    end
  end
end
