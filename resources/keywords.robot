***Settings***
Library           SeleniumLibrary
Resource          ../resources/variables.robot 




***Keywords***
### GIVEN
the Magazine Luiza site is visible
    Open Browser    ${URL}       ${BROWSER}
    Maximize Browser Window
    Sleep  2s

the user click in 'Entre ou Cadastre-se' link
    Run Keyword And Ignore Error          Click Element               ${LINK}

###And   
the user find any product with 'Iphone XS' text
    Wait Until Element Is Visible       ${SEARCH_TAB}
    Input Text          ${SEARCH_TAB}     Iphone XS

the user press 'Enter' button
    Press Keys        ${SEARCH_TAB}          ENTER
    Sleep  5s

the user choose 'first' product 
    Wait Until Element Is Visible      ${FIRST_PRODUCT}
    Click Element                      ${FIRST_PRODUCT}  

the user change 'view' type
    Wait Until Element Is Visible      ${VIEW_VISIBLE}

the user click in 'first' result 
    Wait Until Element Is Visible     ${FIRST_SEARCH}
    Click Element                     ${FIRST_SEARCH}

the user go to 'Ofertas do dia' page 
    Run Keyword And Ignore Error       Wait Until Element Is Visible      ${OFERTA_VAR}
    Run Keyword And Ignore Error       Click Element                      ${OFERTA_VAR}

the user go to 'Celulares' page 
    Wait Until Element Is Visible      ${CELULARES_VAR}
    Click Element                      ${CELULARES_VAR}

the user go to 'Móveis' page
    Wait Until Element Is Visible      ${MOVEIS_VAR}
    Click Element                      ${MOVEIS_VAR}

the user go to 'Eletrodomésticos' page
    Wait Until Element Is Visible      ${ELETRO_VAR}
    Click Element                      ${ELETRO_VAR}

the user go to 'TV e Vídeo' page
    Wait Until Element Is Visible      ${TV_VAR}
    Click Element                      ${TV_VAR}

the user go to 'Informática' page 
    Wait Until Element Is Visible       ${INFO_VAR}
    Click Element                       ${INFO_VAR}
    
    

###When
the user find other product with 'TV Samsung' text
    Wait Until Element Is Visible       ${SEARCH_TAB}
    Input Text          ${SEARCH_TAB}     TV Samsung

the user click in 'Cashback do Milhao'
    Run Keyword And Ignore Error       Wait Until Element Is Visible      ${SALDAO_VAR}
    Run Keyword And Ignore Error       Click Element                      ${SALDAO_VAR}



###Then
the 'result' page is visible 
    Element Should Contain         ${RESULT}  

the 'Cashback do Milhao' banner should be visible 
    Element Should Be Visible         ${SALDAO_BANNER}
