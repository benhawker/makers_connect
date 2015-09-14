class AddUserToEmployers < ActiveRecord::Migration
  def change
    add_reference :employers, :user, index: true, foreign_key: true
  end
end
