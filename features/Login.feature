Feature:  Log in/ Log out functionality  
    
    As  a faculty member
    So that I can use the app and be uniquely identified
    
    I want to see a log in screen
    I want to be able to create my account
    I want to be able to log in
    I want to know if I am logged in from any page
    I want to be able to log out from any page
    I want to be sent to the correct page when I log in
    I want to be able to delete my account
    
Scenario: View the log in screen
    Given I am on the advisee-tracker home page
    Then I should see "Department of  Cyber and Computer Sciences-Advisee Tracker"
    Then I should see "Please log in to continue"

Scenario: Create an account
    Given I am on the advisee-tracker home page
    And I follow "Sign Up"
    Then I should be on the sign up page
    
#need to add a test user account in background section
Scenario: log in
    Given I am on the advisee-tracker home page
    Then I should see "Log In"
    And I follow "Log In"
    Then I should be on the login page
    Then I should see "Email" 
    Then I should see "Password"
    When I fill in "email" with "JeffreySchuitema@outlook.com"
    And I fill in "password" with "password"
    And I press "Login"
    And I wait for 1 secondsa
    Then I should see "Logged in"
    


    