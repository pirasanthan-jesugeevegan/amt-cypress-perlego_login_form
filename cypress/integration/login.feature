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
            | elementName                 | elements            |
            | email textbox               | email_Input         |
            | Password textbox            | password_Input      |
            | Sign in button              | logIn_Button        |
            | Remember password check box | rememberMe_Checkbox |
            | Forgot password link        | forgetPassword_Link |
            | Create an account link      | signUp_Link         |


    @E2E @TC003
    Scenario: TC003 - Verify if a user will be able to login with a valid username and valid password
        Given the user navigates to 'login'
        When the user enters value 'pirasanth23@hotmail.com' in 'email_Input'
        And the user enters value 'Test123!' in 'password_Input'
        And the field 'email_Input' contains 'pirasanth23@hotmail.com'
        And the user sets checkbox 'rememberMe_Checkbox' value to "false"
        And the user clicks on 'logIn_Button'
        And the user clicks on 'userIcon'
        Then the field 'myEmail_Label' contains 'pirasanth23@hotmail.com'
        And the user clears cookies

    @TC004 @TC005 @TC006 @Negitave
    Scenario Outline:  TC004,TC005 & TC006 - Verify if a user will be able to login with a invalid/Empty: <test>
        Given the user navigates to 'login'
        When the user enters value '<email>' in 'email_Input'
        And the user enters value '<password>' in 'password_Input'
        And the user clicks on 'logIn_Button'
        Then the field 'loginErrorMessage' contains '<errorMessage>'

        Examples: <test>
            | test             | email                   | password | errorMessage                                   |
            | WrongPassword    | pirasanth23@hotmail.com | Test123  | Incorrect email or password. Please try again. |
            | WrongEmail       | pirasanth23@gmail.com   | Test123! | Incorrect email or password. Please try again. |
            | NoEmail          |                         | Test123! | Incorrect email or password. Please try again. |
            | NoPassword       | pirasanth23@hotmail.com |          | Incorrect email or password. Please try again. |
            | NoEmail&Password |                         |          | Incorrect email or password. Please try again. |