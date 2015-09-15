class ProfilesController < ApplicationController
  def index
  	@user = current_user if current_user
  end

  def new
  	@user = current_user if current_user
  	@profile = Profile.new
  end

  def create
    @profile = Profile.new(user_id: current_user.id,
                            first_name: profile_params[:first_name],
                            last_name: profile_params[:last_name],
                            cohort: profile_params[:cohort], avatar: profile_params[:avatar])

    if @profile.save
      flash[:notice] = "Profile created successfully"
      redirect_to profiles_path
    else
      render 'new'
    end
  end

  def show
  	@user = current_user if current_user
  end

 	def edit
 		@user = current_user if current_user
 		@profile = Profile.find_by(user_id: @user.id)
 	end


  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :cohort, :avatar)
  end

end
