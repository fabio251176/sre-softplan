# 🚀 Projeto SRE Softplan – Infraestrutura como Código, Observabilidade e FinOps

Este projeto demonstra a aplicação prática de conceitos essenciais de **Site Reliability Engineering (SRE)**, com foco em:

- ✅ Deploy via **Infrastructure as Code (IaC)** com Terraform e Ansible
- ✅ Observabilidade com **SLI/SLO/SLA**, métricas e logs
- ✅ Boas práticas de **FinOps** para controle de custos em nuvem

---

## 📁 Estrutura do Projeto

```bash
sre-softplan/
├── terraform/                 # Infraestrutura como código
│   ├── main.tf                # Módulo raiz que integra todos os recursos
│   ├── variables.tf           # Variáveis globais
│   ├── terraform.tfvars       # (Ignorado no Git) - valores sensíveis reais
│   ├── terraform.tfvars.example # Exemplo de configuração
│   └── modules/
│       ├── vpc/               # Criação de VPC
│       ├── ec2/               # Criação de instância EC2
│       └── s3/                # Criação de bucket S3
├── ansible/                   # Provisionamento com Ansible (em breve)
├── .github/workflows/         # CI/CD com GitHub Actions
└── README.md                  # Este arquivo
```

---

## ⚙️ Pré-requisitos

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- AWS Access Key e Secret configuradas com `aws configure`

---

## 🚀 Como Usar

1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/sre-softplan.git
   cd sre-softplan/terraform
   ```

2. Copie o arquivo de exemplo:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

3. Edite `terraform.tfvars` com suas variáveis:
   - AMI ID (ex: `"ami-0c55b159cbfafe1f0"`)
   - Tipo de instância
   - Nome do ambiente

4. Inicialize e aplique:
   ```bash
   terraform init
   terraform validate
   tflint                  # (Opcional - boas práticas)
   terraform plan
   terraform apply
   ```

---

## ✅ Boas Práticas Demonstradas

- **Modularização e reutilização de código**
- **Separação de ambientes com variáveis**
- **Validação e linting com `terraform validate` e `tflint`**
- **GitHub Actions para CI/CD (em breve)**
- **Provisionamento com Ansible (em breve)**

---

## 📈 Observabilidade e FinOps (conceitual)

Este projeto acompanha uma [apresentação em slides](./Apresentacao_SRE_Atualizada.pptx) que cobre:

- SLI / SLO / SLA
- Coleta de métricas com Prometheus / Grafana
- Centralização de logs com ELK / Loki
- Otimização de custos com ferramentas FinOps (Cost Explorer, etc.)

---

## 📄 Licença

Este projeto é de uso educacional e demonstração técnica.
