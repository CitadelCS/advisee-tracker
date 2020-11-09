class StudentController < ApplicationController
  def student_params
   params.permit(:first, :last, :CWID, :DOB, :advisor, :year, :semester, :lastMeet)
  end
    
  def show
     id = params[:id]
     @student = Student.find(id)
  end
    
  def list
     @student = Student
  end
    
  def index
    
  end

  def edit
     
  end

  def update
    
  end  

  def destroy
    
  end   
    
    
  def new
    
  end
    
  def create
    
  end
end