class AddAttributesToProfiles < ActiveRecord::Migration
  def change
  	add_column :profiles, :first_name, :string
  	add_column :profiles, :last_name, :string
  	add_column :profiles, :dob, :date
  	add_column :profiles, :city, :string
  	add_column :profiles, :country, :string
  	add_column :profiles, :cohort, :string
  	add_column :profiles, :personal_statement, :text
  	add_column :profiles, :employment_status, :string
  	add_column :profiles, :startup_status, :string
  end
end
