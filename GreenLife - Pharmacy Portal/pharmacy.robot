*** Settings ***
Resource    ./actions/keywords.robot

*** Test Cases ***
Scenario: Login as Pharmacist in GreenLife
    Given User Test Website
    And Switch Account
    And Return to Login Page
    And Click Password or Pin Code
    And User Input Username and Password
    And User Select Keep me Signed In
    And User Click Sign In
    And User Click Recent Prescription Orders
    And User Click Recent Prescription Processing Page
    And User Click Recent Prescription Completed Page
    And Dashboard Display
    And User Click Product View Action
    And User Click Default Prescription
    And User Click Product Back Button
    And Dashboard Display2
    And User Click Product View Action2
    And User Click Product Update Button
    And User Click Update Product Details Cancel Button
    And User Click Hamburger
    And User Click Dashboard
    And User Click Product View Action3
    And User Click Product Update Button2
    And User Click Update Product Details Update Button
    And User Click Order
    And User Click Prescription Orders
    And User Click Prescription Orders New Page
    And User Click Prescription Orders Processing Page
    And User Click Prescription Orders Completed Page
    And User Click Product Page
    And User Click Product Page Table View
    And User Click Product Page Grid View
    And User Click Product Page Manage Product
    And User Click Product Page New Order
    And User Click Manage Staff
    And User Click Reports Page
    And User Click Journals Page
    And User Click Activity Logs
    And User Click Settings Page
    And User Click Signout

*** Keywords ***
User Test Website
    User Opens Browser and Go to URL
Switch Account
    User Switch Account
Return to Login Page
    User Return
Click Password or Pin Code
    Use Password or Pin Code
User Input Username and Password
    User Login
User Select Keep me Signed In
    Click Keep me Signed In
User Click Sign In
    Click Sign In
User Click Recent Prescription Orders
    Recent Prescription Orders
User Click Recent Prescription Processing Page
    Recent Prescription Processing Page
User Click Recent Prescription Completed Page
    Recent Prescription Completed Page
Dashboard Display
    Dashboard
User Click Product View Action
    Product View Action
User Click Default Prescription
    Default Prescription
User Click Product Back Button
    Product Back Button
Dashboard Display2
    Dashboard
User Click Product View Action2
    Product View Action
User Click Product Update Button
    Product Update Button
User Click Update Product Details Cancel Button
    Update Product Details Cancel Button
User Click Hamburger
    Click Hamburger
User Click Dashboard
    Click Dashboard
User Click Product View Action3
    Product View Action
User Click Product Update Button2
    Product Update Button
User Click Update Product Details Update Button
    Update Product Details Update Button
User Click Order
    Click Order
User Click Prescription Orders
    Prescription Orders
User Click Prescription Orders New Page
    Prescription Orders New Page
User Click Prescription Orders Processing Page
    Prescription Orders Processing Page
User Click Prescription Orders Completed Page
    Prescription Orders Completed Page
User Click Product Page
    Click Product Page
User Click Product Page Table View
    Product Page Table View
User Click Product Page Grid View
    Product Page Grid View
User Click Product Page Manage Product
    Product Page Manage Product
User Click Product Page New Order
    Product Page New Order
User Click Manage Staff
    Manage Staff
User Click Reports Page
    Reports Page
User Click Journals Page
    Journals Page
User Click Activity Logs
    Activity Logs
User Click Settings Page
    Settings Page
User Click Signout
    Signout