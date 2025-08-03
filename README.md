# Apresentação Técnica - SRE

Este repositório contém exemplos práticos para demonstrar boas práticas de IaC (Terraform + Ansible), observabilidade e FinOps.

## Estrutura

- `terraform/`: Criação de recursos AWS (EC2, S3) usando módulos reutilizáveis.
- `ansible/`: Configuração de instância EC2 com NGINX via Ansible.

## Como usar

1. Configure variáveis no Terraform (`terraform.tfvars` ou via CLI).
2. Execute `terraform init && terraform apply` para provisionar.
3. Conecte-se à instância EC2 e execute o playbook do Ansible.

## Observabilidade e FinOps

- Monitoramento e logs podem ser integrados com Prometheus, Grafana e CloudWatch.
- Custos podem ser acompanhados com Cost Explorer + tags de projeto.