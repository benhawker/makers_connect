class AddAttributesToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :company_name, :string
    add_column :employers, :start_date, :date
    add_column :employers, :end_date, :date
    add_column :employers, :city, :string
    add_column :employers, :country, :string
  end
end
