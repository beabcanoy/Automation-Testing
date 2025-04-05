*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    ../variables/drvariables.robot
# Library    Collections
# Library    OperatingSystem
# Library    random

*** Keywords ***
User Opens Browser and Go to URL
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3s
User Switch Account
    Click Button    //*[@id="__next"]/div[4]/div/div/div/div/div/div/div[2]/div/button
    Sleep    3s
User Return
    Click Button    //*[@id="__next"]/div[5]/div/div[3]/button
    Sleep    3s
Use Password or Pin Code
    Click Element    //*[@id="__next"]/div[4]/div/div/div/div/div/div/div[3]/div/div[2]/div[1]/div/div/label/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div/div/div/div/div/div/div[3]/div/div[2]/div[1]/div/div/label/div[1]
    Sleep    3s
User Login
    Input Text    name: email    ${email}
    Sleep    3s
    Input Text    name: password    ${password}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div/div/div/div/div/div/div[3]/div/div[2]/div[2]/div/div/div[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div/div/div/div/div/div/div[3]/div/div[2]/div[2]/div/div/div[2]
    Sleep    3s
Click Keep me Signed In
    Select Checkbox    //*[@id="__next"]/div[4]/div/div/div/div/div/div/div[3]/div/div[3]/div[1]/label/input
    Sleep    3s
Click Sign In
    Click Button    //*[@id="__next"]/div[4]/div/div/div/div/div/div/div[3]/div/div[4]/button
    Sleep    5s
Click Hamburger
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/div[1]
    Sleep    3s
    # Click Button    //*[@id="__next"]/div[4]/div[1]/aside/nav/div[3]/button
    # Sleep    3s
Click Table or Grid
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[1]/div[1]/div[2]/div/button[1]
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Execute Javascript    window.scroll(500, 0)
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[1]/div[1]/div[2]/div/button[2]
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Execute Javascript    window.scroll(500, 0)
    Sleep    3s
Click Grid
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[1]/div[1]/div[2]/div/button[2]
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Execute Javascript    window.scroll(500, 0)
    Sleep    3s
Click Grid Items
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[2]/div[1]/a/div[2]
    Sleep    5s
    #Overview
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    # Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[4]/div[4]
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[4]
    Sleep    3s
    Execute Javascript    window.scroll(800, 0)
    Sleep    3s
    #Effects
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/ul/li[2]
    Sleep    5s
    Execute Javascript    window.scroll(0, 400)
    Sleep    3s
    Execute Javascript    window.scroll(400, 0)
    Sleep    3s
    #Terpenes
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/ul/li[3]
    Sleep    5s
    Execute Javascript    window.scroll(0, 400)
    Sleep    3s
    Execute Javascript    window.scroll(400, 0)
    Sleep    3s
    #Conditions
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/ul/li[4]
    Sleep    5s
    Execute Javascript    window.scroll(0, 400)
    Sleep    3s
    Execute Javascript    window.scroll(400, 0)
    Sleep    3s
    #Product Dashboard
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/a[1]
    Sleep    5s
User Click Export
    Click Element    //div[contains(@class, 'bg-greenlife-medic-teal')]
    Sleep    3s
User Write New Prescription
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div[1]/ul/li[2]/a
    Sleep    3s
    # Execute Javascript    window.scroll(0, 200)
    # Sleep    2s
    # Click Element    //*[@id="patient_details"]/div[2]/div[1]/div/div[1]/div/div
    # Click Element    //div[@class='m_92253aa5 mantine-Combobox-option' and @value="[object Object]" and text()='Michael Villa']
    # Sleep    3s
    # Click Element    //*[@id="patient_details"]/div[2]/div[2]/div
    # Click Element    //div[@class='m_92253aa5 mantine-Combobox-option' and @value="[object Object]" and text()='Pharmacy Logan']
    # Sleep    3s
    # ${sentence}    FakerLibrary.Text
    # Input Text    //*[@id="patient_details"]/div[2]/div[1]/div[1]/input    ${sentence}
    # Sleep    3s
    # Choose File    //div[@class="mantine-focus-auto m_d46a4834 mantine-Dropzone-root"]//input[@type="file"]    ${EXECDIR}/img/prescript.png
    # sleep    3s
    # Choose File    //div[@class="mantine-focus-auto m_d46a4834 mantine-Dropzone-root"]//input[@type="file"]    ${EXECDIR}/img/prescript2.jpeg
    # sleep    3s
    # Click Element    //*[@id="patient_details"]/div[2]/div[1]/div[2]/div[1]/div[2]
    # Sleep    3s
    # Choose File    //div[@class="mantine-focus-auto m_d46a4834 mantine-Dropzone-root"]//input[@type="file"]    ${EXECDIR}/img/prescript.png
    # sleep    3s
    # Click Element    //*[@id="patient_details"]/div[2]/div[1]/div[2]/div[2]/div[2]
    # Sleep    3s
    # Choose File    //div[@class="mantine-focus-auto m_d46a4834 mantine-Dropzone-root"]//input[@type="file"]    ${EXECDIR}/img/prescript2.jpeg
    # sleep    3s
    ${addSentence}    FakerLibrary.Text
    Input Text    //*[@id="patient_details"]/div[2]/div[1]/div[3]/textarea    ${addSentence}
    Sleep    3s
    Click Element    //div[contains(@class, 'w-[140px]') and contains(@class, 'text-green-500')]
    Sleep    3s
    Execute Javascript    window.scroll(0, 400)
    Sleep    3s
    Click Element    //div[contains(@class, 'w-[140px]') and contains(@class, 'text-red-400')]
    Sleep    3s
    Execute Javascript    window.scroll(200, 0)
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/ul/li[2]/button
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/div[1]
    Sleep    3s
User Click Manage Patient
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[1]/li[2]/a/div
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/div[1]/div[2]/ul/li[2]/a
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/div[1]/div[2]/ul/li[1]/a
    Sleep    3s
User Upload Patient List
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[1]/div/ul/li[1]/button
    Sleep    3s
    Choose File    //div[contains(@class, "mantine-Dropzone-root")]//input[@type="file"]    ${EXECDIR}/patient_csv/Green_Life_Patient_Upload_Template.csv
    Sleep    3s
    Click Element    //div[contains(@class, 'flex justify-between')]//*[name()='svg' and contains(@class, 'cursor-pointer')]
    Sleep    3s
    Choose File    //div[contains(@class, "mantine-Dropzone-root")]//input[@type="file"]    ${EXECDIR}/patient_csv/Green_Life_Patient_Upload_Template.csv
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[1]/div/div[4]/button[2]
    Sleep    10s
User Add New Patient
    ${firstName}    FakerLibrary.First Name
    ${lastName}    FakerLibrary.Last Name
    ${phoneNumber}    FakerLibrary.Numerify    61%%%%%%%%%
    ${email}    FakerLibrary.Email
    ${address}    FakerLibrary.Address
    ${dob}    FakerLibrary.Date    %Y %m %d
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[1]/div/ul/li[2]/button
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[2]/div
    Click Button    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[2]/div/button[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[1]/div/ul/li[2]/button
    Sleep    3s
    Input Text    firstName    ${firstName}
    Sleep    3s
    Input Text    lastName    ${lastName}
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[2]/div
    Sleep    3s
    Input Text    contactNumber    ${phoneNumber}
    Sleep    3s
    Input Text    email    ${email}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[5]/div[1]/div/input
    Sleep    2s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[5]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[1]/select
    Sleep    2s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[5]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div[2]/select
    sleep    2s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[5]/div[2]/div[2]/div/div/div[2]/div[2]/div[1]
    sleep    2s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[6]/div
    Sleep    2s
    Click Element    //div[@value='Prefer not to say']
    Sleep    2s
    Input Text    residentialAddress    ${address}
    Sleep    3s
    Click Element    //div[contains(@class, 'bg-[#00000080]')]
    Sleep    10s
User Click View Action
    Click Element    //div[contains(@class, 'tooltip')]//*[name()='svg' and contains(@class, 'cursor-pointer')]
    Sleep    3s
Patient Details
    Click Button    //button[contains(@class, 'mantine-Tabs-tab') and contains(@class, 'mantine-UnstyledButton-root')][2]
    Sleep    3s
    Click Button    //button[contains(@class, 'mantine-Tabs-tab') and contains(@class, 'mantine-UnstyledButton-root')][1]
    Sleep    3s
    Click Button    //button[contains(@class, 'btn') and contains(@class, 'bg-greenlife-otway-accent/10')]
    Sleep    3s
User Click Update Action
    ${firstName}    FakerLibrary.First Name
    ${lastName}    FakerLibrary.Last Name
    ${phoneNumber}    FakerLibrary.Numerify    61%%%%%%%%%
    ${email}    FakerLibrary.Email
    ${address}    FakerLibrary.Address
    Click Element    //div[contains(@class, 'tooltip')]//*[name()='svg' and contains(@class, 'edit-icon cursor-pointer')][1]
    Sleep    5s
    Click Element    //div[contains(@class, 'flex justify-between')]//*[name()='svg' and contains(@class, 'cursor-pointer')]
    Sleep    3s
    Click Element    //div[contains(@class, 'tooltip')]//*[name()='svg' and contains(@class, 'edit-icon cursor-pointer')][1]
    Sleep    5s
    Click Element    firstName
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    firstName    ${firstName}
    Sleep    3s
    Click Element    lastName
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    lastName    ${lastName}
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[2]/div
    Sleep    3s
    Click Element    contactNumber
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    contactNumber    ${phoneNumber}
    Sleep    3s
    Click Element    email
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    email    ${email}
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[2]/div
    Sleep    3s
    Click button    //button[contains(@class, 'flex') and contains(@class, 'bg-greenlife-otway-accent') and contains(@class, 'text-white') and @type='submit']
    Sleep    5s
Click Archive Button
    Click Element    //div[contains(@class, 'tooltip')]//*[name()='svg' and contains(@class, 'text-greenlife-otway-accent cursor-pointer')][1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div/div/button[1]
    Sleep    3s
    Click Element    //div[contains(@class, 'tooltip')]//*[name()='svg' and contains(@class, 'text-greenlife-otway-accent cursor-pointer')][1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div/div/button[2]
    Sleep    10s
Click Archive Page
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/div[1]/div[2]/ul/li[2]/a
    Sleep    3s
Click Prescription
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[1]/li[3]/a/div
    Sleep    5s
Prescription New Page
    ${randomLetter}    FakerLibrary.Random Letter
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[1]/p/div/div/button/div
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div/div/div/div/div[1]/div/div/div/div/div[2]/div/div[3]/div/div[2]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div/div/div/div/div[2]/div/div/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s 
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[2]/div/input
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[2]/div/input   ${randomLetter}
    Sleep    3s
    Execute Javascript    window.scroll(0, 400)
    Sleep    5s
    Execute Javascript    window.scroll(400, 0)
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[2]/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
Prescription Processing Page
    ${number}    FakerLibrary.Numerify    %
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[1]/div[2]/button[2]/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr[1]/td[1]/p/div/div/button/div
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div/div/div/div/div[1]/div/div/div/div/div[2]/div/div[3]/div/div/div/div
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div/div/div/div/div[2]/div/div/div/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]/div
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[2]/div/input   ${number}
    Sleep    3s
    Execute Javascript    window.scroll(0, 400)
    Sleep    5s
    Execute Javascript    window.scroll(400, 0)
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[2]/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
Prescription Completed Page
    ${randomLetter}    FakerLibrary.Random Letter
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[1]/div[2]/button[3]/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[1]/p/div/div/button/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div/div/div/div/div[2]/div/div/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]/div
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[2]/div/input   ${randomLetter}
    Sleep    3s
    Execute Javascript    window.scroll(0, 400)
    Sleep    5s
    Execute Javascript    window.scroll(400, 0)
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[2]/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
Prescription Draft Page
    ${number}    FakerLibrary.Numerify    %
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[1]/div[2]/button[4]/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[1]/p/div/div/button/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div/div/div/div/div[2]/div/div/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/table/tbody/tr[1]/td[8]/a/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/ul/li[1]/button
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[2]/div/input   ${number}
    Sleep    3s
    Execute Javascript    window.scroll(0, 400)
    Sleep    5s
    Execute Javascript    window.scroll(400, 0)
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div[1]/div[1]/div/div[2]/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
Click Journal Page
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[1]/li[4]/a/div
    Sleep    5s
    # Click Element    //li[contains(@class, "open-on-hover-click")]
    # Execute Javascript    window.location.href = 'https://docwp-stg.greenlifeclinics.com.au/resources/';
    # Sleep    5s
    # Click Link    css:li.wp-block-pages-list__item a
    # Sleep    3s
    # Click Element    //*[@id="wp--skip-link--target"]/div[2]/div/div/div/div/div/ul/li[1]
    # Sleep    3s
    # Execute Javascript    window.scroll(0, 400)
    # Sleep    3s
    # Execute Javascript    window.scroll(400, 0)
    # Sleep    3s
    # Click Element    //*[@id="modal-1-content"]/ul/ul/li[2]
    # Sleep    3s
    # Click Element    //*[@id="wp--skip-link--target"]/div[2]/div/div/div/div/div/ul/li[2]
    # Sleep    3s
    # Execute Javascript    window.scroll(0, 400)
    # Sleep    3s
    # Execute Javascript    window.scroll(400, 0)
    # Sleep    3s
    # Click Element    //*[@id="modal-1-content"]/ul/ul/li[2]
    # Sleep    3s
    # Click Element    //*[@id="wp--skip-link--target"]/div[2]/div/div/div/div/div/ul/li[3]
    # Sleep    3s
    # Execute Javascript    window.scroll(0, 400)
    # Sleep    3s
    # Execute Javascript    window.scroll(400, 0)
    # Sleep    3s
    # Click Element    //*[@id="modal-1-content"]/ul/ul/li[2]
    # Sleep    3s
    # Click Element    //*[@id="wp--skip-link--target"]/div[2]/div/div/div/div/div/ul/li[4]
    # Sleep    3s
    # Execute Javascript    window.scroll(0, 400)
    # Sleep    3s
    # Execute Javascript    window.scroll(400, 0)
    # Sleep    3s
    # Click Element    //*[@id="modal-1-content"]/ul/ul/li[2]
    # Sleep    3s
    # Click Element    //*[@id="wp--skip-link--target"]/div[2]/div/div/div/div/div/ul/li[5]
    # Sleep    3s
    # Execute Javascript    window.scroll(0, 400)
    # Sleep    3s
    # Execute Javascript    window.scroll(400, 0)
    # Sleep    3s
    # Click Element    //*[@id="modal-1-content"]/ul/ul/li[2]
    # Sleep    3s
    # Click Element    //*[@id="wp--skip-link--target"]/div[2]/div/div/div/div/div/ul/li[6]
    # Sleep    3s
    # Execute Javascript    window.scroll(0, 400)
    # Sleep    3s
    # Execute Javascript    window.scroll(400, 0)
    # Sleep    3s
    # Click Element    //*[@id="modal-1-content"]/ul/ul/li[2]
    # Sleep    3s
    # Click Element    //*[@id="wp--skip-link--target"]/div[2]/div/div/div/div/div/ul/li[7]
    # Sleep    3s
    # Execute Javascript    window.scroll(0, 400)
    # Sleep    3s
    # Execute Javascript    window.scroll(400, 0)
    # Sleep    3s
    # Click Element    //*[@id="modal-1-content"]/ul/ul/li[2]
    # Sleep    3s
    # Journal Element
    # Click Element    //*[@id="modal-1-content"]/ul/ul/li[1]
    # Sleep    3s
