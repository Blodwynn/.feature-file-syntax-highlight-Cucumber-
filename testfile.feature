@web-shop @checkout @holla_holla_get_dolla
Feature: Shopping Cart works as it should
  Scenario: Visible when the date is in the future
    Given I am on the Checkout page
     Then I can see "shopping form" "checkout button" component

  Scenario: Checkout happens after clicking the button
    Given I am on the Checkout page
     When I tick the "Terms and Conditions"
      And I click the "submit" button on the form
     Then I can see "assurance" message component
      And I cant see "error" message component

Scenario Outline: eating
  Given there are <start> cucumbers
  When I eat <eat> cucumbers
  Then I should have <left> cucumbers

  Examples:
    | start | eat | left |
    |  12   |  5  |  7   |
    |  20   |  5  |  15  |
