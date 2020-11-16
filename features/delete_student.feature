Feature:  Delete student functionality  
    
    As a faculty member
    So that I can delete a student from the student database
    
    I want to see a more about student link
    I want to be able to press the delete button
    I want to be back on the home page 
    I want to see that the student has been removed from the database

Background: students in database

  Given the following students exist:
  | first   | last   | CWID   | advisor | year            | semester            | lastMeet               |  
  | Ryan    | Arnold |10293847| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Olive   | Smarts |75757575| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Jack    | Dudley |01928384| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Jeff    | Pothish|93746512| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Eric    | Mcgoop |75638546| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC|
  | Kyle    | Flands |48945875| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC|

Scenario: View the student page and delete student
   Given I am on the main page
   When I follow "More about Arnold"
   Then I should see "Arnold"
   And I press "Delete"
   Then I should see "Student 'Arnold' deleted."

    
