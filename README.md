# Credi Discount

This README would normally document whatever steps are necessary to get the
application up and running.

* Getting Started
    * Prerequisites
    * Installation
    * Tests
* Usage
* Retro and Postmortem

## Getting Started
Provide detailed instructions on how to get the project up and running. This should include:

## Prerequisites
List all the software, libraries, and tools that need to be installed on the user's system to run this project. For example:

- Ruby 3.2.1
- Rails 7.0.8
- Docker 23.0
- Docker-Compose 2.17
- PostgreSQL
## Instalation

1 - Clone repository using ssh key
    
```bash
$ git clone git@github.com:joaohenriquepda/credi-discount.git
```
2 - Change to the project directory:

```bash
$ cd credi-discount
```
3 - Use docker-compose to start local development environment

```bash
$ docker-compose up
```

4 - For access rails container while docker-compose running execute
``` bash
$ docker-compose exec api /bin/sh
``` 

4 - Accessing the container it will be possible to execute commands necessary for initial access to the project
``` bash
$ rails db:migrate && rails db:seed
``` 
The command above will create the database and populate it with information from seed.rb

## Tests

After clonning repository and access directory and run docker-compose up

For access rails container while docker-compose running execute
``` bash
$ docker-compose exec api /bin/sh
``` 

Accessing the container it will be possible to run the tests
``` bash
$ rails db:migrate RAILS_ENV=test && rails db:seed RAILS_ENV=test
``` 

After completing the execution of the commands execute
``` bash
$ rails test
``` 

## Usage
You must use the browser localhost:3000 to view the home, and on this page, the system's initial list of all users registered will be displayed.

It will be allowed to log in or register once again.
Viewing all data is feasible, but only logged-in profiles who have access to their information will be able to update it.

## Retro e PostMortem
*essa parte vai em pt-br, acho que consigo ser mais claro*

### Retro
- Algumas decisões para o projeto podem ter atrapalhado o fluxo direto para completude:
    - Stimulus, a versão usada do Rails já traz configurada para o uso e foi necessário uma curva de aprendizagem e tempo colocado para adiciona as função reativas para o frontend(campo de estimativa do valor do imposto e campo de adicão de contatos)
    - Trabalhar com o rails como monolíto, por sempre ter usado o framework como API algumas coisas simples levaram mais tempo que o necessário
    - Uso Devise somado a baixa prática do Rails monolíto, como o rails é um framework *“Convention Over Configuration”* boa parte das abstrações do Devise não são ficam claras e trabalhar
    - Adicionar alguma gem para Admin Dashboard para ter mais controle e ter um RBAC mais completo poderia ter sido feito

### Postmortem
 - A funcionalidade de relatórios de funcionários não foi realizada
 - O deploy do projeto não foi realizado    







