class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :to_user_id, null: false
      t.integer :from_user_id, null: false
      t.references :direct_message, foreign_key: true

      t.timestamps
    end
  end
end
