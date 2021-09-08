***Settings***
Resource          ../resources/BDD.robot
Resource          ../resources/keywords.robot
Suite Teardown    Close Browser




***Test Cases***
Scenario 1: Search the products
    Given the Magazine Luiza site is visible
    And the user find any product with 'Iphone XS' text
    And the user click in 'first' result
    When the user find other product with 'TV Samsung' text
    And the user press 'Enter' button


Scenario 2: Navigate in any pages
    Given the user click in 'Entre ou Cadastre-se' link
    And the user go to 'Ofertas do dia' page
    And the user go to 'Celulares' page
    And the user go to 'Móveis' page
    And the user go to 'Eletrodomésticos' page
    And the user go to 'TV e Vídeo' page
    And the user go to 'Informática' page 
    When the user click in 'Cashback do Milhao'
    Then the 'Cashback do Milhao' banner should be visible 