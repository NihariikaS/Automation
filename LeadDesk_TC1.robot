*** Settings ***
#specify the lib
Library  Selenium2Library
Suite Setup     log to console      opening browser
Suite Teardown  log to console      closing browser

*** Variables ***
${browser}  chrome
${url}  https://leaddesk.com/

*** Test Cases ***

one_launchpage
    onewebpage

two_clickbookademo
    bookingademo

three_fillingdemobookingform
    fillbookingform

four_clicksubmitbutton
    clicksubmitbutton

five_closebrowser
    close browser


*** Keywords ***
 keys for testcases

onewebpage
    open browser    ${url}   ${browser}
    maximize browser window
    click element    //*[@id="wt-cli-accept-btn"]            #accepts all cookies

bookingademo
    click element       //a[@class="btn btn-big front-page-hero__btn-hairline"]

fillbookingform

     input text  id:input_1_1   nika                        #firstname
     input text  id:input_1_2   srivastava                      #lastname
     input text  id:input_1_5   niharikaquattro@gmail.com       #email
     input text  id:input_1_3   oulu                            #company
     input text     id:input_1_10   0409876543                  #phonenumber
     click element   //*[@id="choice_1_11_1"]                   #no of seats
     select checkbox  //*[@id="choice_1_8_1"]                   #agree terms and condition
     select checkbox  //*[@id="choice_1_9_1"]                   #agree for marketing updates


clicksubmitbutton
     click element   //*[@id="gform_submit_button_1"]           #Submit button click

