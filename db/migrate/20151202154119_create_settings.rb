class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :frame
      t.string :skin
      t.string :style
      t.string :background
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