Click Settings
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[1]/li[5]/a/div
    Sleep    5s
    #Set a Default
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/div[1]/div[2]/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[1]/div/div/div/button[1]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/div[1]/div[2]/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[1]/div/div/div/button[2]
    Sleep    5s
    #Remove as Default
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/div[1]/div[2]/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[1]/div/div/div/button[1]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/div[1]/div[2]/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[1]/div/div/div/button[2]
    Sleep    5s
    #Password
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[1]/ul/li[2]
    Sleep    3s
    Execute Javascript    window.scroll(0, 300)
    #Pin Code
    Input Text    //*[@id="pin_code-1"]    ${pinCode}
    Sleep    3s
    Input Text    //*[@id="pin_code-2"]    ${pinCode}
    Sleep    3s
    Input Text    //*[@id="pin_code-3"]    ${pinCode}
    Sleep    3s
    Input Text    //*[@id="pin_code-4"]    ${pinCode}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/div/div/div/button
    Sleep    3s
    #New Password
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[3]/div/div[1]/input    ${newPassword}
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[3]/div/div[2]/input    ${newPassword}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[3]/div/div[1]/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[3]/div/div[2]/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[3]/div/button
    Sleep    5s
Click Logout
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[2]/li/button/div/div[1]
    Sleep    3s