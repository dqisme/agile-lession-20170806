Feature: Greeting to me
    In order to feel happy
    As a visitor
    I want see a greeting to me.

    Scenario: Open browser
        Given I opened browser
        When I enter hello website
        Then website should show "hello, dq".