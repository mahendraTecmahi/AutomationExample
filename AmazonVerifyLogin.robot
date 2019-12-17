*** Settings ***

Library           SeleniumLibrary



*** Variables ***

${Username}       desaimahi1996@gmail.com

${Password}        Mahendra9696$    #Password 

${Browser}          Chrome

${SiteUrl}            https://www.amazon.com/ap/signin?_encoding=UTF8&openid.assoc_handle=usflex&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.mode=checkid_setup&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2Fgp%2Fyourstore%2Fhome%3Fie%3DUTF8%26action%3Dsign-out%26path%3D%252Fgp%252Fyourstore%252Fhome%26ref_%3Dnav_youraccount_signout%26signIn%3D1%26useRedirectOnSuccess%3D1

${Delay}              5s



*** Test Cases ***

Click On Amazon Login

	Amazon Login

	Verify the emailId and password textbox are visible
			
	Verify login button should be enabled

	Click On Login Button
	
    [Teardown]    Close Browser

*** Keywords ***

Amazon Login

    Open Browser    ${SiteUrl}      ${Browser}

    Maximize Browser Window
	
	
Verify the emailId and password textbox are visible

    Element Should Be Visible      css=Input#ap_email      
    Input Text    css=Input#ap_email      desaimahi1996@gmail.com
	sleep  2s
	
	Click Element       css=Input#continue
	sleep  2s
	
    Element Should Be Visible     css=Input#ap_password     
	Input Text    css=Input#ap_password      ${Password}
	sleep  2s
	
Verify login button should be enabled
	
	Element Should Be Enabled    Xpath=//*[@id="signInSubmit"]
	sleep  2s
	
Click On Login Button

    Click Element    css=[id=signInSubmit]
	sleep  2s
	




    

    