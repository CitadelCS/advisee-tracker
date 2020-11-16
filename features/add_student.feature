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
    
Scenario: View the add student page
    Given I am on the main page
    Then I should see "Welcome To The Students/Faculty View!"
    And I follow "Add New Student"
    Then I should see "Add New Student"
    And I should see "First name"

Scenario: Create an student
    Given I am on the main page
    Then I should see "Welcome To The Students/Faculty View!"
    And I follow "Add New Student"
    Then I should see "Add New Student"
    And I fill in "First_Name" with "Frank"
    And I fill in "Last_Name" with "Castle"
    And I fill in "Cwid" with "8675309"
    And I fill in "Dob" with "11/10/1775"
    And I fill in "Advisor" with "Col Sanders"
    And I fill in "Graduation year" with "2020"
    And I fill in "Graduation semester" with "Fall"
    Then I press "add" 
    Then I am on the main page
    And I should see "Frank"
    And I should see "Castle"
    
