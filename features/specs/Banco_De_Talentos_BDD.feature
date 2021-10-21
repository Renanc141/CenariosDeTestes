#language: pt
@BancoDeTalentos
@VagasAbertas

Funcionalidade: Cadastrar currículo no Banco de Talentos 
            Como um usuário do sistema RH com permissão de usuário
            Quero cadastrar no banco de talentos da empresa
            Para candidatar nas vagas

Contexto: usuario acessar a pagina e fazer o login
    Dado que o usuario esteja na tela de login no site RH


@Cenario1
@Automatizado
    Esquema do Cenário: Cadastrar o currículo no Banco de Talentos
    E que o usuario possua os dados pessoais
        | Nacionalidade     | Brasileiro  |
        | Naturalidade      | Betim       |
        | EstadoCivil       | Solteiro    |
        | Senioridade       | Trainee     |
        | PretensaoSalarial | 100000      |
        | Adjetivo1         | Popular     |
        | Adjetivo2         | Sincero     |
        | Adjetivo3         | Líder       |
        | Adjetivo4         | Animado     |
        | Adjetivo5         | Persistente |
        | Adjetivo6         | Popular     |
        | Adjetivo7         | Sincero     |
        | Adjetivo8         | Líder       |
        | Adjetivo9         | Animado     |
        | Adjetivo10        | Persistente |
    Quando usuario clica efetua o login
        | usuario                      | senha  |
        | enricopietrodias_@kof.com.mx | abc123 |
    E preenche todos os campos nas telas seguintes 
    Então e exibida a mensagem de confirmacao


@Cenario2
@Automatizado
    Esquema do Cenário: Cadastrar o currículo no Banco de Talentos após fazer o login
    E que o usuario possua os dados pessoais
        | Adjetivo1         | Popular     |
        | Adjetivo2         | Sincero     |
        | Adjetivo3         | Líder       |
        | Adjetivo4         | Animado     |
        | Adjetivo5         | Persistente |
        | Adjetivo6         | Popular     |
        | Adjetivo7         | Sincero     |
        | Adjetivo8         | Líder       |
        | Adjetivo9         | Animado     |
        | Adjetivo10        | Persistente |
    Quando usuario clica efetua o login
        | usuario                          | senha  |
        | edsonnicolasfernandes@dpf.com.br | abc123 |
    E preenche todos os campos nas telas seguintes 
    Então e exibida a mensagem de confirmacao


@Cenario3
@Automatizado
    Esquema do Cenário: Registrar o usuário para cadastrar no Banco de Talentos
    E que o usuario possua os dados pessoais
        | Email             | carloscardoso20@tasaut.com.br |
        | Cpf               | 36030211692                   |
        | Senha             | abc123                        |
        | RepetirSenha      | abc123                        |
        | TelefoneOuCelular | 31982060440                   |
        | Email             | carloscardoso20@tasaut.com.br |
        | EmailNovamente    | carloscardoso20@tasaut.com.br |
        | NomeCompleto      | Carlos Cardoso Soares         |
        | Genero            | Masculino                     |
        | Nascimento        | 04/01/1991                    |
    Quando usuario clica registrar o cadastro
    E preenche todos os campos nas telas seguintes 
    Então e exibida a mensagem de confirmacao

