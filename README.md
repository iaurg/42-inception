# Inception

## Glossário

Imagem = Um pacote de um serviço ou sistema especifico
Container = Imagem em execução

### Comandos úteis

```sh
docker ps # Lista containers em execução
docker ps -a # Lista containers parados e em execução
docker pull NOME_DO_PACOTE # Baixa um pacote da docker hub
docker images # Mostra todas as imagens disponiveis na maquina
docker run --name NOME_DO_CONTAINER -p PORTA:PORTA -d NOME_DA_IMAGEM # Inicia um container com um nome em uma porta baseado na imagem especifica
docker stop NOME_DO_CONTAINER # Para a execução do container
docker start NOME_DO_CONTAINER # Inicia a execução do container
docker restart NOME_DO_CONTAINER # Reinicia a execução do container
docker network ls # Lista todas as networks do docker e máquina
docker network create NOME_DA_NETWORK # Cria uma network
```

### Conteúdos

[Learn Docker in 7 Easy Steps - Full Beginner's Tutorial](https://www.youtube.com/watch?v=gAkwW2tuIqE)

[you need to learn Docker RIGHT NOW!! // Docker Containers 101](https://www.youtube.com/watch?v=eGz9DS-aIeY)

[Docker networking is CRAZY!!](https://www.youtube.com/watch?v=bKFMS5C4CG0)

[Docker Compose will BLOW your MIND!! (a tutorial)](https://www.youtube.com/watch?v=DM65_JyGxCo)

[Docker in 100 seconds](https://www.youtube.com/watch?v=Gjnup-PuquQ)
