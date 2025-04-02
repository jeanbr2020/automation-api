# features/api/specs/api_tests.feature
Feature: Testar API de Usuários

  Scenario: Listar usuários
    When eu envio uma requisição GET para "/posts/1"
    Then a resposta deve ter status 200
    And a resposta deve retornar um post de id

  #Scenario: Criar um usuário
    #When eu envio uma requisição POST para "/api/users" com:
     # """
     # {
      #  "name": "morpheus",
      #  "job": "leader"
      #}
     # """
    #Then a resposta deve ter status 201
    #And a resposta deve conter o nome "morpheus"