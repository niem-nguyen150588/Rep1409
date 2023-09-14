*** Settings ***
Library    AppiumLibrary

*** Variables ***
${Dang Nhap}    id=btnLogin
${So Dien Thoai}    id=edtAccount
${Mat Khau}    id=edtPass
${Nhan Dang Nhap}    id=btnLogin

${Wait Allow popup displays}    //*[@resource-id="com.android.packageinstaller:id/permission_allow_button"]
${Wait Phone Field displays}    //*[@resource-id="com.zing.zalo:id/edtAccount"]
${Wait Pass field displays}    //*[@resource-id="com.zing.zalo:id/edtPass"]
${Wait Login button enables}    //*[@resource-id="com.zing.zalo:id/btnLogin"]





*** Keywords ***

Open_app
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=8.0.0    deviceName=5210fd12ea05c30f    appPackage=com.zing.zalo    appActivity=com.zing.zalo.ui.ZaloLauncherActivity    automationName=Uiautomator2
    
Click_DangNhap_Button
    Click Element    ${Dang Nhap}
    Sleep    1s
    Wait Until Page Contains Element    ${Wait Allow popup displays}
    Click Text    ALLOW
    Wait Until Page Contains Element    ${Wait Phone Field displays}
Input_sdt
    Input Text    ${So Dien Thoai}    0702821619
    Wait Until Page Contains Element    ${Wait Pass field displays}
Input_Pass
    Input Password    ${Mat Khau}    1234@Tps
    Wait Until Page Contains Element    ${Wait Login button enables}

Click_DNnnnn
    Click Element    ${Nhan Dang Nhap}
    Sleep    2s

*** Test Cases ***
Dang Nhap Zalo
    Open_app
    Click_DangNhap_Button
    Input_sdt
    Input_Pass
    Click_DNnnnn