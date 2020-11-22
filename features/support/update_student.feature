Feature:  Edit/update student ability
    
    As a faculty member
    So that I can edit a students current information
    
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
    Then I should see "More about Arnold"
    And I follow "More about Arnold"
    Then I follow "Edit"
    Then I should see "Edit Existing Student"
    Then I press "Update Student Info"
    And I should see "Ryan Arnold was successfully updated."