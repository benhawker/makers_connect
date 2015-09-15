class Profile < ActiveRecord::Base

  belongs_to :user

 do_not_validate_attachment_file_type :avatar

  has_attached_file :avatar, :styles => { :medium => "300x300>",  :thumb => "100x100>"}
end
