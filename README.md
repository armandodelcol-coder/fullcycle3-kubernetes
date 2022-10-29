# Kubernetes

## Sobre

A ideia principal é orquestração de containers (ex: container docker), o kubernetes possuí diversas apis que utilizamos para trabalhar com seus recursos.

O kubernetes trabalha através de clusters, um cluster é um conjunto de máquinas (nodes) que tem memória/cpu disponíveis.

Dentro dos nodes encontram-se pods que são processos que contêm os containers, geralmente 1 pod possuí 1 container.

O kubernetes precisar ter pelo menos 1 servidor (máquina) para servir de cluster (para maior disponibilidade é melhor ter mais clusters).

Com um cluster ativo, é preciso criar nodes que serão máquinas (VMs) dentro do cluster que trabalham interligadas porém com recursos isolados.

Com os nodes ativos, é possível começar a provisionar recursos através de pods.

Os recursos poder ser provisionados por arquivos declarativos (.yaml) e manipulados pelo cli kubectl.

### Deployment

Através do deployment é possível provisionar algum serviço (com replicas) que esteja containerizado para ser provisionado nos pods.

Quando os serviços estão de pé, o kubernetes vai gerenciar que sempre exista o número de replicas informado de pé, garantindo a disponibilidade necessária para a aplicação.

### Service > ClusterIP

O service clusterIP serve apra disponobilizar os serviços que estão rodando nos pods para o cluster principal, o que torna possível a comunicação com os serviços.

Também atua como um load balancer. Ao configurar o clusterIP e fazer um: `sudo kubectl port-forward svc/pyserver-service 8080:80` (por exemplo) é possível acessar a aplicação que está rodando no pod do node do cluster do kubernetes, que está sendo totalmente gerenciada  pelo k8s =).