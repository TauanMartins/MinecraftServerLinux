# MinecraftServerLinux
This directorie contains all files need to Up a minecraft server of any versions you want. I particularly did this on AWS Linux t2.micro on Minecraft V1.10 and it worked fine, so it can run a server all day for 1 year free.

Step by step to initialize the server

1. Com sua máquina Linux já preparada, execute o comando "wget https://github.com/TauanMartins/MinecraftServerLinux/archive/refs/heads/main.zip" para baixar o repositório, e em seguida "unzip main.zip" para descompactar o arquivo no local que você está atualmente na máquina. Entre na pasta descompactada e execute os comandos "sudo chmod +x start.sh" e "sudo chmod +x ScriptAutomatic.sh" para dizer à máquina que são arquivos script executáveis.

2. Caso queira a versão 1.10 só precisa seguir o passo 4. Caso queira outra versão acesse a pasta mcserver e removar aquele .jar, substituindo por uma versão de sua preferência. Neste site é possível obter facilmente a versão de sua preferência https://mcversions.net/, porém em uma máquina de 1gb ram e 1vcpu que é o caso da t2.micro da AWS, versões acima da 1.10 são instáveis e muito pesadas.

3. Baixando uma versão de sua preferência renomeie para minecraft_server.jar e volte uma pasta com "cd ..".

4. Execute o "./start.sh", ele irá criar os primeiros arquivos e pedirá para aceitar os termos do arquivo eula.txt, mude de false para true no arquivo. No arquivo server properties é preciso fazer 2 alterações necessárias de 3 no total: o campo use-native-transport deve ser falso, o campo online-mode deve ser falso e o campo motd pode ser renomeado para a descrição do seu servidor.

5. Após isso é possível executar o comando "nohup ./start.sh &" para executar em segundo plano e o processo não se encerrará após você sair da máquina remota.

6 É possível ter uma segurança de o servidor sempre estará ativo agendando uma tarefa para ser executada a cada 20 minutos por exemplo para que verifique se o servidor está ativo, se não estiver ativo ele irá ativar o servidor de minecraft automaticamente, para isso utilize o comando "crontab -e" e cole essa linha "*/20 * * * * /home/ubuntu/McServerV1.10/ScriptAutomatic.sh", renomeie os campos para onde você colocou a pasta. Isso fará com que a cada 20 minutos seja executado o ScriptAutomatic.sh, dentro desse arquivo executável basicamente tem a condição que será testada para verificar se o servidor está ativo ou não e caso não esteja ativo ele ativará automaticamente.
