*** Settings ***
Library  RequestsLibrary
Library  String
Resource  ../main.robot

*** Variables ***
#Rotas
${DELETE_PRODUCT}  products/id-product-delete


*** Keywords ***
Excluir um produto de id ${id}

   &{headers}  Create Dictionary  Content-Type=application/json
   ${DELETE_PRODUCT}=  Replace String  ${DELETE_PRODUCT}  id-product-delete  ${id}

   ${response}  DELETE  url=${HOST}/${DELETE_PRODUCT}  headers=&{headers}
  
   [Return]  ${response}
