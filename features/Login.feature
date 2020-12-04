Feature:  Log in/ Log out functionality  
    As  a faculty member
    So that I can use the app and be uniquely identified
    I want to see a log in screen
    I want to be able to create my account
    I want to be able to log in
    I want to be able to log out from any page
    
Scenario: View the log in screen
  Given I am on the advisee-tracker home page
  Then I should see "Department of  Cyber and Computer Sciences"
  Then I should see "Please log in to continue" 
  
Scenario: Login
  Given a valid user
  And I am on the advisee-tracker home page 
  When I sign in
  Then I should see "Logged in"
 
Scenario: log out  
    Given a valid user
    Given I am logged in as "test1@test.com"
    Then I should see "Go Back"
    And I follow "Go Back"
    Then I should see "Log Out"
    And I follow "Log Out"
    Then I should see "Logged out"
    And I should not be logged in
    
Scenario: Create an account
    Given I am on the advisee-tracker home page
    And I follow "Sign Up"
    Then I should be on the sign up page
    Then I should see "New User"
    When I fill in "user_email" with "test1@test.com"
    And I fill in "user_password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Create User"
    And I wait for 1 seconds
    Then I should see "User was successfully created."

Scenario: invalid Log in user
    Given I am on the advisee-tracker home page
    And I follow "Log In"
    When I fill in "email" with "test1@test.com"
    And I fill in "password" with "asdklfhaslkdf"
    And I press "Login"
    And I wait for 1 seconds
    Then I should see "Invalid entry, please try again"

Scenario: Invalid Create an account
    Given I am on the advisee-tracker home page
    And I follow "Sign Up"
    Then I should be on the sign up page
    Then I should see "New User"
    When I fill in "user_email" with "test1@test.com"
    And I fill in "user_password" with "password"
    And I fill in "Password confirmation" with "pass798789ord"
    And I press "Create User"
    And I wait for 1 seconds
    Then I should see "Password confirmation doesn't match Password"
    Then I should be on the user create page
