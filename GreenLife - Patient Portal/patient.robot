*** Settings ***
Resource    ./actions/keywords.robot

*** Test Cases ***
Scenario: Login as Pharmacist in GreenLife
    Given User Test Website
    When User Is In The Welcome Page
    Then User Click Login Now
    And User Click Register Now
    And User Click Register Button
    And User Click Forgot Password
    And User Click Login Button
    And User Click Notification
    And User Click Book a Consult
    And User Click Homepage
    And User Click Order History
    And User Click Settings
    And User Click Prescription Source
    And User Click Store Location
    And User Click Change Password
    And User Click Delete Account
    And User Click Logout



*** Keywords ***
User Test Website
    User Opens Browser and Go to URL
User Is In The Welcome Page
    Welcome Page
User Click Login Now
    Login Now
User Click Register Now
    Register Now
User Click Register Button
    Register Button
User Click Forgot Password
    Forgot Password
User Click Login Button
    Login Button
User Click Notification
    Notification
User Click Book a Consult
    Book a Consult
User Click Homepage
    Homepage
User Click Order History
    Order History
User Click Settings
    Settings
User Click Prescription Source
    Prescription Source
User Click Store Location
    Store Location
User Click Change Password
    Change Password
User Click Delete Account
    Delete Account
User Click Logout
    Logout