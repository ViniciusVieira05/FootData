# FootData

FootData é um projeto em Dart para consultar informações de times de futebol por meio da API TheSportsDB. O objetivo principal é facilitar a busca de dados como país, liga, localização e estádio de um time informado pelo usuário.

## Funcionalidades

- Buscar um time pelo nome
- Consultar informações básicas do clube
- Exibir país, ligas, localização e estádio
- Interface simples de linha de comando
- Integração com uma API pública de esportes

## Tecnologias

- Dart
- HTTP
- TheSportsDB API

## Estrutura Inicial do projeto

```text
api-esporte/
├── bin/
│   └── api_esporte.dart
├── lib/
│   └── api_esporte.dart
├── test/
│   └── api_esporte_test.dart
├── pubspec.yaml
├── analysis_options.yaml
├── README.md
└── CHANGELOG.md
```

## Pré-requisitos

Antes de executar o projeto, certifique-se de ter instalado:

- Dart SDK 3.13 ou superior
- Acesso à internet para consumir a API

## Instalação

1. Clone o repositório:

```bash
git clone https://github.com/ViniciusVieira05/FootData.git
cd api-esporte
```

2. Instale as dependências:

```bash
dart pub get
```

## Execução

Para rodar a aplicação:

```bash
dart run bin/api_esporte.dart
```

Ao iniciar, o programa solicita o nome do time e realiza a busca na API.

## Exemplo de uso

```text
Digite o nome do time:
Flamengo

API execultada com sucesso: 200

Nome: Flamengo
País: Brazil

Principais Campeonatos:
Liga: Campeonato Brasileiro Serie A
Liga: Copa do Brasil
Localização: Rio de Janeiro, Brazil

Estádio: Maracanã
```

## API utilizada

Este projeto consome a API da TheSportsDB:

```text
https://www.thesportsdb.com/api/v1/json/123/searchteams.php?t=<nome_do_time>
```

## Observações

- A busca depende do nome exato ou próximo do time informado.
- Caso o time não seja encontrado, a API pode retornar um erro ou nenhum resultado.
- O projeto foi desenvolvido como exemplo de consumo de API em Dart.
