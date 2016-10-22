class CreateApiUsers < ActiveRecord::Migration
  def change
    create_table :api_users do |t|
      t.string :email
      t.string :password
      t.string :auth_token

      t.timestamps null: false
    end
  end
end
