class EmployersController < ApplicationController

  def show
    @user = current_user if current_user
    @employer = Employer.find_by(user_id: @user.id)
  end

  def new
    @user = current_user if current_user
    @employer = Employer.new
  end

  def create
    @user = current_user if current_user
    @employer = @user.employers.build(employer_params)
    if @employer.save
      flash[:notice] = "Work history saved successfully"
      redirect_to "/users/#{@user.id}/employers"
    else
      flash[:alert] = "Sorry, your work history couldn't be updated. Please try again."
      render 'new'
    end
  end

  def employer_params
    params.require(:employer).permit(:company_name, :role, :city,
                                    :country, :start_date, :end_date
                                    )
  end

end
