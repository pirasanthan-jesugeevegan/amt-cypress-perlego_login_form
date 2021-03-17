
<p align="center">
 <img src="https://upload.wikimedia.org/wikipedia/commons/d/db/Perlego_logo.png" />

 </p>
 <p align="center">
 <img height="50px" src="https://miro.medium.com/max/7200/1*Jkb_tsMBOvL6wQ8bzldu8Q.png" />
  <img height="50px" src="https://cdn.iconscout.com/icon/free/png-256/mocha-1-1175012.png" /> 
  <img height="50px" src="https://brandslogos.com/wp-content/uploads/thumbs/cucumber-logo-vector.svg" />
  
 </p>
<h1 align="center">Expedia Hotel Journey</h1>

This is a task to Automate the [Perlego Login Form](https://www.perlego.com/login) using Cypress and Cucumber with Mochawesome report, Please see below for the Test Case that are automated 



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

Note - These are one of the few to be automated
## Install

1.  clone the repo
2.  `npm install` or 	`yarn install`


## Run tests
**CLI** - Run CLI

 
```
npx cypress run
```
**Cypress UI** - Run on Cypress UI
 
```
yarn || npm test:chrome
```
## Technology used:

 - Cypress 
 - Cucumber
 - Mochawesome

## DEMO
[Live report - Schedule to run everyday ](https://pirasanthan-jesugeevegan.github.io/amt-cypress-perlego_login_form/)
