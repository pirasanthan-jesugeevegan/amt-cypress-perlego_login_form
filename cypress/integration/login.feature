Feature: Login Functionality

    As a user
    in order to use the application
    I want to login with email and password

    Background: navigate to login page
        Given the user navigates to 'login'

    @TC001
    Scenario Outline: TC001 - Verify that the login screen contains <elementName> elements (Part 1)
        Given the field '<elements>' is visible
        Examples: elements
            | elementName            | elements               |
            | email textbox          | email_input            |
            | Keep me login checkbox | keep_me_login_checkbox |
            | Continue button        | continue_button        |
            | Create an account link | sign_up_link           |
    @TC001
    Scenario Outline: TC001 - Verify that the login screen contains <elementName> elements (Part 2)
        Given the user enters value 'pirasanth23@hotmail.com' in 'email_input'
        And the user clicks on 'continue_button'
        Given the field '<elements>' is visible
        Examples: elements
            | elementName            | elements             |
            | Password textbox       | password_input       |
            | Forgot password        | forget_password_link |
            | Login button           | continue_button      |
            | Create an account link | sign_up_link         |



    @E2E @TC003
    Scenario: TC003 - Verify if a user will be able to login with a valid username and valid password
        Given the user enters value 'pirasanth23@hotmail.com' in 'email_input'
        And the field 'email_input' contains 'pirasanth23@hotmail.com'
        When the user clicks on 'continue_button'
        And the user enters value 'Test123!' in 'password_input'
        When the user clicks on 'continue_button'
        And the user clicks on 'user_icon'
        And the field 'my_email_label' contains 'pirasanth23@hotmail.com'
        Then the user clears cookies

    @TC005 @TC006  @Negitave
    Scenario Outline:  TC005,TC006 - Verify if a user will be able to login with a invalid/Empty: <test>
        Given the user enters value '<email>' in 'email_input'
        When the user clicks on 'continue_button'
        And the field 'password_input' is visible
        And the user enters value '<password>' in 'password_input'
        And the user clicks on 'continue_button'
        Then the field 'login_error_message' contains '<errorMessage>'

        Examples: <test>
            | test          | email                   | password | errorMessage                                   |
            | WrongPassword | pirasanth23@hotmail.com | Test123  | Incorrect email or password. Please try again. |
            | NoPassword    | pirasanth23@hotmail.com |          | Incorrect email or password. Please try again. |

    @TC004 @Negitave
    Scenario Outline:  TC004 - Verify if a user will be able to login with a invalid/Empty: <test>
        Given the user enters value '<email>' in 'email_input'
        When the user clicks on 'continue_button'
        Then the field 'login_email_error_message' contains '<errorMessage>'

        Examples: <test>
            | test       | email                 | password | errorMessage                                   |
            | WrongEmail | pirasanth23@gmail.com | Test123! | Incorrect email or password. Please try again. |
            | NoEmail    |                       | Test123! | Incorrect email or password. Please try again. |