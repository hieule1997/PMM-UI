*** Settings ***
Documentation     Test PMS.
Test Template
Library           SeleniumLibrary

*** Variables ***
${PMS URL}        http://10.149.195.216:9001/
${BROWSER}        gc

*** Test Cases ***
Test Left Menu
    Open Browser    ${PMS URL}
    Maximize Browser Window
    Click Element    //*[@id="sidebar-left"]/ul/li/a/span[contains(text(),'Báo cáo')]
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/a[contains(text(),'BC01 – Tải hệ thống')]
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/a[contains(text(),'BC02 – KPI QĐ 206')]
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/a[contains(text(),'BC03 – CLM Ban')]
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/a[contains(text(),'BC04 – CLK')]
    Click Element    //*[@id="sidebar-left"]/ul/li/a/span[contains(text(),'KPI Hệ thống')]
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/a/span[contains(text(),'KPI01 - MME/SGSN')]
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/ul/li/a[contains(text(),'2G Mobility')]
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/ul/li/a[contains(text(),'3G Mobility')]
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/ul/li/a[contains(text(),'4G Mobility')]
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/a[contains(text(),'KPI02 – PCRF')]
    [Teardown]    Close Browser