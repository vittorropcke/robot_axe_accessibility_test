*** Settings ***

Resource    ../resources/main.robot


Suite Setup    main.Open browser and access the website    https://google.com.br
Suite Teardown    Close Browser

*** Test Cases ***

Google Accessibility Test
    [Tags]    accessibility_tests

    &{results}=     Run Accessibility Tests    google.json
    Log    Violations Count: ${results.violations}

    ${result_table}=    Log Readable Accessibility Result    violations
    Should Be True    ${results.violations} < 1

    