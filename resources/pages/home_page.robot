***Settings***
Resource        ../main.robot

***Variables***
&{home_Page}
...     Div_CheckBox=//div[@id="i5"]                    ### enviar por email
...     Div_Radio_Horario=//div[@id="i31"]              ### 13~17
...     Div_Radio_Area=//div[@id="i47"]                 ### QA
...     Div_CheckBox_Projeto=//div[@id="i85"]           ### Estudo
...     Div_ListBox_Escolher_Nome=//div[@role="listbox"]
#...    Span_Escolher_Nome=(//span[@class="vRMGwf oJeWuf"])[1]      ### listbox Escolher nome
...     Span_Nome_Completo=(//span[text()="Antônio Herbert da Silva Francelino"])[2]
...     Span_Limpar_Formulario=//span[text()="Limpar formulário"]
...     Span_Modal_Limpar_Formulario=(//span[text()="Limpar formulário"])[3]
...     Textarea_Atividade_Desenvolvida=//textarea[@class="KHxj8b tL9Q4c"]

***Keywords***
Dado que clique na checkbox enviar por email
    Wait Until Element Is Visible       ${home_Page.Div_CheckBox}               10s
    Click Element                       ${home_Page.Div_CheckBox}

Quando informa o nome completo
    Wait Until Element Is Visible       ${home_Page.Div_ListBox_Escolher_Nome}         10s
    Click Element                       ${home_Page.Div_ListBox_Escolher_Nome}
    Wait Until Element Is Visible       ${home_Page.Span_Nome_Completo}         10s
    Click Element                       ${home_Page.Span_Nome_Completo}

E informar horario, area e projeto trabalhado
    Wait Until Element Is Visible       ${home_Page.Div_Radio_Horario}          10s
    Click Element                       ${home_Page.Div_Radio_Horario}
    Wait Until Element Is Visible       ${home_Page.Div_Radio_Area}             10s
    Click Element                       ${home_Page.Div_Radio_Area}
    Wait Until Element Is Visible       ${home_Page.Div_CheckBox_Projeto}       10s
    Click Element                       ${home_Page.Div_CheckBox_Projeto}

E informar atividade a ser desenvolvida
    Wait Until Element Is Visible       ${home_Page.Textarea_Atividade_Desenvolvida}       10s
    Input Text                          ${home_Page.Textarea_Atividade_Desenvolvida}       ${geral.Atividade_Desenvolvida}

Então clique em limpar formulario 
    Wait Until Element Is Visible       ${home_Page.Span_Limpar_Formulario}       10s
    Click Element                       ${home_Page.Span_Limpar_Formulario}
    Wait Until Element Is Visible       ${home_Page.Span_Modal_Limpar_Formulario}       10s
    Click Element                       ${home_Page.Span_Modal_Limpar_Formulario}
    Sleep                               5s