class ProfilesController < ApplicationController
  
  def index
  	@user = current_user if current_user
    @profiles = Profile.all
  end

  def new
  	@user = current_user if current_user
  	@profile = Profile.new
  end

  def create
    @profile = Profile.new(user_id: current_user.id,
                            first_name: profile_params[:first_name],
                            last_name: profile_params[:last_name],
                            cohort: profile_params[:cohort],
                            dob: profile_params[:dob],
                            city: profile_params[:city],
                            country: profile_params[:country],
                            personal_statement: profile_params[:personal_statement],
                            employment_status: profile_params[:employment_status],
                            startup_status: profile_params[:startup_status],
                            avatar: profile_params[:avatar])
    if @profile.save
      flash[:notice] = "Profile created successfully"
      redirect_to profiles_path
    else
      render 'new'
    end
  end

  def show
  	@user = current_user if current_user
    @profile = Profile.find_by(user_id: @user.id)
  end

 	def edit
 		@user = current_user if current_user
 		@profile = Profile.find_by(user_id: @user.id)
 	end

  def update
    @user = current_user if current_user
    @profile = Profile.find_by(user_id: @user.id)
    if @profile.update(profile_params)
      flash[:notice] = "Profile updated successfully"
      render 'index'
    else
      flash[:notice] = "Profile could not be updated"
      render 'edit'
    end
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, 
                                    :cohort, :avatar, :dob, :city,
                                    :country, :personal_statement,
                                    :employment_status, :startup_status
                                    )
  end

end
