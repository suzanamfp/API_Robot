*** Settings ***
Resource  ../resource/setup/configurations.robot
Resource  ../resource/pages/delete.robot


*** Test Cases ***
T01- Realizar exclusão de um produto
    ${response}  Excluir um produto de id 9
    Should Be True   ${response.json()["isDeleted"]}