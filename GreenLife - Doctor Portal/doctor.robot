*** Settings ***
Resource    ./dractions/drkeywords.robot

*** Test Cases ***
Scenario: Login as Doctor in GreenLife
    Given User Test Website
    # And Switch Account
    # And Return to Login Page
    # And Click Password or Pin Code
    And User Input Email and Password
    And User Select Keep me Signed In
    And User Click Sign In
    # And User Click Hamburger
    # And User Select Grid
    # And User Select Grid Item
    # And User Click Export CSV
    And Write New Prescription
    # And User Manage Patient
    # And User Upload Patient CSV
    # And Add New Patient
    # And Patient View Action
    # And Click Patient Details
    # And Patient Update Action
    # And User Click Archive Action
    # And User Click Archive Page
    # And User Click View Action in Archive Page
    # And User Click Patient Details in Archive Page
    # And User Click Archive Page Again
    # And User Click Patient Update in Archive Page
    # And User Click Patient Archive in Archive Page
    # And User Go To Prescription
    # And Click New Page
    # And Click Processing Page
    # And Click Completed Page
    # And Click Draft Page
    # And User Click Journal Page
    # And User Click Settings
    # And User Click Logout


*** Keywords ***
User Test Website
    User Opens Browser and Go to URL
# Switch Account
#     User Switch Account
# Return to Login Page
#     User Return
# Click Password or Pin Code
#     Use Password or Pin Code
User Input Email and Password
    User Login
User Select Keep me Signed In
    Click Keep me Signed In
User Click Sign In
    Click Sign In
# User Click Hamburger
#     Click Hamburger
# User Select Grid
#     Click Grid
# User Select Grid Item
#     Click Grid Items
# User Click Export CSV
#     User Click Export
Write New Prescription
    User Write New Prescription
# User Manage Patient
#     User Click Manage Patient
# User Upload Patient CSV
#     User Upload Patient List
# Add New Patient
#     User Add New Patient
# Patient View Action
#     User Click View Action
# Click Patient Details
#     Patient Details
# Patient Update Action
#     User Click Update Action
# User Click Archive Action
#     Click Archive Button
# User Click Archive Page
#     Click Archive Page
# User Click View Action in Archive Page
#     User Click View Action
# User Click Patient Details in Archive Page
#     Patient Details
# User Click Archive Page Again
#     Click Archive Page
# User Click Patient Update in Archive Page
#     User Click Update Action
# User Click Patient Archive in Archive Page
#     Click Archive Button
# User Go To Prescription
#     Click Prescription
# Click New Page
#     Prescription New Page
# Click Processing Page
#     Prescription Processing Page
# Click Completed Page
#     Prescription Completed Page
# Click Draft Page
#     Prescription Draft Page
# User Click Journal Page
#     Click Journal Page
# User Click Settings
#     Click Settings
# User Click Logout
#     Click Logout