Feature: Receiving message
  As a user
  I want use the system to receive message from other user
  So I can open received message

  Scenario: user can open received message
    Given there is messaging page
    When I select sender in left sidebar
    Then message should be appeared
