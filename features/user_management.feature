Feature:  User management functionality  
    As  a faculty member
    So that I can use the app can be managed
    
    I want to see all users
    I want to be able to change a user account 
    I want to delete a user account

Scenario: View a list of users
  Given a valid user
  And I go to the user page
  Then I should see "Listing Users"
  Then I should see "test1@test.com" 
  
Scenario: Show a user account
  Given a valid user
  And I go to the user page
  And I follow "Show"
  Then I should see "Edit | Back"
  
Scenario: Change a User
  Given a valid user
  And I go to the user page
  Then I should see "Edit"
  And I follow "Edit"
  Then I should see "Editing User"
  When I fill in "user_password" with "password"
  When I fill in "Password confirmation" with "password"
  And I press "Update User"
  Then I should see "User was successfully updated."
  
Scenario: Invalid Change of a User
  Given a valid user
  And I go to the user page
  Then I should see "Edit"
  And I follow "Edit"
  Then I should see "Editing User"
  When I fill in "user_password" with "password"
  When I fill in "Password confirmation" with "123421341234"
  And I press "Update User"
  Then I should see "Password confirmation doesn't match Password"
  
Scenario: Delete a User
  Given a valid user
  And I go to the user page
  And I follow "Delete"
  Then I should see "User was successfully destroyed."