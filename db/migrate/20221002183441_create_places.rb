class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :place_name
      t.integer :company_id

      t.timestamps
    end
  end
end
