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
end