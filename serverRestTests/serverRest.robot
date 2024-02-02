*** Settings ***
Library        RequestsLibrary
Library        String

*** Variables ***
${HOST}    https://serverest.dev

### Rotas ###
${LOGIN}                     login
${GET_ALL_PRODUCT}           produtos
${GET_SINGLE_PRODUCT}        produtos/id-produto
*** Keywords ***
Criar headers
    &{headers}    Create Dictionary             Content_type=application/json

Fazer login
    [Arguments]    ${email}    ${password}

    &{headers}=    Criar headers
    &{body}       Create Dictionary             email=${email}    password=${password}

    POST          url=${HOST}/${LOGIN}          headers=${headers}        json=&{body}

Pegar todos os produtos 
    
    &{headers}=    Criar headers
    
    GET        url=${HOST}/${GET_ALL_PRODUCT}    headers=&{headers}

Pegar um produto de id ${id}
    
    &{headers}=    Criar headers

    ${GET_SINGLE_PRODUCT}=        Replace String        ${GET_SINGLE_PRODUCT}       id-produto        ${id} 

    GET        url=${HOST}/${GET_SINGLE_PRODUCT}       headers=&{headers}


*** Test Cases ***
TC01- Realizar login e pegar todos os produtos
    Fazer login  email=fulano@qa.com  password=teste
    Pegar todos os produtos

TC02 - Realizar login e pegar um produto de id escolhido
    Fazer login  email=fulano@qa.com  password=teste
    Pegar um produto de id BeeJh5lz3k6kSIzA
    