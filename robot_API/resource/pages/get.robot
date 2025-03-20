** Settings **
Library   RequestsLibrary
Library   String  #https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html#CONNECT
Resource    ../main.robot


*** Variables ***
#Rotas
${GET_ALL_PRODUCTS}  products
${GET_SINGLE_PRODUCTS}  products/id-produto

*** Keywords ***
Pegar todos os produtos
#https://kentwynn.com/frontend-frameworks/requestslibrary-fetch-api-using-robot-framework/kentwynn/12/12/2022
    &{headers}  Create Dictionary  Content-Type=application/json

    GET  url=${HOST}/${GET_ALL_PRODUCTS}  expected_status=200

Pegar apenas um produto de id ${id}
    &{headers}  Create Dictionary  Content-Type=application/json

    #Usamos o Replace String para deixar o parâmetro(id-produto) mais dinâmico
    ${GET_SINGLE_PRODUCTS}=  Replace String  ${GET_SINGLE_PRODUCTS}  id-produto  ${id}


    ${response}=  GET  url=${HOST}/${GET_SINGLE_PRODUCTS}  headers=&{headers}
    
    [Return]  ${response}




    