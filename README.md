<div align="center">
<img src="https://alphaville.github.io/optimization-engine/img/docker.gif" width="180" />
</div>

# Inception

This project aims to broaden your knowledge of system administration by using Docker. You will virtualize several Docker images, creating them in your new personal virtual machine.

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

### Notas

You might create your own images or you might only use those created by others and published in a registry. To build your own image, **you create a Dockerfile with a simple syntax for defining the steps needed to create the image and run it**. Each instruction in a Dockerfile creates a layer in the image.

A container is defined by its image as well as any configuration options you provide to it when you create or start it. When a container is removed, any changes to its state that are not stored in persistent storage disappear.

[Play with Docker](https://labs.play-with-docker.com/)

PWD is a Docker playground which allows users to run Docker commands in a matter of seconds. It gives the experience of having a free Alpine Linux Virtual Machine in browser, where you can build and run Docker containers

---

## Conteúdos

#### Docker

[Docker in 100 seconds](https://www.youtube.com/watch?v=Gjnup-PuquQ)

[Learn Docker in 7 Easy Steps - Full Beginner's Tutorial](https://www.youtube.com/watch?v=gAkwW2tuIqE)

[you need to learn Docker RIGHT NOW!! // Docker Containers 101](https://www.youtube.com/watch?v=eGz9DS-aIeY)

[Docker networking is CRAZY!!](https://www.youtube.com/watch?v=bKFMS5C4CG0)

[Docker Compose will BLOW your MIND!! (a tutorial)](https://www.youtube.com/watch?v=DM65_JyGxCo)

[Get Started docker](https://docs.docker.com/get-started/)

#### NGINX

[NGINX in 100 seconds](https://www.youtube.com/watch?v=JKxlsvZXG7c)

[NGINX configuration](https://www.nginx.com/resources/wiki/start/topics/examples/full/)
