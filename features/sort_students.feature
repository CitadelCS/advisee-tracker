Feature: Sorting by given attributes

Scenario: Sorting by last advising date
Given I am on the CSCI/Cyber department landing page
When I click “Last Advising Date”
Then I should see the students in order of last advising date

Scenario: Sorting by first name
Given I am on the CSCI/Cyber department landing page
When I click “First Name”
Then I should see the students table in order of first name

Scenario: Sorting by last name
Given I am on the CSCI/Cyber department landing page
When I click “Last Name”
Then I should see the students table in order of last name