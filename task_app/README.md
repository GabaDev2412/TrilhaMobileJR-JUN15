# Task App

**Descrição:** Projeto Flutter simples de um aplicativo de lista de tarefas proposto pelo Codigo Certo para trilha mobile.

### Desafio proposto ao app

1. **Tela Inicial:**
   - Deve exibir uma lista de tarefas adicionadas.
   - Cada tarefa deve ter um título e uma opção para marcar como concluída.
   - Exibir tarefas concluídas em uma seção separada ou com uma formatação diferente.

2. **Adicionar Tarefa:**
   - Campo de entrada para o título da tarefa.
   - Botão para adicionar a tarefa à lista.

3. **Marcar Tarefa como Concluída:**
   - Cada tarefa deve ter um botão ou checkbox para marcar como concluída.

4. **Persistência de Dados:**
   - Armazenar as tarefas localmente no dispositivo para que permaneçam após fechar e reabrir o aplicativo.


## Sumário
- [Visão Geral](#visão-geral)
- [Requisitos](#requisitos)
- [Dependências](#dependências)
- [Instalação](#instalação)
- [Estrutura do Projeto](#estrutura-do-projeto)

## Visão Geral
O Task App é um aplicativo móvel desenvolvido em Flutter, destinado a gerenciar tarefas de forma simples. O aplicativo utiliza `provider` para gerenciamento de estado e `shared_preferences` para persistência de dados localmente.

## Requisitos
- **Flutter SDK:** >=3.4.4 <4.0.0
- **Dart SDK:** Integrado ao Flutter

## Dependências
As dependências e versões utilizadas no projeto estão listadas abaixo:

- **Provider:** ^6.0.1
- **Shared Preferences:** ^2.0.8
- **Cupertino Icons:** ^1.0.6

## Instalação
1. Clone o repositório do projeto:
    ```bash
    git clone https://github.com/GabaDev2412/TrilhaMobileJR-JUN15
    ```
2. Navegue até o diretório do projeto:
    ```bash
    cd task_app
    ```
3. Instale as dependências:
    ```bash
    flutter pub get
    ```
4. Execute o aplicativo:
    ```bash
    flutter run
    ```

## Estrutura do Projeto
```
task_app/
├── lib/
│   ├── pages/
│   │   └── home_page.dart       # A tela inicial do aplicativo
│   ├── styles/
│   │   ├── themes.dart          # Define os temas visuais do aplicativo
│   │   └── themes_utils.dart    # Utilitários para gerenciar os temas
│   ├── utils/
│   │   ├── constants.dart       # Define constantes utilizadas em todo o projeto
│   │   ├── task_provider.dart   # Provider para gerenciar o estado das tarefas
│   │   └── theme_provider.dart  # Provider para gerenciar o tema claro ou escuro
│   ├── widgets/
│   │   ├── list_task.dart       # Um widget para exibir uma lista de tarefas
│   │   └── task_item.dart       # Um widget que representa um item individual da lista de tarefas
│   ├── main.dart                # O ponto de entrada do aplicativo
│   └── my_app.dart              # Classe principal do aplicativo, que configura o MaterialApp e os widgets principais
├── test/                        # Testes do aplicativo
├── pubspec.yaml                 # Arquivo de configuração do projeto
└── README.md                    # Documentação do projeto
```
