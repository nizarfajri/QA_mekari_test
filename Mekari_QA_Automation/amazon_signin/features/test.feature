Feature: Sign in test to amazon

    Scenario: As user i can sign in to Amazon using valid credential
        Given I visit Amazon
        Then I click Sign in
        When I input valid email
        When I input valid password
        Then I should see homepage

    Scenario: As user i can't sign in to Amazon using invalid credential
        Given I visit Amazon
        Then I Click Sign in
        When I input Valid email
        When I input invalid password
        Then I should see Notification about invalid credential

