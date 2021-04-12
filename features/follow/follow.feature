@follow
Feature: Check follow and followers

  Scenario: Check if a user follows another user
    Given A follow B
    When i am on Bs profile
    Then I can see A on Bs follower list

  Scenario: Check quantity followers of an user
    Given A follow B
    When i am on Bs profile
    Then i can see B has at least one follower

  Scenario: Check following list
    Given A does not follow B
    Then B does not appear in the list of stores that A is following