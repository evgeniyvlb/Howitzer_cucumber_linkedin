Feature: Sending message
  As a user
  I want use the system to send message to other user from contact list
  So I can send message to other participant

  Scenario: user can send message to user from contact list
    Given there is connections page
    When I click Send message to the right of the user name
    Then pop up message form should be opened
    When I send message via message form
    Then confirmation pop up with sending status should be appeared
