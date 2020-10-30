class student_controller < ApplicationController
  def list
     @students = Student.all
        
  end
    
  def show_students
     @students = Student.all(params[:id])
        
  end
    
  def student_params
     params.require(:students).permit(:first, :last, :CWID, :DOB, :advisor, :graduationYear, :graduationSemester, :lastMeet)   end
 
  
  def edit
     @students = Student.find params[:id]
  end

  def delete
     Student.find(params[:id]).destroy
     redirect_to :action => 'list'
  end

    
    
end 

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     
end