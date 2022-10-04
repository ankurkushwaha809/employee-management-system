class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :real_name
      t.string :image_name
      t.integer :user_id

      t.timestamps
    end
  end
end
