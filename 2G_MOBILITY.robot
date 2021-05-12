*** Settings ***
Documentation     Test PMS.
Test Template
Library           SeleniumLibrary

*** Variables ***
${PMS URL}        http://10.149.195.216:9001/
${BROWSER}        gc

*** Test Cases ***
2G MOBILITY HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

2G MOBILITY DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

2G MOBILITY WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

2G MOBILITY MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

2G MOBILITY LAC HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'LAC')]
    Click Element    //*[@id="btnSearch"]
    Check_data_LAC
    [Teardown]    Close Browser

2G MOBILITY LAC DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'LAC')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_LAC
    [Teardown]    Close Browser

2G MOBILITY LAC WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'LAC')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_LAC
    [Teardown]    Close Browser

2G MOBILITY LAC MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'LAC')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_LAC
    [Teardown]    Close Browser

2G MOBILITY RAC HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'RAC')]
    Click Element    //*[@id="btnSearch"]
    Check_data_RAC
    [Teardown]    Close Browser

2G MOBILITY RAC DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'RAC')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_RAC
    [Teardown]    Close Browser

2G MOBILITY RAC WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'RAC')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_RAC
    [Teardown]    Close Browser

2G MOBILITY RAC MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_forder_2    KPI01 - MME/SGSN
    Menu_3    2G Mobility
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'RAC')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_RAC
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
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Attach User')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Attach GPRS')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G PDP Ctx')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Intra RAU SGSN')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Inter RAU SGSN')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Paging')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Att')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Succ')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_LAC
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'LAC')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Attach User')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Attach GPRS')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G PDP Ctx')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Intra RAU SGSN')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Inter RAU SGSN')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Paging')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Att')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Succ')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_RAC
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'RAC')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Attach User')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Attach GPRS')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G PDP Ctx')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Intra RAU SGSN')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Inter RAU SGSN')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G Paging')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Att')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Succ')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]