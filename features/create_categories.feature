# bundle exec rake cucumber
Feature: Create Blog Categories
  As an blog administrator
  In order to classify users blogs and manage them
  I want to add and edit blogging categories.
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create blog categories
    Given I am on the new categories page
    When I fill in "category_name" with "Game"
    And I fill in "category_keywords" with "PC"
    And I fill in "category_permalink" with "pcgames"
    And I fill in "category_description" with "Category for PC games"
    And I press "Save"
    Then I should see "Game"
    Then I should see "PC"
    Then I should see "pcgames"
    Then I should see "Category for PC games"