*** Settings ***
Documentation     Test PMS.
Test Template
Library           SeleniumLibrary

*** Variables ***
${PMS URL}        http://10.149.195.216:9001/
${BROWSER}        gc

*** Test Cases ***
Tai he thong MME 2G HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'2G')]
    Click Element    //*[@id="btnSearch"]
    Check_data_2G
    [Teardown]    Close Browser

Tai he thong MME 2G DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'2G')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_2G
    [Teardown]    Close Browser

Tai he thong MME 2G WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'2G')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_2G
    [Teardown]    Close Browser

Tai he thong MME 2G MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'2G')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_2G
    [Teardown]    Close Browser

Tai he thong MME 3G HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'3G')]
    Click Element    //*[@id="btnSearch"]
    Check_data_3G
    [Teardown]    Close Browser

Tai he thong MME 3G DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'3G')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_3G
    [Teardown]    Close Browser

Tai he thong MME 3G WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'3G')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_3G
    [Teardown]    Close Browser

Tai he thong MME 3G MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'3G')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_3G
    [Teardown]    Close Browser

Tai he thong MME 4G HOURLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'4G')]
    Click Element    //*[@id="btnSearch"]
    Check_data_4G
    [Teardown]    Close Browser

Tai he thong MME 4G DAILY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'4G')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data_4G
    [Teardown]    Close Browser

Tai he thong MME 4G WEEKLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'4G')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data_4G
    [Teardown]    Close Browser

Tai he thong MME 4G MONTHLY
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC02 – KPI QĐ 206
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Mouse Down    //*[@id="slTypeKPI"]
    Click Element    //*[@id="slTypeKPI"]/option[contains(text(),'4G')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data_4G
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

Check_data_2G
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Loại')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G_ATTACH_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G_PS_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G_INTRA_RAU_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G_INTER_RAU_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'2G_PAGING_SUCR')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_3G
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Loại')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'3G_ATTACH_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'3G_PS_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'3G_INTRA_RAU_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'3G_INTER_RAU_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'3G_PAGING_SUCR')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

Check_data_4G
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'NODE')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Loại')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'4G_ATTACH_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'4G_DBA_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'4G_INTER_TAU_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'4G_INTRA_TAU_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'4G_PAGING_SUCR')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'4G_SER_REQ_SUCR')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]