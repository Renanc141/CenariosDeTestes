@BancoDeTalentos
@VagasAbertas

Feature: Cadastrar currículo no Banco de Talentos
    Como um usuário do sistema RH com permissão de usuário
    Quero cadastrar no banco de talentos da empresa
    Para candidatar nas vagas

    Background:
        Given que o usuário esteja na tela de login no site RH

@Cenario1
@Automatizar
    Scenario Outline: Cadastrar o currículo no Banco de Talentos
        When aciona o Cadastrar
        And acessa a tela de login
        And insere o campo '<EmailOuCpf>'
        And insere o campo '<Senha>'
        And aciona o Entrar
        And insere o campo '<Nacionalidade>'
        And insere o campo '<Naturalidade>'
        And seleciona o campo '<EstadoCivil>'
        And seleciona o campo '<Senioridade>'
        And insere o campo '<PretensaoSalarial>'
        And aciona salvar os dados
        And seleciona a opção '<Adjetivo1>'
        And seleciona a opção '<Adjetivo2>'
        And seleciona a opção '<Adjetivo3>'
        And seleciona a opção '<Adjetivo4>'
        And seleciona a opção '<Adjetivo5>'
        And aciona salvar os dados
        And seleciona a opção '<Adjetivo6>'
        And seleciona a opção '<Adjetivo7>'
        And seleciona a opção '<Adjetivo8>'
        And seleciona a opção '<Adjetivo9>'
        And seleciona a opção '<Adjetivo10>'
        And aciona salvar os dados
        Then exibe a mensagem '<Sucesso! Seu cadastro no banco de talentos da Nayara Corporation foi realizado com sucesso!>'

Examples:
    | EmailOuCpf                   | Senha  | Nacionalidade | Naturalidade | EstadoCivil | Senioridade | PretensaoSalarial | Adjetivo1 | Adjetivo2 | Adjetivo3 | Adjetivo4 | Adjetivo5   | Adjetivo6 | Adjetivo7 | Adjetivo8 | Adjetivo9 | Adjetivo10  |
    | enricopietrodias_@kof.com.mx | abc123 | Brasileiro    | Betim        | Solteiro    | Trainee     | 1.000,00          | Popular   | Sincero   | Líder     | Animado   | Persistente | Popular   | Sincero   | Líder     | Animado   | Persistente |


@Cenario2
@Automatizar
    Scenario Outline: Cadastrar o currículo no Banco de Talentos após fazer o login
        And aciona o Entrar
        And insere o campo '<EmailOuCpf>'
        And insere o campo '<Senha>'
        And aciona o Entrar
        When aciona o Cadastrar
        And seleciona a opção '<Adjetivo1>'
        And seleciona a opção '<Adjetivo2>'
        And seleciona a opção '<Adjetivo3>'
        And seleciona a opção '<Adjetivo4>'
        And seleciona a opção '<Adjetivo5>'
        And aciona salvar os dados
        And seleciona a opção '<Adjetivo6>'
        And seleciona a opção '<Adjetivo7>'
        And seleciona a opção '<Adjetivo8>'
        And seleciona a opção '<Adjetivo9>'
        And seleciona a opção '<Adjetivo10>'
        And aciona salvar os dados
        Then exibe a mensagem '<Sucesso! Seu cadastro no banco de talentos da Nayara Corporation foi realizado com sucesso!>'

Examples:
    | EmailOuCpf                       | Senha  | Adjetivo1 | Adjetivo2 | Adjetivo3 | Adjetivo4 | Adjetivo5   | Adjetivo6 | Adjetivo7 | Adjetivo8 | Adjetivo9 | Adjetivo10  |
    | edsonnicolasfernandes@dpf.com.br | abc123 | Popular   | Sincero   | Líder     | Animado   | Persistente | Popular   | Sincero   | Líder     | Animado   | Persistente |


@Cenario3
@Automatizar
    Scenario Outline: Registrar o usuário para cadastrar no Banco de Talentos
        And aciona o Cadastrar
        And acessa a tela de login
        When aciona o Registrar
        And insere o campo '<Email>'
        And insere o campo '<Cpf>'
        And insere o campo '<Senha>'
        And insere o campo '<RepetirSenha>'
        And seleciona a opção dos termos
        And aciona o Cadastrar 
        And insere o campo '<TelefoneOuCelular>'
        And insere o campo '<Email>'
        And insere o campo '<EmailNovamente>'
        And insere o campo '<NomeCompleto>'
        And seleciona o campo '<Genero>'
        And insere o campo '<Nascimento>'
        And aciona salvar os dados
        Then exibe a mensagem '<Currículo salvo com sucesso.>'

Examples:
    | Email                         | Cpf         | Senha  | RepetirSenha | TelefoneOuCelular | Email                         | EmailNovamente                | NomeCompleto          | Genero    | Nascimento |
    | carloscardoso20@tasaut.com.br | 36030211692 | abc123 | abc123       | 31982060440       | carloscardoso20@tasaut.com.br | carloscardoso20@tasaut.com.br | Carlos Cardoso Soares | Masculino | 04/01/1991 |
    

@Cenario4
@Manual
    Scenario Outline: Cadastrar no Banco de Talentos com usuário não registrado
        When aciona o Cadastrar
        And acessa a tela de login
        And insere o campo '<EmailOuCpf>'
        And insere o campo '<Senha>'
        And aciona o Entrar
        Then exibe a mensagem '<Usuário ou senha inválidos.>'

Examples:
    | EmailOuCpf                      | Senha  |
    | viniciuscardoso20@tasaut.com.br | abc123 |


@Cenario5
@Manual
    Scenario Outline: Cadastrar no Banco de Talentos com usuário já cadastrado
        When aciona o Cadastrar
        And acessa a tela de login
        And insere o campo '<EmailOuCpf>'
        And insere o campo '<Senha>'
        And aciona o Entrar
        Then exibe a mensagem '<Tudo certo! Você já estava cadastrado no banco de talentos da Nayara Corporation.>'

Examples:
    | EmailOuCpf          | Senha  |
    | renanc141@gmail.com | abc123 |

