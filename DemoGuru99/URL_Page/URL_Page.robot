*** Keywords ***

#Open Homepage
Navigate To HomePage
    Open Browser    ${url_homepage}    ${chrome}   options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window

# Open New Tab Window
Open New Tab Navigate To HomePage
    Execute Javascript      window.open()
    Switch Window       locator=NEW
    Go To    ${url_homepage}
    Maximize Browser Window