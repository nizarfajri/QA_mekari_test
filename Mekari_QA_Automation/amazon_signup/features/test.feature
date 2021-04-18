Feature: Sign up test to Amazon

    Scenario: As user i can sign up to Amazon using unregistered account
        Given I visit Amazon
        Then I click sign in button
        Then I click Create Amazon account
        When I fill the form using unregistered account
        Then I should redirect to Authentication page

    Scenario: As user i can't sign up to Amazon using registered account
        Given I visit Amazon
        Then I click the sign in button
        Then I click Create Amazon account button
        When I fill the form using registered account
        Then I should see notification about sign up problem
