Feature: Sorting by given attributes

    As a faculty member
    So that I can sort the students database
    
    I want to be able to sort by first and last name
    I want to see them in alphebetical oprder


Background: students in database

  Given the following students exist:
  | first   | last   | CWID   | advisor | year            | semester            | lastMeet               |  
  | Ryan    | Arnold |10293847| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Olive   | Smarts |75757575| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Jack    | Dudley |01928384| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Jeff    | Pothish|93746512| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC| 
  | Eric    | Mcgoop |75638546| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC|
  | Kyle    | Flands |48945875| Dr. V   | 2021            | Spring              | 2022-10-30 00:00:00 UTC|


Scenario: sort students by first
  Given I am on the main page
  When I follow "First"
  Then I should see "Jeff" before "Ryan"

Scenario: sort students by last
  Given I am on the main page
  When I follow "Last"
  Then I should see "Arnold" before "Mcgoop"

