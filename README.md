Provisionamento de Cluster ECS com Terraform
Este repositório contém a infraestrutura como código (IaC) para provisionar um cluster ECS (Elastic Container Service) na AWS usando o Terraform. O projeto cria a infraestrutura necessária, como VPC, subnets, grupos de segurança, e configura o cluster ECS para executar aplicações em contêineres.

Requisitos
Antes de iniciar o provisionamento, certifique-se de que você tenha os seguintes requisitos instalados em seu ambiente local:

Terraform v1.0.0 ou superior
AWS CLI configurada com suas credenciais
Chave SSH para acessar as instâncias EC2
Uma conta AWS ativa
Estrutura do Projeto
O projeto está organizado em módulos Terraform:

modules/vpc: Configura a VPC (Virtual Private Cloud), incluindo subnets públicas e privadas.
modules/ecs: Cria o cluster ECS, serviços, e define as tarefas para executar containers.
Arquivos principais
main.tf: Arquivo principal que chama os módulos e define os recursos no AWS.
variables.tf: Define as variáveis de entrada para personalizar o provisionamento.
outputs.tf: Exporta os valores que serão usados após a criação do ambiente, como o ID da VPC, nome do cluster, etc.
Configuração
1. Clonar o repositório
Faça o clone deste repositório para a sua máquina local:

bash
Copiar
Editar
git clone https://github.com/seu-usuario/projeto-ecs-terraform.git
cd projeto-ecs-terraform
2. Personalizar variáveis
Abra o arquivo variables.tf e ajuste as variáveis de acordo com o seu ambiente. Exemplo de variáveis que podem ser configuradas:

region: Região onde os recursos serão provisionados (ex: "us-east-1")
cluster_name: Nome do cluster ECS
subnet_ids: IDs das subnets onde as tarefas serão executadas
key_name: Nome da chave SSH para acesso às instâncias EC2
3. Inicializar o Terraform
No diretório raiz do projeto, execute o comando para inicializar o Terraform:

bash
Copiar
Editar
terraform init
4. Verificar o plano
Antes de aplicar as mudanças, verifique o que será criado usando o comando plan:

bash
Copiar
Editar
terraform plan
Isso mostrará todos os recursos que serão criados.

5. Aplicar o plano
Se estiver satisfeito com o plano, aplique as mudanças para provisionar os recursos na AWS:

bash
Copiar
Editar
terraform apply
Digite yes para confirmar a aplicação.

Outputs
Após o provisionamento, você verá os seguintes valores de saída:

vpc_id: ID da VPC criada.
ecs_cluster_name: Nome do cluster ECS.
public_subnet_ids: IDs das subnets públicas.
private_subnet_ids: IDs das subnets privadas.
Esses outputs podem ser usados para interagir com os recursos criados, como o deploy de aplicações no ECS.

Limpeza dos Recursos
Para evitar custos indesejados, você pode destruir todos os recursos criados com o seguinte comando:

bash
Copiar
Editar
terraform destroy
Digite yes para confirmar a destruição dos recursos.

Contribuições
Sinta-se à vontade para abrir issues ou pull requests caso queira contribuir com melhorias neste projeto.

Licença
Este projeto está licenciado sob a MIT License.

