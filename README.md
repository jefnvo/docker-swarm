Esse repositorio contem configurações do docker swarm para a configuração de um cluster que contem um proxy reverso nginx para acesso de duas aplicações de votos em containers/hosts diferentes com uma dependecia de banco.



# docker-swarm
Requisitos:
	- docker-machine
	- virtualbox

Essa aplicação necessita de hosts para a formação de um cluster a ser controlado pelo docker swarm para isso utilizei o docker-machine para criar hosts virtuais utilizando o driver virtualbox.

# Crie dois hosts no minimo e selecione um para ser o manager e outro para worker

# Crie as configs para substituir os arquivos de configuração no container do proxy reverso
- docker config create proxy nginx.conf
- docker config create cert cert.pem
- docker config create certkey cert.key

# Execute o docker-compose utilizando cli docker stack para distribuir os conteiners no cluster
- docker stack deploy -c docker-compose.yaml teste
# Escale a api de votaçãopara dois
- docker service scale teste__vote=2

