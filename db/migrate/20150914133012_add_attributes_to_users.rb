class AddAttributesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :dob, :date
  	add_column :users, :city, :string
  	add_column :users, :country, :string
  	add_column :users, :cohort, :string
  	add_column :users, :personal_statement, :text
  	add_column :users, :employment_status, :string
  	add_column :users, :startup_status, :string
  end
end
