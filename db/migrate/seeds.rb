students = [{:first => 'Joe', :last => 'Allan', :CWID => '5336587', :DOB => '15-Feb-2000', :advisor => 'Dr. V', :year => '2021', :semester => 'Spring', :lastMeet => '29-Oct-2022'},
    	  {:first => 'Ryan', :last => 'Arnold', :CWID => '11183184', :DOB => '4-Aug-2000', :advisor => 'Dr. V', :year => '2021', :semester => 'Spring', :lastMeet => '30-Oct-2022'},
          {:first => 'Jeff', :last => 'Avery', :CWID => '9564086', :DOB => '18-Apr-2001', :advisor => 'Dr. V', :year => '2021', :semester => 'Spring', :lastMeet => '31-Oct-2022'},
  	      ]

students.each do |student
  Student.create!(student)
end
