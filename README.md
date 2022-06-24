## SETUP
- Clonar o repositório

`git clone https://github.com/ricardomerces/sftp-docker.git`

- Editar o permissionamento

`cd sftp-docker && chmod u+x setup.sh`

- Executar o script setup.sh seguido do nome do usuário e da senha

`./setup.sh ricardo teste123`

## Utilização

- Para se conectar ao sftp utilize:

`sftp usuario@host`

- Para fazer uploads de arquivos utilize o diretório upload
```
Connected to localhost.
sftp> ls
upload  
sftp> 
```