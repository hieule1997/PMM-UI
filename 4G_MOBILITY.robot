*** Settings ***
Documentation     Test PMS.
Test Template
Library           SeleniumLibrary

*** Variables ***
${PMS URL}        http://10.149.195.216:9001/
${BROWSER}        gc

*** Test Cases ***
4G MOBILITY HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    4G Mobility
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

4G MOBILITY DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    4G Mobility
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

4G MOBILITY WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    4G Mobility
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

4G MOBILITY MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    4G Mobility
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

4G MOBILITY TAC HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    4G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'TAC')]
    Click Element    //*[@id="btnSearch"]
    Check_data_TAC
    [Teardown]    Close Browser

4G MOBILITY TAC DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    4G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'TAC')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_TAC
    [Teardown]    Close Browser

4G MOBILITY TAC WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    4G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'TAC')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_TAC
    [Teardown]    Close Browser

4G MOBILITY TAC MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    4G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'TAC')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_TAC
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
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME Attach')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME Bearer Modify')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME Detach')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME Handover')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME PDN Connectivity')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME TAU')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'ME Service Request')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Att')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Succ')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_TAC
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'TAC')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME Attach')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME Bearer Modify')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME Detach')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME Handover')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME PDN Connectivity')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'MME TAU')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'ME Service Request')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Att')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Succ')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]