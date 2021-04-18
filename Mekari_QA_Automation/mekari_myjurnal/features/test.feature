Feature: Create new sales invoice

    Scenario: As a user i should be able create sales invoice in myjurnal
        Given I visit myjurnal
        Then I login
        Then I go to the sales menu
        Then I click new sales invoice and choose Sales invoice
        Then I created new customer
        Then I input Transaction Date
        Then I created new product
        Then I input Buy unit Price
        Then I input Sale Unit Price
        Then I click Save
        When I click Create for continue the proses
        Then I should see notification that the invoice has successfully created