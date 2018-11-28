# Moodle on Docker Compose


## Instalação

```shell
git clone git@github.com:CoticEaDIFRN/moodle_docker_compose.git
cd moodle_docker_compose/
git submodule update --init
cd apps/ava
git checkout MOODLE_35_STABLE
cd ../../bin
cp example.env .env
vim .env
./deploy
./ava_up
```

## Alterando a configuração

1. As variáveis de ambiente são definidas em `bin/.env`, um exemplo delas está definido em `bin/example.env`.
2. Se depois de realizar o `deploy` você decidir mudar alguma configuração nos arquivos `bin/.env` ou no 
`conf/config.php` será necessário, em `bin`, fazer um `./down` de pois `./ava_up` novamente.
3. Caso queira repetir o processo novamente, basta estar em `bin` e executar `./undeploy` e novo `./deploy`, 
lembrando que isso apagará o `MoodleData` e `MysqlData`.
4. O `mariadb` é acessível usando o script `./db_mysql` em `bin`, se o banco ainda não tiver subido, subirá.
5. O modo debug está inativado no `conf/config.php`, pode ser ativado lá ou via interface.


## Acesso

Os passos abaixo consideram que você não alterou as variáveis de `example.env` antes de realizar o `./deploy`, caso tenha alterado siga conforme sua configuração.

1. Acesse http://localhost/ava , variável `MOODLE_DOCKER_AVA_HOST`.
2. Informe o **usuário** , variável `DEPLOY_ADMIN_USER`.
3. Informe o **senha** , variável `DEPLOY_ADMIN_PASS`.
