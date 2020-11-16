Feature:  Delete student functionality  
    
    As a faculty member
    So that I can delete a student from the student database
    
    I want to see a more about student link
    I want to be able to press the delete button
    I want to be back on the home page 
    I want to see that the student has been removed from the database
    
Scenario: View the add student page
   Given I am on the main page
   When I click on "More about Allan"
   Then I should see "Allan"
   And I press "Delete"
   Then I should see "Student 'Allan' deleted."

    
