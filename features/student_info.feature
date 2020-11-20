Feature: Student View

   In order to see student information
   As a faculty memeber
   I want to see all a students information

Background: students in database

  Given the following students exist:
  | first   | last   | CWID   | advisor | year            | semester            | lastMeet               |  
  | Ryan    | Arnold |10293847| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Olive   | Smarts |75757575| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Jack    | Dudley |01928384| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Jeff    | Pothish|93746512| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Eric    | Mcgoop |75638546| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC|
  | Kyle    | Flands |48945875| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC|


Scenario: Students Page Link
   Given I am on the main page
   Then I should see "More Info"

Scenario: Student Page
   Given I am on the main page
   When I follow "More about Arnold"
   Then I should see "Arnold"