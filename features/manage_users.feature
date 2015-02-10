Feature: Manage Users
  In order to manage user details
  As a security enthusiast
  I want to edit user profiles only when authorized

@focus
Scenario: Show edit link as admin
  Given the following user records
  | username | email           | password | admin |
  | bob      | bob@gmail.com   | secret   | false |
  | admin    | admin@gmail.com | secret   | true  |

  And I am logged in as "admin" with password "secret"
  When I visit profile for "bob"
  Then I should see "Edit Profile"

@focus
Scenario: Hide edit link as guest
  Given the following user records
  | username | email           | password | admin |
  | bob      | bob@gmail.com   | secret   | false |
  | admin    | admin@gmail.com | secret   | true  |

  When I visit profile for "bob"
  Then I should not see "Edit Profile"

@focus
Scenario: Show edit link as owner
  Given the following user records
  | username | email           | password | admin |
  | bob      | bob@gmail.com   | secret   | false |
  | admin    | admin@gmail.com | secret   | true  |

  And I am logged in as "bob" with password "secret"
  When I visit profile for "bob"
  Then I should see "Edit Profile"
