<p align="center">
  <img src="frontend/project/src/assets/favicon.svg" width="80" alt="Logo Raízes do Nordeste"/>
</p>

<h1 align="center">🍽️ Raízes do Nordeste</h1>

<p align="center">
  <strong>Sistema de Gestão e Automação de Pedidos para Restaurantes</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Angular-20.3-DD0031?logo=angular&logoColor=white" />
  <img src="https://img.shields.io/badge/Spring_Boot-4.0.3-6DB33F?logo=springboot&logoColor=white" />
  <img src="https://img.shields.io/badge/Java-17-ED8B00?logo=openjdk&logoColor=white" />
  <img src="https://img.shields.io/badge/MySQL-8.0+-4479A1?logo=mysql&logoColor=white" />
  <img src="https://img.shields.io/badge/Maven-3.9+-C71A36?logo=apachemaven&logoColor=white" />
  <img src="https://img.shields.io/badge/Node.js-20+-339933?logo=nodedotjs&logoColor=white" />
</p>

---

## 📖 Sobre o Sistema

O **Raízes do Nordeste** é uma plataforma web completa para gestão de pedidos em restaurantes. Pensado para estabelecimentos em expansão que precisam lidar com alto volume de requisições simultâneas em horários de pico, o sistema oferece:

- 🧾 **Cardápio Digital Público** — O cliente acessa pelo celular (sem login), navega pelas categorias, visualiza fotos e preços, e faz seu próprio pedido direto da mesa.
- 👨‍🍳 **Painel da Cozinha** — Fila de pedidos em tempo real com controle de status: *Aberto → Em Preparo → Entregue*.
- 🍽️ **Lançamento pelo Garçom** — O garçom registra pedidos manualmente para mesas que preferem atendimento presencial.
- 📦 **Gestão de Produtos e Estoque** — Cadastro de itens com categorias, preços, descontos, quantidade em estoque e imagens.
- 📊 **Dashboard Gerencial** — Painel inicial com métricas de produtos cadastrados, pedidos totais e usuários ativos.
- 👥 **Controle de Usuários e Permissões** — Perfis de acesso (Administrador, Garçom, Cozinha) com restrições granulares por tela e funcionalidade.
- 📁 **Importação/Exportação CSV** — Upload de planilha para cadastro em massa de produtos e download do catálogo existente.

### 🏗️ Arquitetura

| Camada | Tecnologia |
|---|---|
| **Frontend** | Angular 20.3, TypeScript 5.9, CSS Vanilla |
| **Backend** | Java 17, Spring Boot 4.0.3, Spring Security, Spring Data JPA |
| **Banco de Dados** | MySQL 8.0+ |
| **Autenticação** | JWT (JSON Web Token) via `auth0/java-jwt` |
| **Build** | Maven (backend), Angular CLI (frontend) |

---

## ⚙️ Pré-requisitos

Antes de começar, certifique-se de ter as seguintes ferramentas instaladas na sua máquina:

### 1. Java JDK 17

O backend roda em Java 17. Baixe e instale o JDK:

