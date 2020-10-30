class StudentsController < ApplicationController
    
    
    
  def new
    # default: render 'addnew' template
  end
    
    def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/students/index", notice: "Logged in"
    else
      flash.now[:alert] = "Invalid entry, please try again"
      render "new"
    end
  end
    
end
