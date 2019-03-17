Feature: Closing advertisement
  As a user
  I want use the system to close annoying advertisements
  So I can close advertisements

  Scenario: user can close advertisement
    Given there is main page
    Then the advertisement should be presented in top of page
    When I click on triple dot button
    Then complaint window should be appeared
