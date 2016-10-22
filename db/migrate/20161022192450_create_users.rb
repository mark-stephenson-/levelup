class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fb_id
      t.string :first_name
      t.string :last_name
      t.string :locale
      t.integer :timezone
      t.string :gender

      t.timestamps null: false
    end
  end
end
