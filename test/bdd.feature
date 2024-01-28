// Add in pubspec-> bdd_widget_test:
Feature: Counter

  Scenario Outline: The App Started
    Given the app is running
    Then I see {'you pushed button many times'} text
    And I see {'0'} text
    And I see {Icons.add} icon
    Examples:
