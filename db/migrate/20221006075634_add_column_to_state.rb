class AddColumnToState < ActiveRecord::Migration[7.0]
  def change
        add_column :states, :country_id, :integer

  end
end
