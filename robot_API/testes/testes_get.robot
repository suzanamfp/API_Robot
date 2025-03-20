*** Settings ***
Resource    ../resource/setup/configurations.robot
Resource    ../resource/pages/get.robot

*** Test Cases ***
T01 GET- Buscar todos os produtos
    Pegar todos os produtos

T02 GET - Buscar um único produtos
    ${response}=  Pegar apenas um produto de id 1
   
    Should Be Equal As Strings   ${response.status_code}  200
    Should Be Equal As Strings   ${response.json()["title"]}   Essence Mascara Lash Princess
    Should Be Equal As Strings   ${response.json()["price"]}   9.99

    Log    ${response.json()}
    Log    ${response.json()["title"]}
    Log    ${response.json()["price"]}

