***Settings***
Resource        ../main.robot

***Variables***
&{home_Page}
...     Div_CheckBox=//div[@id="i5"]
...     Span_Escolher_Nome=//span[text()="Escolher"]
...     Span_Nome_Completo=(//span[text()="Antônio Herbert da Silva Francelino"])[2]

***Keywords***
Dado que clique na checkbox enviar por email
    Wait Until Element Is Visible       ${home_Page.Div_CheckBox}       10s
    Click Element                       ${home_Page.Div_CheckBox}

Quando informa o nome completo
    Wait Until Element Is Visible       ${home_Page.Span_Escolher_Nome}     10s
    Click Element                       ${home_Page.Span_Escolher_Nome}
    Wait Until Element Is Visible       ${home_Page.Span_Nome_Completo}     10s
    Click Element                       ${home_Page.Span_Nome_Completo}
    Sleep           5s
