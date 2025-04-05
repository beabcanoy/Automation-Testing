*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    ../variables/patient-variables.robot

*** Keywords ***
User Opens Browser and Go to URL
    Open Browser    ${url-stg}    ${browser}
    Maximize Browser Window
    Sleep    3s
Welcome Page
    Scroll Element Into View    //button[normalize-space()='Register']
    Sleep    3s
    Click Element    //button[normalize-space()='Register']
    Sleep    3s
Register Button
    Click Element    (//*[name()='svg'][@class='size-7 cursor-pointer'])[1]
    Sleep    3s
    Scroll Element Into View    //button[normalize-space()='Register']
    Sleep    3s
    Click Element    //button[normalize-space()='Register']
    Sleep    3s
    Click Element    (//select[@class='block w-full bg-gray-50 border rounded-lg h-12 px-2 text-gray-500 focus:outline-none focus:border-[#333333] focus:ring-1 focus:ring-[#333333]'])[1]
    Press Keys              NONE    ARROW_DOWN
    Press Keys              NONE    ENTER
    Sleep    3s
    Input Text    //input[@placeholder='Email']    ${patientNewEmail}
    Sleep    3s
    Click Element    //button[normalize-space()='Sign Up']
    Sleep    15s
    Click Element    (//span[@class='font-semibold'])[1]
    Sleep    3s

Login Now
    Click Element    (//span[@class='font-semibold'])[1]
    Sleep    3s
Register Now
    Click Element    //span[@class='font-semibold cursor-pointer']
    Sleep    3s
Forgot Password
    Click Element    //p[@class='font-light text-sm']
    Sleep    3s
    Click Element    //button[normalize-space()='×']
    Sleep    3s
    Click Element    //p[@class='font-light text-sm']
    Sleep    3s
    Input Text    //input[@id='email']    ${patientNewEmail}
    Sleep    3s
    Click Element    //button[normalize-space()='Send']
    Sleep    10s
    Click Element    //button[normalize-space()='Cancel']
    Sleep    3s
    # Click Element    //span[@class='font-bold']
    # Sleep    5s
Login Button
    Click Element    (//*[name()='svg'][@class='size-7 cursor-pointer'])[1]
    Sleep    3s
    Scroll Element Into View    //button[normalize-space()='Register']
    Sleep    3s
    Click Element    //button[normalize-space()='Log In']
    Sleep    3s
    Input Text    //input[@placeholder='Email']    ${patientEmail}
    Sleep    3s
    Input Text    //input[@id='password']    ${patientPassword}
    Sleep    3s
    Click Element    (//span[@class='absolute inset-y-0 right-0 flex items-center pr-3 cursor-pointer'])[1]
    Sleep    3s
    Click Element    (//span[@class='absolute inset-y-0 right-0 flex items-center pr-3 cursor-pointer'])[1]
    Sleep    3s
    Click Element    //input[@id='remember-me']
    Sleep    3s
    Click Element    //button[normalize-space()='Log In']
    Sleep    30s
Notification
    Click Element    (//*[name()='svg'][@class='size-7'])[1]
    Sleep    3s
    Click Element    //div[@class='relative flex flex-col justify-between h-screen']//div[1]//div[1]//div[1]//p[1]
    Sleep    3s
    Click Element    //button[normalize-space()='View Details']
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Execute Javascript    window.scroll(500, 0)
    Sleep    3s
    Click Element    (//*[name()='svg'][@class=' w-[19px] h-[19px]'])[1]
    Sleep    3s
    Click Element    //div[@class='relative flex flex-col justify-between h-screen']//div[1]//div[2]//*[name()='svg']
    Sleep    3s
    #Back
    Click Element    (//*[name()='svg'][@class='size-6'])[1]
    Sleep    3s
Book a Consult
    Click Element    (//div[@class='flex flex-row items-center justify-center gap-2 text-center m-auto shadow rounded-lg mb-5 bg-[#333333] py-3'])[1]
    Sleep    3s
    Click Element    //button[normalize-space()='×']
    Sleep    3s
    Click Element    (//div[@class='flex flex-row items-center justify-center gap-2 text-center m-auto shadow rounded-lg mb-5 bg-[#333333] py-3'])[1]
    Sleep    3s
    Click Element    //a[normalize-space()='ROBINA']
    Sleep    10s
    Switch Window    MAIN
    Sleep    5s
    Click Element    //a[normalize-space()='COOLANGATTA']
    Sleep    10s
    Switch Window    MAIN
    Sleep    5s
    Click Element    //a[normalize-space()='LOGAN']
    Sleep    10s
    Switch Window    MAIN
    Sleep    5s
    Click Element    //a[normalize-space()='TOOWOOMBA']
    Sleep    10s
    Switch Window    MAIN
    Sleep    5s
    Click Element    //button[normalize-space()='×']
    Sleep    3s
Homepage
    ${streetAddress}    FakerLibrary.Street Address
    ${suburb}    FakerLibrary.Address
    ${state}    FakerLibrary.State
    ${postcode}    FakerLibrary.Postcode
    Click Element    //a[normalize-space()='View Prescription']
    Sleep    3s
    Click Element    //p[normalize-space()='Prescriber Details']
    Sleep    3s
    Click Element    (//div[@class='pb-2 flex justify-center items-center w-1/2 cursor-pointer border-b-[1px] border-gray-300'])[1]
    Sleep    3s
    Click Element    (//*[name()='svg'][@class='size-6'])[1]
    Sleep    3s
    Click Element    (//div[@class='p-4 rounded-lg w-full shadow-md border false'])[1]
    Sleep    3s
    Click Element    //span[contains(text(),'Clear Selection')]
    Sleep    3s
    Click Element    (//div[@class='p-4 rounded-lg w-full shadow-md border false'])[1]
    Sleep    3s
    Click Element    (//span[@class='m_80f1301b mantine-Button-inner'])[2]
    Sleep    5s
    Click Element    (//*[name()='svg'][@class='cursor-pointer'])[1]
    Sleep    3s
    Click Element    //button[normalize-space()='Cancel']
    Sleep    3s
    Click Element    (//*[name()='svg'][@class='cursor-pointer'])[1]
    Sleep    3s
    Click Element    //button[normalize-space()='Confirm']
    Sleep    3s
    Click Element    (//*[name()='svg'][@class='size-6'])[1]
    Sleep    3s
    Click Element    (//div[@class='p-4 rounded-lg w-full shadow-md border false'])[1]
    Sleep    5s
    Click Element    (//span[@class='m_80f1301b mantine-Button-inner'])[2]
    Sleep    5s
    Click Element    //div[@class='flex flex-row justify-between']//div[2]//*[name()='svg']
    Sleep    3s
    Click Element    (//*[name()='svg'][@class='size-5'])[1]
    Sleep    3s
    Click Element    (//*[name()='svg'][@class='css-8mmkcg'])[1]
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    (//div[@class='flex justify-between flex-row py-4 gap-1 border-b cursor-pointer'])[1]
    Sleep    3s
    Click Element    (//*[name()='svg'][@class='h-6 w-6'])[1]
    Sleep    3s
    Click Element    (//div[@class='flex justify-between flex-row py-4 gap-1 border-b cursor-pointer'])[1]
    Sleep    3s
    Click Element    (//div[@class='flex justify-center items-center gap-4 p-4'])[1]
    Sleep    3s
    Click Element    (//*[name()='svg'][@class='h-6 w-6'])[1]
    Sleep    3s
    Click Element    (//div[@class='flex justify-between flex-row py-4 gap-1 border-b cursor-pointer'])[1]
    Sleep    3s
    Click Element    (//div[@class='flex justify-center items-center gap-4 p-4'])[1]
    Sleep    3s
    Input Text    //input[@name='street']    ${streetAddress}
    Sleep    3s
    Input Text    //input[@name='suburb']    ${suburb}
    Sleep    3s
    Input Text    //input[@name='state']    ${state}
    Sleep    3s
    Input Text    //input[@name='postcode']    ${postcode}
    Sleep    3s
    Click Element    //button[normalize-space()='Save']
    Sleep    5s
    Click Element    (//div[@class='flex flex-row py-4 gap-1 border-b'])[1]
    Sleep    3s
    Click Element    (//div[@class='flex justify-between flex-row py-4 gap-1 border-b cursor-pointer'])[1]
    Sleep    3s
    Click Element    (//div[@class='flex flex-row py-4 gap-1 border-b'])[1]
    Sleep    3s
    # Click Element    (//div[contains(@class,'flex flex-row py-4 gap-1 border-b')])[2]
    # Sleep    3s
    Click Element    (//*[name()='svg'][@class='css-8mmkcg'])[1]
    Press Keys              NONE    ARROW_DOWN
    Press Keys              NONE    ENTER
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    #Now
    Click Element    (//div[@class='flex justify-between flex-row py-4 gap-1 border-b cursor-pointer'])[1]
    Sleep    3s
    Click Element    (//div[@class='flex flex-row py-4 gap-1 border-b'])[1]
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Click Element    (//div[@class='flex justify-between flex-row py-4 gap-1 border-b cursor-pointer'])[1]
    Sleep    3s
    Click Element    (//div[@class='flex flex-row py-4 gap-1 border-b'])[2]
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Click Element    (//div[@class='flex justify-between flex-row py-4 gap-1 border-b cursor-pointer'])[1]
    Sleep    3s
    Click Element    (//div[@class='flex flex-row py-4 gap-1 border-b'])[3]
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Click Element    (//div[@class='flex justify-between flex-row py-4 gap-1 border-b cursor-pointer'])[1]
    Sleep    3s
    Click Element    (//div[@class='flex flex-row py-4 gap-1 border-b'])[4]
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Input Text    //textarea[@class='font-urbanist m_8fb7ebe7 mantine-Input-input mantine-Textarea-input']    ${notes}
    Sleep    3s
    #Later
    Click Element    //button[p[text()='Later']]
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Click Element    //p[contains(@class, 'font-bold') and contains(@class, 'text-black')]
    Press Keys              NONE    ENTER
    Sleep    3s
    Click Element    //div[contains(@class, 'sm:w-1/2')]//input
    Sleep    3s
    Click Element    (//button[@class='mantine-focus-auto mantine-active m_220c80f2 m_606cb269 mantine-Modal-close m_86a44da5 mantine-CloseButton-root m_87cf2631 mantine-UnstyledButton-root'])[1]
    Sleep    3s
    Click Element    //div[contains(@class, 'sm:w-1/2')]//input
    Sleep    3s
    Click Element    (//button[@class='flex justify-center items-center text-white w-[50%] h-[47.77px] relative px-[10.614786148071289px] py-[13.268482208251953px] rounded-[5.31px] bg-[#333333]'])[1]
    Sleep    3s
    Click Element    //div[contains(@class, 'sm:w-1/2')]//input
    Sleep    3s
    Click Element    //p[normalize-space()='9:00am']
    Sleep    3s
    Click Element    (//button[contains(@class,'w-[50%] h-[47.77px] relative px-[10.614786148071289px] py-[13.268482208251953px] rounded-[5.31px] text-white bg-[#333333]')])[1]
    Sleep    3s


    Click Element    (//div[contains(@class,'flex justify-between flex-row py-4 gap-1 border-b cursor-pointer')])[1]
    Sleep    3s
    Click Element    (//div[contains(@class,'flex flex-row py-4 gap-1 border-b')])[1]
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Click Element    (//div[contains(@class,'flex justify-between flex-row py-4 gap-1 border-b cursor-pointer')])[1]
    Sleep    3s
    Click Element    (//div[contains(@class,'flex flex-row py-4 gap-1 border-b')])[2]
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Click Element    (//div[contains(@class,'flex justify-between flex-row py-4 gap-1 border-b cursor-pointer')])[1]
    Sleep    3s
    Click Element    (//div[contains(@class,'flex flex-row py-4 gap-1 border-b')])[3]
    Sleep    3s
    Execute Javascript    window.scroll(0, 500)
    Sleep    3s
    Click Element    (//div[contains(@class,'flex justify-between flex-row py-4 gap-1 border-b cursor-pointer')])[1]
    Sleep    3s
    Click Element    (//div[contains(@class,'flex flex-row py-4 gap-1 border-b')])[4]
    Sleep    3s
    Execute Javascript    window.scroll(0, 1000)
    Sleep    3s
    # Input Text    (//textarea[@id='mantine-f4cgiboq4'])[1]    ${notes}
    # Sleep    3s
    #Place Order Button
    # Click Element    //button[normalize-space()='Place Order']
    # Sleep    10s
    #Back Icon
    Click Element    (//*[name()='svg'][@class='size-6'])[1]
    Sleep    3s

Order History
    Click Element    //span[normalize-space()='Order History']
    Sleep    30s
    #Pending Order
    # Click Element    (//button[contains(text(),'View Prescription Order')])[3]
    # Sleep    5s
    # Execute Javascript    window.scroll(0, 1000)
    # Sleep    3s
    # Execute Javascript    window.scroll(1000, 0)
    # Sleep    3s
    # Click Element    //button[normalize-space()='×']
    # Sleep    5s
    # Click Element    (//button[contains(text(),'View Prescription Order')])[3]
    # Sleep    5s
    # Click Element    //button[normalize-space()='View Details']
    # Sleep    5s
    # Click Element    (//*[name()='svg'][contains(@class,'w-[19px] h-[19px]')])[1]
    # Sleep    5s
    # Click Element    (//button[contains(text(),'View Prescription Order')])[3]
    # Sleep    5s
    # Click Element    //button[normalize-space()='Cancel Order']
    # Sleep    5s
    # Click Element    //button[normalize-space()='Close']
    # Sleep    5s
    # Click Element    (//*[name()='svg'][contains(@class,'w-[19px] h-[19px]')])[1]
    # Sleep    10s
    # Click Element    (//button[contains(text(),'View Prescription Order')])[3]
    # Sleep    5s
    # Click Element    //button[normalize-space()='Cancel Order']
    # Sleep    5s
    # Click Element    //button[normalize-space()='Cancel Order']
    # Sleep    30s

    #Order Cancelled
    Click Element    (//button[contains(text(),'View Prescription Order')])[1]
    Sleep    3s
    Click Element    //button[normalize-space()='×']
    Sleep    3s
    Click Element    (//button[contains(text(),'View Prescription Order')])[1]
    Sleep    3s
    Click Element    //button[normalize-space()='View Details']
    Sleep    10s
    Click Element    (//*[name()='svg'][contains(@class,'w-[19px] h-[19px]')])[1]
    Sleep    3s
Settings
    Click Element    //span[normalize-space()='Settings']
    Sleep    5s
Prescription Source
    Click Element    (//*[name()='svg'][contains(@class,'size-5')])[1]
    Sleep    5s
    Click Element    //button[contains(@class, 'flex justify-center') and p[text()='Robina']]
    Sleep    5s
    Click Element    //button[contains(@class, 'flex justify-center') and p[text()='Coolangatta']]
    Sleep    5s
    Click Element    //button[contains(@class, 'flex justify-center') and p[text()='Logan']]
    Sleep    5s
    Click Element    //button[contains(@class, 'flex justify-center') and p[text()='Robina']]
    Sleep    10s
    Click Element    //button[contains(@class, 'flex justify-center') and p[text()='Toowoomba']]
    Sleep    10s
    Click Element    //button[contains(@class, 'flex justify-center') and p[text()='Coolangatta']]
    Sleep    10s
    Click Element    //button[contains(@class, 'flex justify-center') and p[text()='Logan']]
    Sleep    10s
    Click Element    //button[contains(@class, 'flex justify-center') and p[text()='Toowoomba']]
    Sleep    10s
    Click Element    (//*[name()='svg'][contains(@class,'w-4 h-4 relative')])[4]
    Sleep    10s
    Click Element    (//*[name()='svg'][@class='size-6 cursor-pointer'])[1]
    Sleep    5s
Store Location
    Click Element    //p[normalize-space()='Set Default Store Location']
    Sleep    5s
    Click Element    (//*[name()='svg'][contains(@class,'css-8mmkcg')])[1]
    Press Keys              NONE    ARROW_DOWN
    Press Keys              NONE    ENTER
    Sleep    10s
    Click Element    (//*[name()='svg'][contains(@class,'css-8mmkcg')])[1]
    Press Keys              NONE    ARROW_DOWN
    Press Keys              NONE    ENTER
    Sleep    10s
    Click Element    (//*[name()='svg'][contains(@class,'css-8mmkcg')])[1]
    Press Keys              NONE    ARROW_DOWN
    Press Keys              NONE    ENTER
    Sleep    10s
    Click Element    (//*[name()='svg'][contains(@class,'css-8mmkcg')])[1]
    Press Keys              NONE    ARROW_DOWN
    Press Keys              NONE    ENTER
    Sleep    10s
    Click Element    (//*[name()='svg'][@class='size-6 cursor-pointer'])[1]
    Sleep    5s
Change Password
    Click Element    (//button[@class='flex items-center justify-between active:opacity-70'])[1]
    Sleep    5s
    Click Element    (//*[name()='svg'][contains(@class,'size-6 cursor-pointer')])[1]
    Sleep    5s
Delete Account
    Click Element    //button[@fdprocessedid='hvoytf']
    Sleep    5s
    Click Element    (//span[contains(@class,'m_80f1301b mantine-Button-inner')])[2]
    Sleep    5s
Logout
    Click Element    //button[contains(@fdprocessedid,'sklbk')]
    Sleep    5s