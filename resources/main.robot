*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
Library    String
Library    AxeLibrary

Library    config/chromesync.py

Resource    pages/homePage.robot


*** Keywords ***

Open browser and access the website
    [Arguments]    ${url} 

    ${driver_chrome}   chromesync.Get Chromedriver Path
    Open Browser   url=${url}  browser=chrome    options=add_argument('--disable-dev-shm-usage'); add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")  executable_path=${driver_chrome} 

    Set Window Size    1080    720