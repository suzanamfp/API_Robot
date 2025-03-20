*** Settings ***
Resource  ../resource/setup/configurations.robot
Resource  ../resource/pages/post.robot


*** Test Cases ***
T01- Realizar adição de um novo produto
    Adicionar um novo produto  title=Iphone 15  description=Celular  price=4500