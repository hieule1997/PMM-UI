*** Settings ***
Documentation     Test PMS.
Test Template
Library           SeleniumLibrary

*** Variables ***
${PMS URL}        http://10.149.195.216:9001/
${BROWSER}        gc

*** Test Cases ***
Tai he thong MME HOURLY MMEE1A
    MME_HOURLY     MMEE1A
Tai he thong MME HOURLY MMEE1B
    MME_HOURLY     MMEE1B
Tai he thong MME HOURLY MMEE1C
    MME_HOURLY     MMEE1C
Tai he thong MME HOURLY MMEE2A
    MME_HOURLY     MMEE2A
Tai he thong MME HOURLY MMEE2B
    MME_HOURLY     MMEE2B
Tai he thong MME HOURLY MMEE3A
    MME_HOURLY     MMEE3A
Tai he thong MME HOURLY MMEN1A
    MME_HOURLY     MMEN1A
Tai he thong MME HOURLY MMEN1B
    MME_HOURLY     MMEN1B
Tai he thong MME HOURLY MMEN1C
    MME_HOURLY     MMEN1C
Tai he thong MME HOURLY MMEN1D
    MME_HOURLY     MMEN1D
Tai he thong MME HOURLY MMEN2A
    MME_HOURLY     MMEN2A
Tai he thong MME HOURLY MMEN2B
    MME_HOURLY     MMEN2B
Tai he thong MME HOURLY MMEN2C
    MME_HOURLY     MMEN2C
Tai he thong MME HOURLY MMEN2D
    MME_HOURLY     MMEN2D

Tai he thong MME DAILY MMEE1A
    MME_DAILY     MMEE1A
Tai he thong MME DAILY MMEE1B
    MME_DAILY     MMEE1B
Tai he thong MME DAILY MMEE1C
    MME_DAILY     MMEE1C
Tai he thong MME DAILY MMEE2A
    MME_DAILY     MMEE2A
Tai he thong MME DAILY MMEE2B
    MME_DAILY     MMEE2B
Tai he thong MME DAILY MMEE3A
    MME_DAILY     MMEE3A
Tai he thong MME DAILY MMEN1A
    MME_DAILY     MMEN1A
Tai he thong MME DAILY MMEN1B
    MME_DAILY     MMEN1B
Tai he thong MME DAILY MMEN1C
    MME_DAILY     MMEN1C
Tai he thong MME DAILY MMEN1D
    MME_DAILY     MMEN1D
Tai he thong MME DAILY MMEN2A
    MME_DAILY     MMEN2A
Tai he thong MME DAILY MMEN2B
    MME_DAILY     MMEN2B
Tai he thong MME DAILY MMEN2C
    MME_DAILY     MMEN2C
Tai he thong MME DAILY MMEN2D
    MME_DAILY     MMEN2D

Tai he thong MME WEEKLY MMEE1A
    MME_WEEKLY     MMEE1A
Tai he thong MME WEEKLY MMEE1B
    MME_WEEKLY     MMEE1B
Tai he thong MME WEEKLY MMEE1C
    MME_WEEKLY     MMEE1C
Tai he thong MME WEEKLY MMEE2A
    MME_WEEKLY     MMEE2A
Tai he thong MME WEEKLY MMEE2B
    MME_WEEKLY     MMEE2B
Tai he thong MME WEEKLY MMEE3A
    MME_WEEKLY     MMEE3A
Tai he thong MME WEEKLY MMEN1A
    MME_WEEKLY     MMEN1A
Tai he thong MME WEEKLY MMEN1B
    MME_WEEKLY     MMEN1B
Tai he thong MME WEEKLY MMEN1C
    MME_WEEKLY     MMEN1C
Tai he thong MME WEEKLY MMEN1D
    MME_WEEKLY     MMEN1D
Tai he thong MME WEEKLY MMEN2A
    MME_WEEKLY     MMEN2A
Tai he thong MME WEEKLY MMEN2B
    MME_WEEKLY     MMEN2B
Tai he thong MME WEEKLY MMEN2C
    MME_WEEKLY     MMEN2C
Tai he thong MME WEEKLY MMEN2D
    MME_WEEKLY     MMEN2D

Tai he thong MME MONTHLY MMEE1A
    MME_MONTHLY     MMEE1A
Tai he thong MME MONTHLY MMEE1B
    MME_MONTHLY     MMEE1B
Tai he thong MME MONTHLY MMEE1C
    MME_MONTHLY     MMEE1C
Tai he thong MME MONTHLY MMEE2A
    MME_MONTHLY     MMEE2A
Tai he thong MME MONTHLY MMEE2B
    MME_MONTHLY     MMEE2B
Tai he thong MME MONTHLY MMEE3A
    MME_MONTHLY     MMEE3A
Tai he thong MME MONTHLY MMEN1A
    MME_MONTHLY     MMEN1A
Tai he thong MME MONTHLY MMEN1B
    MME_MONTHLY     MMEN1B
Tai he thong MME MONTHLY MMEN1C
    MME_MONTHLY     MMEN1C
Tai he thong MME MONTHLY MMEN1D
    MME_MONTHLY     MMEN1D
Tai he thong MME MONTHLY MMEN2A
    MME_MONTHLY     MMEN2A
Tai he thong MME MONTHLY MMEN2B
    MME_MONTHLY     MMEN2B
Tai he thong MME MONTHLY MMEN2C
    MME_MONTHLY     MMEN2C
Tai he thong MME MONTHLY MMEN2D
    MME_MONTHLY     MMEN2D

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
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'PDPctx/Bearer')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Mbps')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'Subs')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'%Subs')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'%PDPctx/Bearer')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'%Mbps')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CPU Load (Avg)')]
    Page Should Contain Element    //*[@id="report-table_wrapper"]/div/div/div/table/thead/tr/th[contains(text(),'CPU Load (Max)')]
    Page Should Contain Element    //*[@id="report-table"]/tbody/tr[1]

MME_HOURLY
    [Arguments]    ${node_name}
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Click Element    //*[@id="slNode"]/following-sibling::div/button
    Click Element    //*[@id="slNode"]/following-sibling::div/ul/li/a/label[contains(text(),'${node_name}')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

MME_DAILY
    [Arguments]    ${node_name}
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Click Element    //*[@id="slNode"]/following-sibling::div/button
    Click Element    //*[@id="slNode"]/following-sibling::div/ul/li/a/label[contains(text(),'${node_name}')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Ngày')]
    Click Element    //*[@id="muc2FromDate"]
    Click Element    //*[@id="muc2FromDate"]/div[2]/div/div/div[3]/table/tr[2]/td[1]/a[contains(text(),'2')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser

MME_WEEKLY
    [Arguments]    ${node_name}
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Click Element    //*[@id="slNode"]/following-sibling::div/button
    Click Element    //*[@id="slNode"]/following-sibling::div/ul/li/a/label[contains(text(),'${node_name}')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tuần')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser


MME_MONTHLY
    [Arguments]    ${node_name}
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    Click Element    //*[@id="slNode"]/following-sibling::div/button
    Click Element    //*[@id="slNode"]/following-sibling::div/ul/li/a/label[contains(text(),'${node_name}')]
    Mouse Down    //*[@id="slPeriod"]
    Click Element    //*[@id="slPeriod"]/option[contains(text(),'Tháng')]
    Click Element    //*[@id="btnSearch"]
    Check_data
    [Teardown]    Close Browser