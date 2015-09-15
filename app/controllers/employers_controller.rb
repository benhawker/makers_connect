class EmployersController < ApplicationController

  def show
    @user = current_user if current_user
    @employers = Employer.find_by(user_id: @user.id)
  end

  def new
  end

end
