Esse repositorio contem configurações para um cluster docker swarm.
Contem um proxy reverso nginx que garante acesso a duas aplicações de votos com uma dependencia de banco.
Arquitetura:
	- 2 hosts virtuais
	- Proxy reverso para receber solicitações e redirecionar para o container adequado
	- Banco de dados redis e postgres para armazenamento



# docker-swarm
Requisitos:
	- 1 docker-machine
	- 2 virtualbox

Essa aplicação necessita de hosts para a formação de um cluster a ser controlado pelo docker swarm. Você pode usar o docker-machine para criar máquinas virtuais utilizando o driver virtualbox.

Obs: Minimo duas máquinas para testes de loadbalancers e scalings

- 1 Crie as configs para substituir os arquivos de configuração no container do proxy reverso
	- docker config create proxy nginx.conf
	- docker config create cert cert.pem
	- docker config create certkey cert.key

- 2 Execute o docker-compose
	- docker stack deploy -c docker-compose.yaml teste
- 3 Escale a api de votaçãopara dois
	- docker service scale teste__vote=2

