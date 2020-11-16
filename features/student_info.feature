Feature: Student View

   In order to see student information
   As a faculty memeber
   I want to see all a students information

Scenario: Students Page Link
   Given I am on the main page
   Then I should see "More Info"

Scenario: Student Page
   Given I am on the main page
   When I click on "More about Allen"
   Then I should see "Allen"