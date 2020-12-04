class StudentsController < ApplicationController
    
  def student_params
     params.require(:student).permit(:first, :last, :CWID, :DOB, :advisor, :year, :semester, :lastMeet, :notes)
  end
    
  def show
     id = params[:id]
     @student = Student.find(id)
  end

  def list
     @student = Student.all
  end

  def index
    sort = params[:sort] || session[:sort]
    case sort
    when 'first'
      ordering,@first_header = {:first => :asc}, 'bg-warning hilite'
    when 'last'
      ordering,@last_header = {:last => :asc}, 'bg-warning hilite'
    end
    @all_years = Student.all_years
    @selected_years = params[:years] || session[:years] || {}

    if @selected_years == {}
      @selected_years = Hash[@all_years.map {|year| [year, year]}]
    end

    if params[:sort] != session[:sort] or params[:years] != session[:years]
      session[:sort] = sort
      session[:years] = @selected_years
      redirect_to :sort => sort, :years => @selected_years and return
    end
    @students = Student.where(year: @selected_years.keys).order(ordering)
  end

  def edit
     @student = Student.find params[:id]
  end

  def update
    @student = Student.find params[:id]
    @student.update_attributes!(student_params)
    flash[:notice] = "#{@student.first} #{@student.last} was successfully updated."
    redirect_to student_path(@student)
  end  

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:notice] = "Student '#{@student.last}' deleted."
    redirect_to students_path
  end   
    
  def new
    # default: render 'addnew' template
  end
    
   def student_params_new
     params.permit(:first, :last, :CWID, :DOB, :advisor, :year, :semester, :lastMeet, :notes)
  end   
    
  def create
    @student = Student.create!(student_params_new)
    redirect_to students_path
  end
end
