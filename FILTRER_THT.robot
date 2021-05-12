*** Settings ***
Documentation     Test PMS.
Test Template
Library           SeleniumLibrary

*** Variables ***
${PMS URL}        http://10.149.195.216:9001/
${BROWSER}        gc

*** Test Cases ***
Tai he thong MME
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    NODE_MMEE
    NODE_MMEN
    [Teardown]    Close Browser

Tai he thong MME Ericsson
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Chose_Provider  Ericsson
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    NODE_MMEE
    [Teardown]    Close Browser

Tai he thong MME Nokia
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Chose_Provider  Nokia
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'MME')]
    NODE_MMEN
    [Teardown]    Close Browser

Tai he thong PGW
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'PGW')]
    NODE_PGWE
    NODE_PGWN
    [Teardown]    Close Browser
Tai he thong PGW Ericsson
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Chose_Provider  Ericsson
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'PGW')]
    NODE_PGWE
    [Teardown]    Close Browser

Tai he thong PGW Nokia
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Chose_Provider   Nokia
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'PGW')]
    NODE_PGWN
    [Teardown]    Close Browser

Tai he thong PCRF
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'PCRF')]
    NODE_PCRF
    [Teardown]    Close Browser
Tai he thong PCRF Ericsson
    Open Browser    ${PMS URL}
    Menu_forder_1    Báo cáo
    Menu_2    BC01 – Tải hệ thống
    Chose_Provider    Ericsson
    Mouse Down    //*[@id="slNodeTypes"]
    Click Element    //*[@id="slNodeTypes"]/option[contains(text(),'PCRF')]
    NODE_PCRF
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

Chose_Provider
    [Arguments]    ${provider_name}
    Click Element    //*[@id="slProviders"]/following-sibling::div/button
    Click Element    //*[@id="slProviders"]/following-sibling::div/ul/li/a/label[contains(text(),'${provider_name}')]

NODE_MMEE
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEE1A')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEE1B')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEE1C')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEE2A')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEE3A')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEE2B')]
NODE_MMEN
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEN1A')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEN1B')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEN1C')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEN1D')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEN2A')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEN2B')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEN2C')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'MMEN2D')]

NODE_PGWE
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE1A')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE1B')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE1C')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE1D')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE2A')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE2B')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE2C')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE2D')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE3A')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE3B')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE3C')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE4A')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWE4B')]

NODE_PGWN
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWN1A')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWN1B')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWN2A')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PGWN2B')]
NODE_PCRF
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PCRFE1C')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PCRFE1B')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PCRFE2C')]
    Page Should Contain Element     //*[@id="slNode"]/option[contains(text(),'PCRFE2B')]