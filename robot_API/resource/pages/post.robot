*** Settings ***
Library  RequestsLibrary
Library  String
Resource  ../main.robot

*** Variables ***
#Rotas
${POST_NEW_PRODUCT}  products/add


*** Keywords ***
Adicionar um novo produto
   [Arguments]  ${title}  ${description}  ${price}
   &{headers}  Create Dictionary  Content-Type=application/json

   &{body}  Create Dictionary  title=${title}Iphone 15  description=${description}  price=${price}

   POST  url=${HOST}/${POST_NEW_PRODUCT}  headers=&{headers}  json=&{body}

