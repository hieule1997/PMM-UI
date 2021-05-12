*** Settings ***
Documentation     Test PMS.
Test Template
Library           SeleniumLibrary

*** Variables ***
${PMS URL}        http://10.149.195.216:9001/
${BROWSER}        gc

*** Test Cases ***
Tai he thong PCRF HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC03 – CLM Ban
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'PCRF')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

Tai he thong PCRF DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC03 – CLM Ban
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'PCRF')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

Tai he thong PCRF WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC03 – CLM Ban
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'PCRF')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

Tai he thong PCRF MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC03 – CLM Ban
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'PCRF')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

*** Keywords ***
Menu_forder_1
    [Arguments]    ${Report_name}
    Click Element    //*[@id="sidebar-left"]/ul/li/a/span[contains(text(),'${Report_name}')]

Menu_2
    [Arguments]    ${Report_name}
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/a[contains(text(),'${Report_name}')]

Menu_forder_2
    [Arguments]    ${Report_name}
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/a/span[contains(text(),'${Report_name}')]

Menu_3
    [Arguments]    ${Report_name}
    Click Element    //*[@id="sidebar-left"]/ul/li/ul/li/ul/li/a[contains(text(),'${Report_name}')]

Check_data
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCS')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CPU Load (Avg)')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'% License')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx TPS')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-I')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-U')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-T')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Sy SLR&STR Success rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Sy SNR Success Rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'LDAP Search Success Rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'LDAP Modify Success Rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CUDB notify received_TPS')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

