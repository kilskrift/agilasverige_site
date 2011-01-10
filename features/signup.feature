# coding: utf-8
Feature: Signup
  In order to register for the conference
  An visitor wants to sign up on the webpage

  Scenario:
    Given I am a previously unregistered visitor
      And I am on the registration page
    Then show me the page
    When I fill in the following:
      | Förnamn              | Test          |
      | Efternamn            | Testsson      |
      | Emailadress          | test@test.com |
      | Lösenord             | 121212        |
      | Lösenordsbekräftelse | 121212        |
      | Organisation         | Test          |
      | Adress               | Testgatan 1   |
      | Postnummer           | 12121         |
      | Postadress           | Testinge      |
      | Fakturareferens      | Test          |
      And I click 'Registrera anmälan'
    Then I should see 'Tack för din anmälan'
