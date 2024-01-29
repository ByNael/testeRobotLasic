***Settings***
Resource        ../main.robot

***Keywords***
Acessar site e fazer login institucional
    Open Browser        ${geral.URL}        ${geral.Browser}
    Maximize Browser Window
    Wait Until Element Is Visible       ${login_Page.Input_Email}       10s
    Input Text                          ${login_Page.Input_Email}       ${geral.Email}
    Wait Until Element Is Visible       ${login_Page.Btn_Next}          10s
    Click Element                       ${login_Page.Btn_Next}
    Wait Until Element Is Visible       ${login_Page.Input_Senha}       10s
    Input Text                          ${login_Page.Input_Senha}       ${geral.Senha}
    Wait Until Element Is Visible       ${login_Page.Btn_Next}          10s
    Click Element                       ${login_Page.Btn_Next}

Fechar navegador
    Close Browser