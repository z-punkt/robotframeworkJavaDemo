*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Start Webserver
Suite Teardown    Stop Webserver
Resource          resource.robot

*** Test Cases ***
Valid Login
    Given login page is opened
    When User inputs credentials
    And User submits input form
    Then User should be presented with welcome page