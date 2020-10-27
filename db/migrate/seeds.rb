add_student = [{:first => 'Joe', :last => 'Smith', :CWID => '123452', :DOB => '26-Oct-1984', :advisor => "Dr V.", :graduationYear => '2020', :graduationSemester => 'Spring'},
    	  [{:first => 'Jose', :last => 'Smithy', :CWID => '123453', :DOB => '26-Oct-1985', :advisor => "Dr V.", :graduationYear => '2020', :graduationSemester => 'Spring'}
  	     ]

add_student.each do |student|
  Student.create!(student)
end