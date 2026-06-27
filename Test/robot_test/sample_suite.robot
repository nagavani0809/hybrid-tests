*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${OPTIONS}    add_argument("--headless=new"); add_argument("--no-sandbox"); add_argument("--disable-dev-shm-usage")

*** Test Cases ***
Open Google And Check Title
    Open Browser    https://www.google.com    chrome    options=${OPTIONS}
    Title Should Be    Google
    Close Browser