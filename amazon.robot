*** Settings ***

Library           SeleniumLibrary



*** Variables ***

${Username}       7387941076

${Password}        Mahendra9696$    #Password 

${Browser}        Chrome

${SiteUrl}      https://www.amazon.in/ap/signin?_encoding=UTF8&ignoreAuthState=1&openid.assoc_handle=inflex&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.mode=checkid_setup&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.in%2F%3Fref_%3Dnav_signin&switch_account=

${Delay}          5s



*** Test Cases ***

Login In Amazon

    Open Amazon

    Enter User Name
	
	sleep    2s

    Enter Password
	
	sleep    2s

    Click Login

    sleep     2s
    
	
	Search Mobille devices
	
	sleep    2s
	
	Mobile Add To Cart
	
	sleep   2s
	
	Process To Buy
	sleep   2s
	
	Deliver To Cureent Address
	sleep    2s

	Continue The Process
		
    [Teardown]    Close Browser



*** Keywords ***

Open Amazon

    Open Browser    ${SiteUrl}      ${Browser}

    Maximize Browser Window

 
Enter User Name

    Input Text    css=[id=ap_email]    ${Username}

	Click Element    css=[id=continue]
	

Enter Password

    Input Text    css=[id=ap_password]     ${Password}

	

Click Login

    Click Element   css=[id=signInSubmit]



Search Mobille devices

	Input Text     css=[id=twotabsearchtextbox]  Realme 5 pro
	
	Press Keys  None   RETURN

	Click Element      Xpath=//*[@id="search"]/div[1]/div[2]/div/span[4]/div[1]/div[1]/div/span/div/div/div[2]/div[2]/div/div[1]/div/div/div[1]/h2/a/span	

Mobile Add To Cart

	Click Button        css=[id=add-to-cart-button]


	Press Keys  None   RETURN
	
Process To Buy

	Click Button       Xpath=//*[@id="hlb-ptc-btn-native"]
	Press Keys  None   RETURN

	
Deliver To Cureent Address

	Click Button   Xpath=//*[@id="address-book-entry-0"]/div[2]/span/a
	Press Keys  None   RETURN

Continue The Process

	Click Button   Xpath=//*[@id="pp-f5-83"]/span/input

    

    