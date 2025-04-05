*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    ../variables/ph_variables.robot

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
    Input Text    name: email    ${username}
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
    Sleep    10s
Recent Prescription Orders
    ${randomQty}    FakerLibrary.Numerify    $$
    # Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[7]/td[1]
    Execute Javascript    window.scroll(0, 200)
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[3]/form/select
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[3]/form/select/option[3]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[1]/p/div/div/button/div
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[1]/div/div/div/div/div/div[2]/div/div/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[2]/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[1]/div/textarea
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[1]/div/textarea    ${description}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[2]/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[3]/p/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[3]/div[1]/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[3]/p/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[1]/div/div/div/div/div/div/div[1]
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[2]/div/div/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[2]/div/div/div/input    ${randomQty}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[3]/div[2]/button
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[4]/p/div/div/div/div/div/input
    Press Keys              NONE    ENTER
    Sleep    15s
    Click Element    //button[contains(@class, 'flex justify-start') and contains(@class, 'absolute left-0 top-0')]
    Sleep    3s
    Click Element    //p[@class='text-base font-semibold text-left text-[#344054]']
    Sleep    3s
    Click Element    //button[contains(@class, 'flex justify-start') and contains(@class, 'absolute left-0 top-0')]
    Sleep    3s
    Click Element    //p[@class='text-base font-semibold text-left text-white']
    Sleep    10s
    Click Element    (//p[contains(text(),'Process Now')])[1]
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/div[1]/div/div[2]/div[2]/button[1]/div
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    //button[contains(@class, 'left-9') and contains(@class, 'absolute')]
    Sleep    3s
    Click Element    (//p[@class='flex-grow-0 flex-shrink-0 text-base font-semibold text-left text-[#344054]'][normalize-space()='Cancel'])[1]
    Sleep    3s
    Click Element    //button[contains(@class, 'left-9') and contains(@class, 'absolute')]
    Sleep    3s
    Click Element    //p[normalize-space()='Decline']
    Sleep    10s
    Click Element    (//p[contains(text(),'Process Now')])[1]
    Sleep    10s

Recent Prescription Processing Page
    #Click Processing Page
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/div[1]/div/div[2]/div[2]/button[2]
    # Sleep    3s

    ${randomQty}    FakerLibrary.Numerify    $$

    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    # Sleep    3s
    
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[3]/form/select
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[1]/p/div/div/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[1]/div/div/div/div/div/div[2]/div/div/div/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[2]/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[1]/div/textarea
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[1]/div/textarea    ${description}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[2]/button
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[3]/p/div/div/button[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[3]/div[1]/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[3]/p/div/div/button[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[1]/div/div/div/div/div/div
    Press Keys              NONE    Sol
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[2]/div/div/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[2]/div/div/div/input    ${randomQty}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[3]/div[2]/button
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[4]/p/div/div/div/div/div/input
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[5]/button
    Sleep    10s


Recent Prescription Completed Page
    #CLick Completed Page
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/div[1]/div/div[2]/div[2]/button[3]/div
    # Sleep    5s
    ${randomQty}    FakerLibrary.Numerify    $$
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    # Sleep    3s

    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[3]/form/select
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[3]/form/select/option[3]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[1]/p/div/div/button/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[1]/div/div/div/div/div/div[2]/div/div/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]/p/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[2]/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]/p/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[1]/div/textarea
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[1]/div/textarea    ${description}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[4]/div/div/form/div/div[2]/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[3]/p/div/div/button[2]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[3]/div[1]/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[3]/p/div/div/button[2]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[1]/div/div/div/div/div/div/div[1]/div[2]
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[2]/div/div/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[2]/div/div/div/input    ${randomQty}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[3]/div[2]/button
    Sleep    10s
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[2]/div/div/div/form/div[3]/div[1]/button
    # Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[4]/p/div/div/div/div/div/input
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[3]/div[5]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s

Dashboard
    Execute Javascript    window.scroll(0, 750)
    Sleep    5s
# Product Review
#     Execute Javascript    window.scroll(0, 700)
#     Sleep    5s
Product View Action
    Click Element    //button[contains(text(),'View')]
    Sleep    5s
Default Prescription
    Click Element    //button[normalize-space()='Default Prescription']
    Sleep    5s
    Click Element    //button[normalize-space()='Cancel']
    Sleep    5s
    Click Element    //button[normalize-space()='Default Prescription']
    Sleep    5s
    Click Element    //input[@placeholder='Quantity']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@placeholder='Quantity']    ${number}
    Sleep    3s
    Click Element    //input[@placeholder='Repeats']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@placeholder='Repeats']    ${number}
    Sleep    3s
    Click Element    //input[@placeholder='Minimum Repeat Interval']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@placeholder='Minimum Repeat Interval']    ${number}
    Sleep    3s
    Click Element    //input[@placeholder='Max Daily Dosage']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@placeholder='Max Daily Dosage']    ${number}
    Sleep    3s
    Click Element    //button[normalize-space()='Save']
    Sleep    10s
    Click Element    //*[name()='path' and contains(@d,'M289.94 25')]
    Sleep    5s
    Execute Javascript    window.scroll(0, 700)
    Sleep    5s
Product Back Button
    Click Element    //button[normalize-space()='Back']
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/table/tbody/tr[9]
    Sleep    5s
Product Update Button
    Execute Javascript    window.scroll(0, 700)
    Sleep    5s
    Click Element    //button[normalize-space()='Update']
    Sleep    5s
Update Product Details Cancel Button
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[3]/div
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[3]/div/a/button
    Sleep    20s
Update Product Details Update Button
    ${randomNumber}    FakerLibrary.Numerify    $
    ${zApi}    FakerLibrary.Numerify    $$$$$$
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[1]/div/div[2]/div/div[2]/div/div/button
    Sleep    5s
    Choose File    //input[@type="file"]    ${EXECDIR}/img/med.jpg
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[9]
    Sleep    5s
    Input Text    //*[@id="unit_price"]    ${randomNumber}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[5]/div[2]/select
    Press Keys    NONE    ENTER
    Sleep    5s
    Click Element    //*[@id="repeats_interval"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="repeats_interval"]    ${randomNumber}
    Sleep    5s
    Click Element    //*[@id="repeats_minimum_interval"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="repeats_minimum_interval"]    ${randomNumber}
    Sleep    5s
    Click Element    //*[@id="quantity"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="quantity"]    ${randomNumber}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[2]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[2]/input    ${price}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[3]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[3]/input    ${price}
    Sleep    5s
    Click Element    //*[@id="description"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="description"]    ${description}
    Sleep    5s
    Click Element    //*[@id="directions"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="directions"]    ${description}
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[3]/div
    Sleep    5s
    Click Element    //*[@id="zApi"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="zApi"]    ${zApi}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[3]/div/button
    Sleep    10s
Click Hamburger
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/div[1]/div
    Sleep    5s
Click Dashboard
    Click Element    //div[contains(text(),'Dashboard')]
    Sleep    5s
Click Order
    ${randomLetter}    FakerLibrary.Random Letter
    ${randomQty}    FakerLibrary.Numerify    $$
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[1]/li[2]/a/div
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[1]/table/tbody/tr[1]/td[7]/p/a
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div/main/footer/button[1]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[1]/div/ul/li/a/button
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/a[23]/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/a[23]/div
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/input  ${randomLetter}    FakerLibrary.Random Letter
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    5s
    Click Element    //body//div//div//div//div//div//div//div//div//div[1]//div[1]//div[2]//div[1]//*[name()='svg']
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/button
    Sleep    5s
    Click Element    //*[name()='path' and contains(@d,'M289.94 25')]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/button
    Sleep    5s
    Click Element    //button[normalize-space()='Cancel']
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[3]/div/div[2]/div/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[3]/div/div[2]/div/div/input    ${randomQty}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[3]/div/div[1]/div/div[1]
    Sleep    3s
    Click Element    //button[normalize-space()='Place Order']
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div/div/button
    Sleep    10s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/a[23]/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/a[23]/div
    Sleep    5s
    Click Element    //body//div//div//div//div//div//div//div//div//div[1]//div[1]//div[2]//div[1]//*[name()='svg']
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/button
    Sleep    5s
    Click Element    //*[name()='path' and contains(@d,'M289.94 25')]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/button
    Sleep    5s
    Click Element    //button[normalize-space()='Cancel']
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[3]/div/div[2]/div/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[3]/div/div[2]/div/div/input    ${randomQty}
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[3]/div/div[1]/div/div[1]
    Sleep    3s
    Click Element    //button[normalize-space()='Place Order']
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div/div/a
    Sleep    5s
    
    


    # Execute Javascript    window.scroll(1000, 0)
    # Sleep    3s
    # Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[1]/div/input    ${randomLetter}
    # Sleep    5s
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/a[1]/div
    # Sleep    5s
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/button
    # Sleep    5s
    # Click Element    (//*[name()='svg'][@class='text-3xl text-greenlife-otway-accent self-end cursor-pointer '])[1]
    # Sleep    5s
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[3]/div[2]/div[1]/button
    # Sleep    5s
    # Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[4]/div[2]
    # Sleep    3s
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[4]/div[2]/button[1]
    # Sleep    5s
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[1]/div/a[1]
    # Sleep    5s

Prescription Orders
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[1]/li[3]/a/div
    Sleep    5s
Prescription Orders New Page
    ${randomQty}    FakerLibrary.Numerify    $$
    ${randomLetter}    FakerLibrary.Random Letter
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/div[1]/div/div[2]/div/input
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/div[1]/div/div[2]/div/input    ${randomLetter}
    Sleep    5s
    Execute Javascript    window.scroll(0, 500)
    Sleep    5s
    Execute Javascript    window.scroll(500, 0)
    Sleep    5s
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[3]/form/select
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[3]/form/select/option[3]
    Press Keys              NONE    ENTER
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[1]/p/div/div/button/div
    Sleep    5s

    # Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div/div/div/div/div[1]/div/div/div/div/div[2]/div/div[3]/div/div[2]/div/div
    # Sleep    5s
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div/div/div/div/div[1]/div/div/div/div/div[2]/div/div[3]/div/div[1]/div/div
    # Sleep    5s
    # Switch Window    MAIN
    # Sleep    5s

    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div/div/div/div/div[2]/div/div/div/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]/p/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[2]/div/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]/p/button
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[1]/div/textarea
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[1]/div/textarea    ${description}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[2]/button/div
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[3]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div/div/form/div[3]/div[1]/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[3]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div/div/form/div[1]/div/div/div/div/div/div/div[1]/div[2]
    Sleep    5s
    Press Keys    NONE    ENTER
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div/div/form/div[2]/div/div/div/input    ${randomQty}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div/div/form/div[3]/div[2]/button
    Sleep    10s
    Click Element    //input[@placeholder='Select date']
    Press Keys              NONE    ENTER
    Sleep    10s
    Click Element    //button[contains(@class, 'flex justify-start') and contains(@class, 'absolute left-0 top-0')]
    Sleep    3s
    Click Element    //p[@class='text-base font-semibold text-left text-[#344054]']
    Sleep    3s
    Click Element    //button[contains(@class, 'flex justify-start') and contains(@class, 'absolute left-0 top-0')]
    Sleep    3s
    Click Element    //p[@class='text-base font-semibold text-left text-white']
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    (//p[contains(text(),'Process Now')])[1]
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/div[1]/div/div[1]/div[2]/button[1]/div
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    5s
    Click Element    //button[contains(@class, 'left-9') and contains(@class, 'absolute')]
    Sleep    3s
    Click Element    (//p[@class='flex-grow-0 flex-shrink-0 text-base font-semibold text-left text-[#344054]'][normalize-space()='Cancel'])[1]
    Sleep    3s
    Click Element    //button[contains(@class, 'left-9') and contains(@class, 'absolute')]
    Sleep    3s
    Click Element    //p[normalize-space()='Decline']
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    (//p[contains(text(),'Process Now')])[1]
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    5s
Prescription Orders Processing Page
    ${randomQty}    FakerLibrary.Numerify    $$
    ${randomLetter}    FakerLibrary.Random Letter
    #Click Processing Page
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/div[1]/div/div[1]/div[2]/button[2]/div
    # Sleep    5s
    
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/div[1]/div/div[2]/div/input
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/div[1]/div/div[2]/div/input    ${randomLetter}
    Sleep    5s
    Execute Javascript    window.scroll(0, 500)
    Sleep    5s
    Execute Javascript    window.scroll(500, 0)
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/div[1]/div/div[2]/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[3]/form/select
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[3]/form/select/option[2]
    Press Keys              NONE    ENTER
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[1]/p/div/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div/div/div/div/div[2]/div/div/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]/p/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[2]/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[2]/p/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[1]/div/textarea
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    5s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[1]/div/textarea    ${description}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[2]/button
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[3]/p/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div/div/form/div[3]/div[1]/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[3]/p/button
    Sleep    5s
    Click Element    (//div[@class='css-19bb58m'])[1]
    Sleep    3s
    Press Keys              NONE    Sol
    Press Keys              NONE    ENTER
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div/div/form/div[2]/div/div/div/input    ${randomQty}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div/div/form/div[3]/div[2]/button
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[4]/p/div/div/div/div/div/input
    # Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[2]/td/div/table/tbody/tr/td[4]/p/div/div/div/div/div/input    ${date}
    Sleep    5s
    Press Keys              NONE    ENTER
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[1]/div/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[1]/td[5]/button
    Sleep    10s
Prescription Orders Completed Page
    #Click Completed Page
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/div[1]/div/div[1]/div[2]/button[3]/div
    # Sleep    5s
    ${randomQty}    FakerLibrary.Numerify    $$
    ${randomLetter}    FakerLibrary.Random Letter
    Execute Javascript    window.scroll(0, 200)
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[3]/td[1]/div/div[1]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[3]/td[3]/form/select
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[4]/td/div/table/tbody/tr/td[1]/p/div/div/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/div/div/div/div/div[2]/div/div/div/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[4]/td/div/table/tbody/tr/td[2]/p/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[2]/div/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[4]/td/div/table/tbody/tr/td[2]/p/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[1]/div/textarea
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[1]/div/textarea    ${description}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[4]/div/div/form/div/div[2]/button
    Sleep    8s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[4]/td/div/table/tbody/tr/td[3]/p/div/div/button[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div/div/form/div[3]/div[1]/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[4]/td/div/table/tbody/tr/td[3]/p/div/div/button[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div/div/form/div[1]/div/div/div/div/div/div/div[1]
    Press Keys              NONE    Sol
    Press Keys              NONE    ENTER
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div/div/form/div[2]/div/div/div/input    ${randomQty}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div/div/form/div[3]/div[2]/button
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[4]/td/div/table/tbody/tr/td[4]/p/div/div/div/div/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[4]/td/div/table/tbody/tr/td[4]/p/div/div/div/div/div/input    ${date}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/table/tbody/tr[3]/td[1]/div/div[1]
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/div[1]/div/div[2]/div/input    ${randomLetter}
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/div[2]
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[5]/div
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[6]/div[1]/div[1]/div/div[2]/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
Click Product Page
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[1]/li[4]/a/div/div[2]
    Sleep    5s
Product Page Table View
    ${randomLetter}    FakerLibrary.Random Letter
    ${Qty}    FakerLibrary.Numerify    $$
    ${randomNum}    FakerLibrary.Numerify    $
    ${zApi}    FakerLibrary.Numerify    $$$$$$
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[1]/div[1]/div[1]/div/input    ${randomLetter}
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[3]/div/nav
    Sleep    3s
    Execute Javascript    window.scroll(2000, 0)
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[1]/div[1]/div[1]/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
    Click Element    (//*[name()='svg'][@stroke='currentColor'])[14]
    Sleep    10s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div/div[2]/div/main/footer
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div/div[2]/div/main/footer/button[1]
    Sleep    3s
    Click Element    (//*[name()='svg'][@stroke='currentColor'])[14]
    Sleep    10s
    
    Click Element    //button[normalize-space()='Default Prescription']
    Sleep    5s
    Click Element    //button[normalize-space()='Cancel']
    Sleep    3s
    Click Element    //button[normalize-space()='Default Prescription']
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[1]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[1]/input    ${Qty}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[2]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[2]/input    ${randomNum}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[3]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[3]/input    ${randomNum}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[4]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[4]/input    ${randomNum}
    Sleep    3s
    Click Element    //button[normalize-space()='Save']
    Sleep    5s
    Click Element    //*[name()='svg'][@class='text-3xl text-greenlife-otway-accent self-end cursor-pointer ']
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div/div[2]/div/main/footer
    Sleep    3s

    Click Element    //button[normalize-space()='Update']
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[3]/div/a/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[3]/div/a/button
    Sleep    5s
    Click Element    (//*[name()='svg'][@stroke='currentColor'])[14]
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div/div[2]/div/main/footer
    Sleep    3s
    Click Element    //button[normalize-space()='Update']
    Sleep    5s
    # Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[1]/div/div[2]/div/div[2]/div/div/button
    # Sleep    3s
    # Click Element    (//div[@class='flex flex-col items-center justify-center pt-5 pb-6'])[1]
    Choose File    //input[@type="file"]    ${EXECDIR}/img/med.jpg
    Sleep    5s
    Execute Javascript    window.scroll(0, 400)
    Sleep    3s
    Click Element    //input[@id='unit_price']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@id='unit_price']    ${Qty}
    Sleep    3s
    Click Element    //select[@name='price_per_unit']
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    //input[@id='repeats_interval']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@id='repeats_interval']    ${randomNum}
    Sleep    3s
    Click Element    //input[@id='repeats_minimum_interval']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@id='repeats_minimum_interval']    ${randomNum}
    Sleep    3s
    Click Element    //input[@id='quantity']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@id='quantity']    ${Qty}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[2]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[2]/input    ${price}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[3]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[3]/input    ${randomNum}
    Sleep    3s
    Click Element    //*[@id="description"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="description"]    ${description}
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[3]/div/a/button
    Sleep    5s
    Click Element    //*[@id="directions"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="directions"]    ${description}
    Sleep    3s
    Click Element    //*[@id="zApi"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="zApi"]    ${zApi}
    Sleep    3s
    Click Element    //button[normalize-space()='Save']
    Sleep    15s

Product Page Grid View
    ${Qty}    FakerLibrary.Numerify    $$
    ${randomNum}    FakerLibrary.Numerify    $
    ${zApi}    FakerLibrary.Numerify    $$$$$$
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[1]/div[1]/div[2]/div/button[2]
    Sleep    5s
    Scroll Element Into View    //span[contains(@class,'text-black font-semibold')]
    Sleep    3s
    Scroll Element Into View    //div[@class='flex w-full justify-between']
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[2]/div[1]/a/div[2]
    Sleep    5s
    Click Element    //button[normalize-space()='Default Prescription']
    Sleep    5s
    Click Element    //button[normalize-space()='Cancel']
    Sleep    5s
    Click Element    //button[normalize-space()='Default Prescription']
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[1]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[1]/input    ${Qty}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[2]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[2]/input    ${randomNum}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[3]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[3]/input    ${randomNum}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[4]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/form/div[1]/div[4]/input    ${randomNum}
    Sleep    3s
    Click Element    //button[normalize-space()='Save']
    Sleep    10s
    Click Element    (//*[name()='svg'][@class='text-3xl text-greenlife-otway-accent self-end cursor-pointer '])[1]
    Sleep    5s
    Scroll Element Into View    (//footer[@class='flex gap-2 justify-end w-full'])[1]
    Sleep    3s
    Click Element    //button[normalize-space()='Back']
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[1]/div[1]/div[2]/div/button[2]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[2]/div[1]/a/div[2]
    Sleep    5s
    Scroll Element Into View    (//footer[@class='flex gap-2 justify-end w-full'])[1]
    Sleep    3s
    Click Element    //button[normalize-space()='Update']
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[3]/div/a/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[3]/div/a/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[1]/div[1]/div[2]/div/button[2]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[2]/div[1]/a/div[2]
    Sleep    5s
    Scroll Element Into View    (//footer[@class='flex gap-2 justify-end w-full'])[1]
    Sleep    3s
    Click Element    //button[normalize-space()='Update']
    Sleep    5s
    Choose File    //input[@type="file"]    ${EXECDIR}/img/med.jpg
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[9]/label[2]
    Sleep    3s
    Input Text    //input[@id='unit_price']    ${Qty}
    Sleep    3s
    Click Element    //select[@name='price_per_unit']
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    //input[@id='repeats_interval']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@id='repeats_interval']    ${randomNum}
    Sleep    3s
    Click Element    //input[@id='repeats_minimum_interval']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@id='repeats_minimum_interval']    ${randomNum}
    Sleep    3s
    Click Element    //input[@id='quantity']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@id='quantity']    ${Qty}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[2]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[2]/input    ${price}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[3]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[2]/div[8]/div[3]/input    ${price}
    Sleep    3s
    Click Element    //*[@id="description"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="description"]    ${description}
    Sleep    3s
    Click Element    //*[@id="directions"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="directions"]    ${description}
    Sleep    3s
    Click Element    //*[@id="zApi"]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="zApi"]    ${zApi}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div[2]/form/div/div[3]/div/button
    Sleep    10s
Product Page Manage Product
    ${randomLetter}    FakerLibrary.Random Letter
    ${randomNum}    FakerLibrary.Numerify    $$
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/ul/li[1]/button
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/ul/li[1]/button
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/ul/li[1]/button
    Sleep    5s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[1]/div[1]/div[1]/div/input    ${randomLetter}
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[3]/div
    Sleep    5s
    Execute Javascript    window.scroll(1000, 0)
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[1]/div[1]/div[1]/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
    Click Element    //input[contains(@name,'conditions')]
    Sleep    3s
    Input Text    //input[@placeholder='Search']    ${randomLetter}
    Sleep    5s
    Click Element    //input[@placeholder='Search']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    5s
    Click Element    //button[1]//input[1]
    Sleep    3s
    Click Element    //input[contains(@name,'conditions')]
    Sleep    3s
    Click Element    //input[@name='conditions']
    Sleep    3s
    Click Element    //button[normalize-space()='Clear filter']
    Sleep    3s
    Click Element    //input[contains(@name,'form')]
    Sleep    3s
    Click Element    //button[1]//input[1]
    Sleep    5s
    Click Element    //input[@name='form']
    Sleep    3s
    Click Element    //input[@name='form']
    Sleep    3s
    Click Element    //button[2]//input[1]
    Sleep    5s
    Click Element    //button[3]//input[1]
    Sleep    5s
    Click Element    //button[4]//input[1]
    Sleep    5s
    Click Element    //button[normalize-space()='Clear filter']
    Sleep    3s
    Click Element    //input[contains(@name,'form')]
    Sleep    3s
    Click Element    //input[contains(@name,'content')]
    Sleep    3s
    Click Element    //button[2]//input[1]
    Sleep    3s
    Click Element    //input[contains(@name,'content')]
    Sleep    3s
    Click Element    //input[contains(@name,'content')]
    Sleep    3s
    Click Element    //button[2]//input[1]
    Sleep    5s
    Click Element    //button[3]//input[1]
    Sleep    5s
    Click Element    //button[normalize-space()='Clear filter']
    Sleep    3s
    Click Element    //input[contains(@name,'content')]
    Sleep    3s
    Click Element    //input[contains(@name,'priceRange')]
    Sleep    3s
    Click Element    //input[contains(@name,'priceRange')]
    Sleep    3s
    Click Element    (//input[@name='stockLevel'])[1]
    Sleep    3s
    Click Element    (//input[contains(@type,'checkbox')])[6]
    Sleep    3s
    Click Element    (//input[@name='stockLevel'])[1]
    Sleep    3s
    Click Element    (//input[@name='stockLevel'])[1]
    Sleep    3s
    Click Element    (//input[contains(@type,'checkbox')])[7]
    Sleep    5s
    Click Element    (//input[contains(@type,'checkbox')])[8]
    Sleep    5s
    Click Element    (//input[contains(@type,'checkbox')])[9]
    Sleep    5s
    Click Element    //button[normalize-space()='Clear filter']
    Sleep    3s
    Click Element    (//input[@name='stockLevel'])[1]
    Sleep    3s
    Click Element    (//input[contains(@name,'stockLevel')])[2]
    Sleep    3s
    Input Text    //input[contains(@placeholder,'Search Brand')]    ${randomLetter}
    Press Keys              NONE    ENTER
    Sleep    5s
    Click Element    //input[contains(@placeholder,'Search Brand')]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Sleep    3s
    Click Element    //button[1]//input[1]
    Sleep    3s
    Click Element    (//input[contains(@name,'stockLevel')])[2]
    Sleep    3s
    Click Element    (//input[contains(@name,'stockLevel')])[2]
    Sleep    3s
    Click Element    //button[normalize-space()='Clear filter']
    Sleep    3s
    Click Element    (//input[contains(@name,'stockLevel')])[2]
    Sleep    3s
    Click Element    (//*[name()='svg'][@stroke='currentColor'])[11]
    Sleep    5s
    Click Element    (//*[name()='svg'][@stroke='currentColor'])[12]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/table/tbody/tr[1]/td[3]/div/div/span[2]/div/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/table/tbody/tr[1]/td[3]/div/div/span[2]/div/input    ${randomNum}
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/ul/li[2]/button
    Sleep    20s
Product Page New Order
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[1]/div/ul/li[2]/a/button
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/a[23]/div
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/a[23]/div
    Sleep    5s
    Click Element    //body//div//div//div//div//div//div//div//div//div[1]//div[1]//div[2]//div[1]//*[name()='svg']
    Sleep    3s
    Click Element    (//button[@class='product-cart btn absolute border-joltpay-gray-text hover:bg-transparent right-10 capitalize bg-transparent text-greenlife-text-color-main'])[1]
    Sleep    3s
    Click Element    //button[normalize-space()='Cancel']
    Sleep    3s
    Click Element    (//button[@class='product-cart btn absolute border-joltpay-gray-text hover:bg-transparent right-10 capitalize bg-transparent text-greenlife-text-color-main'])[1]
    Sleep    3s
    Click Element    //*[name()='path' and contains(@d,'M289.94 25')]
    Sleep    3s
    Click Element    (//button[@class='product-cart btn absolute border-joltpay-gray-text hover:bg-transparent right-10 capitalize bg-transparent text-greenlife-text-color-main'])[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[3]/div/div[1]/div/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[4]/div[2]/button[2]
    Sleep    5s
    #Order Again
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div/div/button
    Sleep    10s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/a[23]/div
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[2]/div[2]/a[23]/div
    Sleep    5s
    Click Element    //body//div//div//div//div//div//div//div//div//div[1]//div[1]//div[2]//div[1]//*[name()='svg']
    Sleep    3s
    Click Element    (//button[@class='product-cart btn absolute border-joltpay-gray-text hover:bg-transparent right-10 capitalize bg-transparent text-greenlife-text-color-main'])[1]
    Sleep    3s
    Click Element    //button[normalize-space()='Cancel']
    Sleep    3s
    Click Element    (//button[@class='product-cart btn absolute border-joltpay-gray-text hover:bg-transparent right-10 capitalize bg-transparent text-greenlife-text-color-main'])[1]
    Sleep    3s
    Click Element    //*[name()='path' and contains(@d,'M289.94 25')]
    Sleep    3s
    Click Element    (//button[@class='product-cart btn absolute border-joltpay-gray-text hover:bg-transparent right-10 capitalize bg-transparent text-greenlife-text-color-main'])[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[3]/div/div[1]/div/div[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/div/div[4]/div[2]/button[2]
    Sleep    5s
    #View Order
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div/div/div/a
    Sleep    5s

Manage Staff
    ${firstName}    FakerLibrary.First Name
    ${lastName}    FakerLibrary.Last Name
    ${phoneNum}    FakerLibrary.Numerify    61%%%%%%%%%
    ${email}    FakerLibrary.Email
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[1]/li[5]/a/div
    Sleep    5s
    #Add New
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[1]/div/ul/li/button
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[2]/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[2]/div/button[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div[2]/div[1]/div/ul/li/button
    Sleep    5s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[1]/input    ${firstName}
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[2]/input    ${lastName}
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[3]/input    ${phoneNum}
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[4]/input    ${email}
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[5]/div[1]/input    ${staffPassword}
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[5]/div[2]/input    ${staffPassword}
    Sleep    3s
    Click Element    (//*[name()='svg'][@stroke='currentColor'])[12]
    Sleep    3s
    Click Element    (//*[name()='svg'][@stroke='currentColor'])[14]
    Sleep    3s
    Click Element    (//*[name()='svg'][@stroke='currentColor'])[12]
    Sleep    3s
    Click Element    (//*[name()='svg'][@stroke='currentColor'])[14]
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[2]/div
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[2]/div/button[1]
    Sleep    10s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[1]/div
    Sleep    10s
    Click Element    //*[name()='path' and contains(@d,'M289.94 25')]
    Sleep    3s
    
    #View
    Click Element    (//*[name()='svg'][contains(@stroke,'currentColor')])[12]
    Sleep    5s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[2]/div/main/footer/button[1]
    Sleep    3s
    Click Element    (//*[name()='svg'][contains(@stroke,'currentColor')])[12]
    Sleep    5s
    #Update
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[2]/div/main/footer/button[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/form/div/div[2]/div/div[2]/div/a
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[2]/div/main/footer/button[2]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/form/div/div[2]/div/div[1]/div[1]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/form/div/div[2]/div/div[1]/div[1]/input    ${testFirstName}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/form/div/div[2]/div/div[1]/div[2]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/form/div/div[2]/div/div[1]/div[2]/input    ${testLastName}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/form/div/div[2]/div/div[1]/div[3]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/form/div/div[2]/div/div[1]/div[3]/input    ${phoneNum}
    Sleep    3s
    Click Element    //input[@placeholder='name@example.com']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@placeholder='name@example.com']    ${email}
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/form/div/div[2]/div/div[1]/div[5]/div[1]/input    ${password}
    Sleep    3s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/form/div/div[2]/div/div[1]/div[5]/div[2]/input    ${staffPassword}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/form/div/div[2]/div/div[2]/div/button
    Sleep    10s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div/div[2]/div/main/footer/button[1]
    Sleep    10s
    Click Element    (//div[contains(@data-tip,'Update')])[1]
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[2]/div/button[2]
    Sleep    3s
    Click Element    (//div[contains(@data-tip,'Update')])[1]
    Sleep    3s
    Click Element    //input[contains(@placeholder,'First Name')]
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[contains(@placeholder,'First Name')]    ${testFirstName}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[2]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[2]/input    ${testLastName}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[3]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[3]/input    ${phoneNum}
    Sleep    3s
    Click Element    //input[@placeholder='name@example.com']
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //input[@placeholder='name@example.com']    ${email}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[5]/div[1]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[5]/div[1]/input    ${password}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[5]/div[2]/input
    Press Keys              NONE    CTRL+A
    Press Keys              NONE    BACKSPACE
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[1]/div[5]/div[2]/input    ${staffPassword}
    Sleep    3s
    Click Element    //*[@id="__next"]/div[4]/div[1]/div/main/div/dialog/aside/form/div/div[2]/div/div[2]/div/button[1]
    Sleep    10s
    
    #Remove
    Click Element    (//div[contains(@data-tip,'Remove')])[1]
    Sleep    3s
    Click Element    //button[normalize-space()='Cancel']
    Sleep    3s
    # Click Element    (//div[contains(@data-tip,'Remove')])[1]
    # Sleep    3s
    # Click Element    //button[normalize-space()='Confirm']
    # Sleep    10s

Reports Page
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[1]/li[6]/a/div
    Sleep    3s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[9]/div[1]/div[2]/div[3]/div[5]
    Sleep    5s
    Execute Javascript    window.scroll(1000, 0)
    Sleep    5s
Journals Page
    Click Element    (//div[@class='flex pl-9 pb-[26px] cursor-pointer'])[7]
    Sleep    3s
    # Scroll Element Into View    //p[contains(@class, 'has-contrast-2-color') and contains(@class, 'has-small-font-size')]
    # Sleep    5s
    # Execute Javascript    window.scroll(1000, 0)
    # Sleep    5s
Activity Logs
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[1]/li[8]/a/div
    Sleep    5s
    Scroll Element Into View    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div[1]/div
    Sleep    5s
    Execute Javascript    window.scroll(2000, 0)
    Sleep    5s
Settings Page
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[1]/li[9]/a/div
    Sleep    5s
    #password
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div[2]/div/div[1]/input    ${password}
    Sleep    5s
    Input Text    //*[@id="__next"]/div[4]/div[1]/div/main/div/div/div[2]/div[2]/div/div[2]/input    ${password}
    Sleep    5s
    Click Element    (//*[name()='svg'][@stroke='currentColor'])[11]
    Sleep    3s
    Click Element    (//*[name()='svg'][contains(@stroke,'currentColor')])[13]
    Sleep    3s
    Click Element    (//*[name()='svg'][@stroke='currentColor'])[11]
    Sleep    3s
    Click Element    (//*[name()='svg'][contains(@stroke,'currentColor')])[13]
    Sleep    3s
    Click Element    (//button[contains(@type,'button')][normalize-space()='Save'])[2]
    Sleep    10s
Signout
    Click Element    //*[@id="__next"]/div[4]/div[1]/aside/nav/ul[2]
    Sleep    10s