- **Download**: [https://adoptium.net/](https://adoptium.net/) (Eclipse Temurin) ou [https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)

Após instalar, verifique no terminal:

```bash
java -version
```

Saída esperada: `openjdk version "17.x.x"` ou similar.

> **💡 Dica (Windows):** Certifique-se de que a variável de ambiente `JAVA_HOME` aponta para o diretório do JDK e que `%JAVA_HOME%\bin` está no `PATH` do sistema.

### 2. Apache Maven 3.9+

O Maven é o gerenciador de dependências e build do backend Java.

- **Download**: [https://maven.apache.org/download.cgi](https://maven.apache.org/download.cgi)
- **Guia de Instalação**: [https://maven.apache.org/install.html](https://maven.apache.org/install.html)

**Instalação rápida (Windows):**

1. Baixe o arquivo `.zip` do Maven (ex: `apache-maven-3.9.x-bin.zip`).
2. Extraia para um diretório, por exemplo: `C:\apache-maven-3.9.9`.
3. Adicione a variável de ambiente `MAVEN_HOME` apontando para `C:\apache-maven-3.9.9`.
4. Adicione `%MAVEN_HOME%\bin` ao `PATH` do sistema.

Verifique no terminal:

```bash
mvn -version
```

Saída esperada: `Apache Maven 3.9.x` com o Java 17 listado.

### 3. Node.js 20+ e npm

O frontend Angular requer Node.js para compilação e execução.

- **Download**: [https://nodejs.org/](https://nodejs.org/) (versão LTS recomendada)

Verifique no terminal:

```bash
node -v
npm -v
```

### 4. Angular CLI

Após instalar o Node.js, instale o Angular CLI globalmente:

```bash
npm install -g @angular/cli
```

Verifique:

```bash
ng version
```

### 5. MySQL 8.0+

O sistema utiliza MySQL como banco de dados relacional.

- **Download**: [https://dev.mysql.com/downloads/installer/](https://dev.mysql.com/downloads/installer/)

Verifique se o serviço MySQL está rodando:

```bash
mysql -u root -p
```

---

## 🗄️ Configuração do Banco de Dados

### Passo 1 — Criar o banco de dados

Acesse o MySQL pelo terminal ou por uma ferramenta como **MySQL Workbench**, **DBeaver** ou **phpMyAdmin** e execute:

```sql
CREATE DATABASE raizes_nordeste;
```

### Passo 2 — Importar a estrutura do banco

Na raiz do projeto existe um arquivo SQL de exportação do banco. Importe-o com o seguinte comando no terminal:

```bash
mysql -u root -p raizes_nordeste < caminho/para/o/arquivo_dump.sql
```

Ou, pelo **MySQL Workbench**:

1. Abra o Workbench e conecte ao servidor local.
2. Vá em **Server → Data Import**.
3. Selecione **Import from Self-Contained File** e aponte para o arquivo `.sql`.
4. Em **Default Target Schema**, selecione `raizes_nordeste`.
5. Clique em **Start Import**.

### Passo 3 — Configurar credenciais

As credenciais do banco estão no arquivo `backend/demo/src/main/resources/application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/raizes_nordeste?useSSL=false&serverTimezone=UTC
spring.datasource.username=root
spring.datasource.password=SUA_SENHA_AQUI
```

> **⚠️ Importante:** Altere o campo `spring.datasource.password` para a senha do seu MySQL local.

---

## 🚀 Como Rodar o Projeto

### Backend (Spring Boot + Maven)

1. Abra o terminal e navegue até a pasta do backend:

```bash
cd backend/demo
```

2. Baixe as dependências e inicie o servidor Spring Boot:

```bash
mvn clean install
mvn spring-boot:run
```

> O servidor backend será iniciado em **http://localhost:8080**.

> **💡 Alternativa:** Se preferir, você pode abrir a pasta `backend/demo` no **IntelliJ IDEA** ou **VS Code** com a extensão Java e executar a classe principal `DemoApplication.java` diretamente pela IDE.

### Frontend (Angular)

1. Abra **outro terminal** e navegue até a pasta do frontend:

```bash
cd frontend/project
```

2. Instale as dependências do Node.js:

```bash
npm install
```

3. Inicie o servidor de desenvolvimento Angular:

```bash
ng serve
```

> O frontend será iniciado em **http://localhost:4200**.

4. Acesse o sistema no navegador:

| Interface | URL |
|---|---|
| **Painel Administrativo (Login)** | [http://localhost:4200/login](http://localhost:4200/login) |
| **Cardápio Público (Cliente)** | [http://localhost:4200/cardapio](http://localhost:4200/cardapio) |

---

## 📂 Estrutura do Projeto

```
Raizes-do-Nordeste/
│
├── backend/
│   └── demo/
│       ├── src/
│       │   ├── main/
│       │   │   ├── java/com/back/demo/
│       │   │   │   ├── controller/       # Controladores REST (AuthApi, Api, RestrictedApi)
│       │   │   │   ├── model/            # Entidades JPA e DTOs
│       │   │   │   ├── repository/       # Repositórios Spring Data
│       │   │   │   ├── service/          # Regras de negócio (PedidoSvc, ItemSvc, UserSvc...)
│       │   │   │   ├── infra/security/   # Configuração JWT e Spring Security
│       │   │   │   └── exception/        # Exceções de negócio customizadas
│       │   │   └── resources/
│       │   │       └── application.properties
│       │   └── test/                     # Testes unitários
│       └── pom.xml                       # Dependências Maven
│
├── frontend/
│   └── project/
│       ├── src/
│       │   ├── app/
│       │   │   ├── pages/                # Telas (login, home, products, orders, cardapio...)
│       │   │   ├── components/           # Componentes reutilizáveis (stats-row, navigation-cards...)
│       │   │   ├── layout/              # Sidebar e Topbar
│       │   │   ├── service/             # Serviços HTTP e interceptors
│       │   │   └── guards/             # Guard de autenticação
│       │   ├── assets/                  # Imagens e ícones
│       │   └── styles.css               # Estilos globais
│       ├── package.json
│       └── angular.json
│
├── documentacao_abnt.txt                 # Documentação acadêmica ABNT
└── README.md                            # Este arquivo
```

---

## 🔌 Endpoints da API

A API REST do backend está dividida em 3 controladores:

### 🔓 AuthApi (`/auth`) — Autenticação

| Método | Endpoint | Descrição |
|---|---|---|
| `POST` | `/auth/login` | Autenticação com login e senha. Retorna token JWT. |
| `POST` | `/auth/logout` | Encerra a sessão do usuário. |
| `GET` | `/auth/me` | Retorna dados do usuário autenticado. |

### 🌐 Api (`/api`) — Público e Operacional

| Método | Endpoint | Descrição |
|---|---|---|
| `GET` | `/api/getStatsHome` | Estatísticas do dashboard (produtos, pedidos, usuários). |
| `GET` | `/api/getCategoriaGrid` | Lista categorias com filtros de busca e status. |
| `POST` | `/api/criarAlterarCategoria` | Cria ou edita uma categoria. |
| `GET` | `/api/getItensGrid` | Lista produtos com filtros. |
| `GET` | `/api/getItensForCardapio` | Lista itens ativos para o cardápio público. |
| `POST` | `/api/criarAlterarItem` | Cria ou edita um produto. |
| `GET` | `/api/getListPedidos` | Lista pedidos com filtros (mesa, estado, período). |
| `POST` | `/api/adapterCriarPedido` | Cria pedido completo (usado pelo cardápio público). |
| `POST` | `/api/alterarEstadoPedido` | Altera status do pedido (Aberto/Cancelado/Encerrado). |
| `POST` | `/api/alterarEstadoItemPedido` | Altera status do item (Aberto/Em Preparo/Entregue). |
| `POST` | `/api/vinculaItemPedido` | Adiciona item a um pedido existente. |
| `POST` | `/api/excluirItemPedido` | Remove item do pedido (se permitido pelo estado). |
| `GET` | `/api/exportarProdutosCSV` | Exporta produtos em arquivo CSV. |
| `POST` | `/api/previewImportacao` | Faz preview de uma planilha CSV antes de importar. |
| `POST` | `/api/importarProdutos` | Importa produtos a partir de planilha CSV. |

### 🔒 RestrictedApi (`/restrictedApi`) — Administração (requer JWT)

| Método | Endpoint | Descrição |
|---|---|---|
| `GET` | `/restrictedApi/getListUsers` | Lista todos os usuários do sistema. |
| `POST` | `/restrictedApi/criarAlterarUsuario` | Cadastra ou edita um funcionário. |
| `POST` | `/restrictedApi/ativarInativarUsuario` | Ativa ou desativa conta de usuário. |
| `GET` | `/restrictedApi/getAllPerfil` | Lista perfis de acesso disponíveis. |
| `POST` | `/restrictedApi/toggleRestricaoPerfil` | Altera permissão de um perfil. |
| `POST` | `/restrictedApi/toggleRestricaoTela` | Bloqueia/desbloqueia acesso a telas. |

---

## 🔄 Fluxo de Status dos Pedidos

```
┌─────────────────────────────────────────────────────────┐
│                    PEDIDO                                │
│                                                         │
│   ┌──────────┐    ┌──────────┐    ┌──────────────┐      │
│   │  ABERTO  │───▶│ENCERRADO │    │  CANCELADO   │      │
│   │  (1)     │    │  (2)     │    │    (0)       │      │
│   └────┬─────┘    └──────────┘    └──────────────┘      │
│        │              ▲                  ▲               │
│        │              │                  │               │
│        │   (todos os itens              (nenhum item     │
│        │    entregues)                   em preparo)     │
│        ▼                                                │
│   ┌─────────────────────────────────────────────────┐   │
│   │              ITENS DO PEDIDO                    │   │
│   │                                                 │   │
│   │   Aberto (1) ──▶ Em Preparo (2) ──▶ Entregue (3)│  │
│   └─────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────┘
```

**Regras importantes:**
- ❌ Não é possível **cancelar** o pedido se algum item estiver em **preparo** ou **entregue**.
- ❌ Não é possível **encerrar** o pedido se existir algum item que **não** esteja como **entregue**.
- ❌ Não é possível **remover** um item do pedido se ele já foi **entregue**.

---

## 🛠️ Tecnologias e Dependências

| Dependência | Versão | Finalidade |
|---|---|---|
| Spring Boot | 4.0.3 | Framework backend Java |
| Spring Security | — | Autenticação e autorização |
| Spring Data JPA | — | ORM e acesso ao banco de dados |
| Hibernate | — | Implementação JPA |
| Auth0 java-jwt | 4.5.0 | Geração e validação de tokens JWT |
| Lombok | — | Redução de boilerplate Java |
| Apache Commons CSV | 1.10.0 | Leitura e escrita de arquivos CSV |
| MySQL Connector/J | — | Driver JDBC para MySQL |
| Angular | 20.3 | Framework frontend SPA |
| TypeScript | 5.9 | Linguagem do frontend |
| RxJS | 7.8 | Programação reativa |
| Express | 5.1 | Server-Side Rendering (SSR) |

---

## 📝 Licença

Este projeto foi desenvolvido para fins acadêmicos.

---

<p align="center">
  Feito com ❤️ por <strong>Lucas</strong>
</p>
