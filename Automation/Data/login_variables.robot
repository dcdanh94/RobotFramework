*** Settings ***
Library  FakerLibrary  WITH NAME  faker
*** Variables ***
#Valid Username, Password
${userID}      mngr275321
${password}    dyzajyz

#Invalid Username, Password
${invalidUsername}  invalid@gmail.com
${invalidPassword}  invalid

#Login Page success
${login_success_message}    Welcome To Manager's Page of Guru99 Bank


