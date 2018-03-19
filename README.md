# Desafio Stone DevOps

Projeto seguindo os detalhes do repositório https://github.com/stone-payments/stone_devops_challenge

## Começando

Os detalhes abaixo servirão para o funcionamento dos scripts nesse repositório

### Pré-requisitos

Antes de começar, deve-se instalar os seguintes softwares abaixo:

```
ansible
boto3
awscli
```

Após a instalação da awscli, deve-se configurar um profile(~/.aws/credentials). Exemplo:

```
[luizmascarenhasdesafio]
aws_access_key_id = <ACCESS_KEY>
aws_secret_access_key = <SECRET_KEY>
```
Para esse projeto, foi enviada por e-mail os detalhes para a configuração acima.

## Gerenciando AWS

Para configuração do ambiente AWS deve-se rodar os scripts abaixo:

### Criação VPC

```
ansible-playbook -i hosts pb_mainSetupAWS_us_east_1.yml
```

Após essa execução, devemos ter o ambiente criado conforme topologia abaixo:

![Topologia](https://raw.githubusercontent.com/lmascarenhas/desafio/master/topologia_aws.png)

### Server Jenkins

Para criação de um servidor Jenkins

```
ansible-playbook -i hosts pb_ec2_createServer_us_east_1.yml
```

* [Ansible](http://docs.ansible.com/ansible/latest/list_of_all_modules.html) - Lista de Módulos para AWS


## Autor

* **Luiz Mascarenhas**