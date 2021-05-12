*** Settings ***
Documentation     Test PMS.
Test Template
Library           SeleniumLibrary

*** Variables ***
${PMS URL}        http://10.149.195.216:9001/
${BROWSER}        gc

*** Test Cases ***
KPI-02 PCRF Overview HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Overview')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Overview
    [Teardown]    Close Browser

KPI-02 PCRF Overview DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Overview')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Overview
    [Teardown]    Close Browser

KPI-02 PCRF Overview WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Overview')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Overview
    [Teardown]    Close Browser

KPI-02 PCRF Overview MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Overview')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Overview
    [Teardown]    Close Browser

KPI-02 PCRF Gx Protocol HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Gx Protocol')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Gx_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Gx Protocol DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Gx Protocol')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Gx_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Gx Protocol WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Gx Protocol')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Gx_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Gx Protocol MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Gx Protocol')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Gx_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Sy Protocol HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Sy Protocol')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Sy_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Sy Protocol DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Sy Protocol')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Sy_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Sy Protocol WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Sy Protocol')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Sy_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Sy Protocol MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Sy Protocol')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Sy_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Rx Protocol HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Rx Protocol')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Rx_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Rx Protocol DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Rx Protocol')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Rx_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Rx Protocol WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Rx Protocol')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Rx_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Rx Protocol MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Rx Protocol')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Rx_Protocol
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Rx Protocol HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Rx Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Rx_Protocol_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Rx Protocol DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Rx Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Rx_Protocol_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Rx Protocol WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Rx Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Rx_Protocol_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Rx Protocol MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Rx Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Rx_Protocol_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Overview HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Overview')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Overview_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Overview DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Overview')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Overview_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Overview WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Overview')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Overview_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Overview MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Overview')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Overview_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Gx Protocol HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Gx Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Gx_Protocol_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Gx Protocol DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Gx Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Gx_Protocol_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Gx Protocol WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Gx Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Gx_Protocol_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Gx Protocol MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Gx Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Gx_Protocol_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Sy Protocol HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Sy Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Sy_Protocol_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Sy Protocol DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Sy Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Sy_Protocol_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Sy Protocol WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Sy Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Sy_Protocol_Diameter
    [Teardown]    Close Browser

KPI-02 PCRF Diameter Node Sy Protocol MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    KPI Hệ thống
    Menu_2    KPI02 – PCRF
    Mouse Down    //*[@id="slKpiType"]
    Click Element    //*[@id="slKpiType"]/option[contains(text(),'Sy Protocol')]
    Mouse Down    //*[@id="slLevelNode"]
    Click Element    //*[@id="slLevelNode"]/option[contains(text(),'Diameter Node ')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_Sy_Protocol_Diameter
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

Check_data_Gx_Protocol
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-I')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-U')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-T')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Congestion')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Unable to Comply')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Unknown Session')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Authorization Rejected')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Invalid Information')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx CCR Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx CCR Establishment Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Ratio of Gx CCR Failure owing to')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx RAR Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx RAR Time-out Ratio')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_Sy_Protocol
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Ratio of Sy SNR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Ratio of Sy SLR/STR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Answered with Error')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Failure')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_Rx_Protocol
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Rx AAR/STR Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Ratio of Rx AAR Failure owing to')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Rx RAR Time-out Ratio ')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Congestion')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Unable to Comply')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Service Not Authorized ')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Invalid Information')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_Overview
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-I')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-U')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-T')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Sy SLR&STR Success rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Sy SNR Success Rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'LDAP Search Success Rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'LDAP Modify Success Rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CUDB notify received_TPS')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx CCR Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx CCR Establishment Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx RAR Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_Gx_Protocol_Diameter
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'DIAMETERNODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-I')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-U')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-T')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Congestion')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Unable to Comply')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Unknown Session')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Authorization Rejected')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Invalid Information')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx CCR Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx CCR Establishment Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Ratio of Gx CCR Failure owing to')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx RAR Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx RAR Time-out Ratio')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_Sy_Protocol_Diameter
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'DIAMETERNODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Ratio of Sy SNR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Ratio of Sy SLR/STR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Answered with Error')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Failure')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_Rx_Protocol_Diameter
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'DIAMETERNODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Rx AAR/STR Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Ratio of Rx AAR Failure owing to')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Rx RAR Time-out Ratio ')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Congestion')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Unable to Comply')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Service Not Authorized ')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Invalid Information')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_Overview_Diameter
    Sleep	1.5
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'DIAMETERNODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-I')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-U')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CCR-T')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Sy SLR&STR Success rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Sy SNR Success Rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'LDAP Search Success Rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'LDAP Modify Success Rate')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CUDB notify received_TPS')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx CCR Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx CCR Establishment Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Gx RAR Failure Ratio')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]