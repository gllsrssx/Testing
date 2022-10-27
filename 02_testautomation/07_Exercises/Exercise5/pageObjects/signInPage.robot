*** Settings ***
Resource  basePage.robot

*** Variables ***
${EMAIL_LOGIN_TXT}=       id:username
${PASSWORD_LOGIN_TXT}=    id:password
${LOGIN_BTN}=             xpath://button[@class='radius']
${LOGOUT_BTN}=            xpath://a[@class='button secondary radius']
${FLASH}=                 id:flash

*** Keywords ***
Log In With Account
    [Arguments]  ${emailaddress}=${EMPTY}  ${password}=${EMPTY}
    Wait Until Element Is Visible  ${EMAIL_LOGIN_TXT}
    Input Text  ${EMAIL_LOGIN_TXT}  ${emailaddress}
    Input Text  ${PASSWORD_LOGIN_TXT}  ${password}
    Click Element  ${LOGIN_BTN}

Get Flash Message
    Wait Until Element Is Visible  ${FLASH}
    ${text}=  Get Text  ${FLASH}
    [Return]  ${text}

Logout
    Wait Until Element Is Visible  ${FLASH}
    Click Element  ${LOGOUT_BTN}


