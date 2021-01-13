*** Settings ***
Library             AppiumLibrary
Resource            ..\\Utils\\AppiumUtils.robot

*** Variables ***
#Value    
${Menu}              //android.view.View[@content-desc="การจัดการรับวัตถุดิบ"] 
${UserId}            //android.widget.EditText[@text="User ID"]
${Password}          //android.widget.EditText[@text="Password"]    
${LoginBtn}          //android.view.View[@content-desc="Sign In"]
${Btn1}              com.android.permissioncontroller:id/permission_allow_foreground_only_button
${Btn2}              com.android.permissioncontroller:id/permission_allow_button
${Screen}            //android.widget.ImageView[@content-desc="CPF Thailand"]

#Input
${UserIdInput}       r
${PasswordInput}     1100800965041@P

*** Keywords ***
Login OMS Livestock
    # Click Element    ${Btn1}
    # Click Element    ${Btn2}
    Click Element with Appium -> ${Btn1} timeout 10 sec.
    Click Element with Appium -> ${Btn2} timeout 10 sec.
    Wait Until Page Contains Element    ${Screen}    60
    # Click Element    ${UserId}
    Click Element with Appium -> ${UserId} timeout 10 sec.
    sleep    2
    # Input Text    ${UserId}    ${UserIdInput}  
    # Input text in ${UserId} with -> ${UserIdInput}
    Press Keycode    46    
    Press Keycode    49
    Press Keycode    38
    Press Keycode    37
    Press Keycode    46
    Press Keycode    43
    Press Keycode    48
    Press Keycode    56
    Press Keycode    44
    Press Keycode    36
    Press Keycode    49
    # Click Element    ${Password}
    Click Element with Appium -> ${Password} timeout 10 sec.
    sleep     2
    # Input Text    ${Password}    ${PasswordInput}  
    # Input text in ${Password} with -> ${PasswordInput}
    Press Keycode    8
    Press Keycode    8
    Press Keycode    7
    Press Keycode    7
    Press Keycode    15
    Press Keycode    7
    Press Keycode    7
    Press Keycode    16
    Press Keycode    13
    Press Keycode    12
    Press Keycode    7
    Press Keycode    11
    Press Keycode    8
    Press Keycode    77
    Press Keycode    44   1
    # Click Element    ${LoginBtn}
    sleep  1s
    Click Element with Appium -> ${LoginBtn} timeout 10 sec.
    Wait Until Page Contains Element    ${Menu}    40