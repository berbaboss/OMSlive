*** Settings ***
Library             AppiumLibrary


*** Keywords ***
Click Element with Appium -> ${path} timeout ${sec} sec.
    Wait Until Page Contains Element    ${path}    ${sec}
    Click Element    ${path}     

Input text and Press Enter in ${texField} with -> ${data}
    Wait Until Page Contains Element    ${texField}    
    Click Element    ${texField}  
    Input Text       ${texField}    ${data}  
    Press Keycode    66

Input text in ${texField} with -> ${data}
    Wait Until Page Contains Element    ${texField}    
    Click Element    ${texField}  
    Input Text       ${texField}    ${data}  

Swipe Up from ${path}
    ${element_size}=    Get Element Size    ${path}
    ${element_location}=    Get Element Location   ${path}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Down from ${path}
    ${element_size}=    Get Element Size    ${path}
    ${element_location}=    Get Element Location    ${path}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe down ${start} in range ${amount} time
    FOR    ${start}   IN RANGE    ${amount}
        Swipe    500    1700    500    700    500  
    END
Swipe down until found ${path}
    FOR    0   IN RANGE    99
        Exit For Loop If    Page Should Contain Element   ${path}
        Swipe    500    1700    500    700    500  
    END

Swipe up ${amount} time
    FOR    0   IN RANGE    ${amount}
        Swipe    500    700    500    1700    500  
    END

Swipe left ${amount} time
    FOR    0   IN RANGE    ${amount}
        Swipe    200    1200    700    100    500  
    END

Swipe right ${amount} time
    FOR    0   IN RANGE    ${amount}
        Swipe    700   1200    200    100    500  
    END