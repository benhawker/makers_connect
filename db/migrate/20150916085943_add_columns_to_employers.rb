class AddColumnsToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :role, :string
  end
end
