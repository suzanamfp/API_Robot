*** Settings ***
Library  RequestsLibrary
Library  String
Resource  ../main.robot

*** Variables ***
#Rotas
${UPDATE_PRODUCT}  products/id-product



*** Keywords ***
Atualizar um produto
   [Arguments]  ${id}  ${title}  ${description}  ${price}  

   &{headers}  Create Dictionary  Content-Type=application/json
   &{body}  Create Dictionary  title=${title}Iphone 15  description=${description}  price=${price}

   ${UPDATE_PRODUCT}=  Replace String  ${UPDATE_PRODUCT}  id-product  ${id}

   PUT  url=${HOST}/${UPDATE_PRODUCT}


