# Moodle on Docker Compose


## Instalação

```shell
git clone git@github.com:CoticEaDIFRN/moodle_docker_compose.git
cd moodle_docker_compose/
git submodule update --init
cd apps/ava
git checkout MOODLE_35_STABLE
cd ../../bin
./deploy
./ava_up
``` 


## Acesso

https://domain_name/ava/
