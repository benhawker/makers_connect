class Profile < ActiveRecord::Base

  belongs_to :user

  do_not_validate_attachment_file_type :avatar

  has_attached_file :avatar, :styles => { :medium => "300x300>", :small  => "200x200>", :thumb => "100x100>"}

  def avatar_stored?
    self.avatar ? true : false
  end

end
