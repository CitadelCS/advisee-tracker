Feature:  Add new student functionality  
    
    As a faculty member
    So that I can add a new student to the student database
    
    I want to see a add new student link
    I want to be able to fill in student name
    I want to be able to fill in CWID
    I want to be able to fill in DOB
    I want to be able to fill in Advisor
    I want to be able to fill in graduation year
    I want to be able to fill in graduation semester
    I want to add student to students page
    
Background: students in database

  Given the following students exist:
  | first   | last   | CWID   | advisor | year            | semester            | lastMeet               |  
  | Ryan    | Arnold |10293847| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Olive   | Smarts |75757575| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Jack    | Dudley |01928384| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Jeff    | Pothish|93746512| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Eric    | Mcgoop |75638546| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC|
  | Kyle    | Flands |48945875| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC|
  And I am on the main page
    
    
Scenario: View the add student page
    Then I should see "Students/Faculty"
    And I follow "Add New Student"
    Then I should see "Add New Student"
    And I should see "First name"
    
    
Scenario: Create an student
    Then I should see "Students/Faculty"
    And I follow "Add New Student"
    Then I should see "Add New Student"
    And I fill in "first" with "Frank"
    And I fill in "last" with "Castle"
    And I fill in "Cwid" with "86753309"
    And I fill in "Dob" with "11/10/1999"
    And I fill in "advisor" with "Col Sanders"
    And I fill in "year" with "2022"
    And I fill in "semester" with "Fall"
    Then I press "Add Student"
    And I wait for 3 seconds
    Then I should be on the main page
    Then I should see "Frank"
    Then I should see "Castle"
    
