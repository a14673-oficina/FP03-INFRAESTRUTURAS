# Gestão de Infraestrutura de Rede Escolar

## Português (Portugal)

### Descrição Geral
Este projeto consiste num website de demonstração para a gestão de infraestruturas de rede em ambiente escolar. O objetivo é permitir o controlo e a visualização de salas, equipamentos, técnicos e intervenções realizadas. O website utiliza uma estrutura simples e responsiva, com um tema minimalista inspirado no estilo Apple, para apresentar as informações de forma clara e intuitiva.

### Funcionalidades Principais
O website é uma aplicação PHP com as seguintes páginas principais:

*   **Início (home.php)**: A página principal que serve como dashboard, apresentando um resumo geral do estado da infraestrutura.
*   **Salas (salas.php)**: Permite visualizar e gerir as diferentes salas existentes na rede escolar.
*   **Equipamentos (equipamentos.php)**: Apresenta uma lista dos equipamentos de rede, com detalhes sobre cada um.
*   **Técnicos (tecnicos.php)**: Mostra os técnicos responsáveis pela manutenção e gestão da infraestrutura.
*   **Intervenções (intervencoes.php)**: Regista e exibe as intervenções realizadas nos equipamentos e salas.
*   **Equipamentos sem Intervenções (equipamentos_sem_intervencoes.php)**: Lista os equipamentos que ainda não tiveram qualquer intervenção registada.
*   **Relatórios (relatorios.php)**: Permite gerar relatórios sobre a infraestrutura, equipamentos e intervenções.

### Estrutura do Código
O website é construído com PHP, HTML e CSS, seguindo uma arquitetura modular:

*   **`index.php`**: O ficheiro principal que gere o carregamento das diferentes páginas (`pages/`).
*   **`config/ligacao.php`**: Contém a configuração para a ligação à base de dados.
*   **`pages/`**: Diretório que agrupa todos os ficheiros PHP correspondentes às diferentes secções do website.
*   **`style.css`**: Ficheiro CSS que define os estilos visuais da aplicação, incluindo o design responsivo e o suporte a temas claro/escuro.
*   **Design Responsivo Avançado**: O CSS utiliza Media Queries para adaptar o layout para dispositivos Móveis, Tablets e PC, garantindo uma boa experiência de utilizador em diferentes ecrãs.
*   **Estrutura Modular**: Todas as páginas seguem um padrão com cabeçalho, conteúdo principal e rodapé.
*   **Navegação Consistente**: A barra de navegação no cabeçalho permite o acesso rápido a todas as secções principais.

### Desafios e Soluções (Futuros de Melhoria)

*   **Separação de Estilos**: Embora já exista um `style.css`, a sua integração e otimização podem ser melhoradas para garantir que todos os estilos são centralizados e facilmente manuteníveis.
*   **Funcionalidade Dinâmica**: O projeto já é dinâmico com PHP e ligação à base de dados. Futuras melhorias podem incluir a implementação de funcionalidades CRUD (Criar, Ler, Atualizar, Apagar) completas para todas as entidades (salas, equipamentos, técnicos, intervenções).
*   **Segurança**: Implementar validação de inputs e medidas de segurança robustas para prevenir ataques como SQL Injection e XSS.
*   **Autenticação e Autorização**: Adicionar um sistema de login para utilizadores com diferentes níveis de acesso (administrador, técnico, etc.).

### Como Usar

1.  **Configuração da Base de Dados**: Edite o ficheiro `config/ligacao.php` com as credenciais da sua base de dados MySQL.
2.  **Importar Base de Dados**: Crie a base de dados e importe o esquema necessário (assumindo que existe um ficheiro SQL para a estrutura da BD).
3.  **Servidor Web**: Aloje os ficheiros num servidor web com suporte a PHP (e.g., Apache, Nginx).
4.  **Navegação**: Abra o `index.php` no seu navegador para iniciar a navegação. Explore as diferentes secções através do menu no cabeçalho.

## English

### Overview
This project is a demonstration website for managing network infrastructure in a school environment. The goal is to allow control and visualization of rooms, equipment, technicians, and interventions performed. The website uses a simple and responsive structure, with a minimalist Apple-inspired theme, to present information clearly and intuitively.

### Main Features
 The website is a PHP application with the following main pages:

*   **Home (home.php)**: The main page serving as a dashboard, providing a general overview of the infrastructure status.
*   **Rooms (salas.php)**: Allows viewing and managing the different rooms in the school network.
*   **Equipment (equipamentos.php)**: Displays a list of network equipment, with details about each one.
*   **Technicians (tecnicos.php)**: Shows the technicians responsible for infrastructure maintenance and management.
*   **Interventions (intervencoes.php)**: Records and displays interventions performed on equipment and rooms.
*   **Equipment without Interventions (equipamentos_sem_intervencoes.php)**: Lists equipment that has not yet had any intervention recorded.
*   **Reports (relatorios.php)**: Allows generating reports on infrastructure, equipment, and interventions.

### Code Structure
The website is built with PHP, HTML, and CSS, following a modular architecture:

*   **`index.php`**: The main file that manages the loading of different pages (`pages/`).
*   **`config/ligacao.php`**: Contains the configuration for the database connection.
*   **`pages/`**: Directory that groups all PHP files corresponding to the different sections of the website.
*   **`style.css`**: CSS file that defines the visual styles of the application, including responsive design and light/dark theme support.
*   **Advanced Responsive Design**: The CSS uses Media Queries to adapt the layout for Mobile, Tablet, and PC devices, ensuring a good user experience on different screens.
*   **Modular Structure**: All pages follow a pattern with a header, main content, and footer.
*   **Consistent Navigation**: The navigation bar in the header allows quick access to all main sections.

### Challenges and Solutions (Future Improvements)

*   **Style Separation**: Although a `style.css` already exists, its integration and optimization can be improved to ensure all styles are centralized and easily maintainable.
*   **Dynamic Functionality**: The project is already dynamic with PHP and database connection. Future improvements could include implementing full CRUD (Create, Read, Update, Delete) functionalities for all entities (rooms, equipment, technicians, interventions).
*   **Security**: Implement robust input validation and security measures to prevent attacks such as SQL Injection and XSS.
*   **Authentication and Authorization**: Add a user login system with different access levels (administrator, technician, etc.).

### How to Use

1.  **Database Configuration**: Edit the `config/ligacao.php` file with your MySQL database credentials.
2.  **Import Database**: Create the database and import the necessary schema (assuming an SQL file for the DB structure exists).
3.  **Web Server**: Host the files on a web server with PHP support (e.g., Apache, Nginx).
4.  **Navigation**: Open `index.php` in your browser to start navigation. Explore the different sections through the menu in the header.
