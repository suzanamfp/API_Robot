*** Settings ***
Resource  ../resource/setup/configurations.robot
Resource  ../resource/pages/put.robot



*** Test Cases ***
T01- Realizar atualização de um produto
    Atualizar um produto  id=88  title=Iphone 16  description=Celular  price=65000  