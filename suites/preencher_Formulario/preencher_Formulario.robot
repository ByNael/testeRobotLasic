***Settings***
Resource        ../../resources/main.robot
Test Setup      Acessar site e fazer login institucional
Test Teardown   Fechar navegador


***Test Cases***
TC01 - Acessando o formulario de ponto de controle e preenchendo as informações
    Dado que clique na checkbox enviar por email
    Quando informa o nome completo
    E informar horario, area e projeto trabalhado
    E informar atividade a ser desenvolvida