Feature: Login Functionality

    As a user
    in order to use the application
    I want to login with email and password

    @TC001
    Scenario Outline: TC001 - Verify that the login screen contains <elementName> elements
        Given the user navigates to 'login'
        When the field '<elements>' is visible
        Then the user navigates to 'home'
        Examples: elements
            | elementName                 | elements                  |
            | Username                    | input[type="email"]       |
            | Password                    | input[type="password"]    |
            | Sign in button              | #actionButton             |
            | Remember password check box | #remember-me-checkbox     |
            | Forgot password link        | a[href="/password-reset"] |
            | Create an account link      | a[href="/sign-up"]        |


    @E2E @TC003
    Scenario: TC003 - Verify if a user will be able to login with a valid username and valid password
        Given the user navigates to 'login'
        When the user enters value 'pirasanth23@hotmail.com' in 'input[type="email"]'
        And the user enters value 'Test123!' in 'input[type="password"'
        And the field 'input[type="email"]' contains 'pirasanth23@hotmail.com'
        And the user sets checkbox "#remember-me-checkbox" value to "false"
        And the user clicks on '#actionButton'
        And the user clicks on '#userIcon'
        Then the field '.sc-fOICqy' contains 'pirasanth23@hotmail.com'
        And the user clears cookies

    @TC004 @TC005 @TC006 @Negitave
    Scenario Outline:  TC004,TC005 & TC006 - Verify if a user will be able to login with a invalid/Empty: <test>
        Given the user navigates to 'login'
        When the user enters value '<email>' in 'input[type="email"]'
        And the user enters value '<password>' in 'input[type="password"'
        And the user clicks on '#actionButton'
        Then the field 'text__detail _1qtDoLQxoyUAeqNqAurN39' contains '<errorMessage>'

        Examples: <test>
            | test             | email                   | password | errorMessage                                   |
            | WrongPassword    | pirasanth23@hotmail.com | Test123  | Incorrect email or password. Please try again. |
            | WrongEmail       | pirasanth23@gmail.com   | Test123! | Incorrect email or password. Please try again. |
            | NoEmail          |                         | Test123! | Incorrect email or password. Please try again. |
            | NoPassword       | pirasanth23@hotmail.com |          | Incorrect email or password. Please try again. |
            | NoEmail&Password |                         |          | Incorrect email or password. Please try again. |