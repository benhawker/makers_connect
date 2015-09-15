class ProfilesController < ApplicationController
  def index
  	@user = current_user if current_user
  end

  def new
  	@user = current_user if current_user
  	@profile = Profile.new
  end

  def show
  	@user = current_user if current_user
  end

 	def edit
 		@user = current_user if current_user
 		@profile = Profile.find_by(user_id: @user.id)
 	end

end
