# Perlego Login Form
This is a task to Automate a login form using Cypress and Cucumber, Please see below for the Test Case that are automated 

## **Test Scenario**: Login Function

| Test Case Number | Test Case |
|--|--|
|TC001  | Verify that the login screen contains elements such as Username, Password, Sign in button, Remember password check box, Forgot password link, and Create an account link. |
|TC002|Verify that all the fields such as Username, Password has a valid placeholder|
|TC003  | Verify if a user will be able to login with a valid username and valid password |
|TC004  |Verify if a user will be able to login with a invalid username and valid password  |
|TC005  |Verify if a user cannot login with a valid username and an invalid password.|
|TC006  |Verify the login page for both, when the field is blank and Submit button is clicked.  |
|TC007  | Verify the ‘Forgot Password’ functionality. |
|TC008|Verify the messages for invalid login.|
|TC009|Verify the ‘Remember Me’ functionality.|
|TC010|Verify if the data in password field is either visible as asterisk or bullet signs.|
|TC011|Verify if a user is able to login with a new password only after he/she has changed the password.|
|TC012|Verify the time taken to log in with a valid username and password.|
|TC013|Verify if refreshing page erase the entered text.|
|TC014|Verify that User is not able to Login with blank Username or Password|
|TC015|Verify the password can be copy-pasted|

## Install

1.  clone the repo
2.  `npm install`

## Run tests
**Pretest** - Create a 'reports' folder in cypress folder

 - Run test on UI
```
npx cypress open
```


- Run test on Command Line:

**Note** - Some Scenarios may fail on command line due to website response time  
```
npm run test

```

Run test with tags:  **Tags**  - @e2e @TC001 @TC002 @TC003

```
npm run test -e TAGS='e2e'
```


## Technology used:

 - Cypress
 - Cucumber
 - Mochawsome
