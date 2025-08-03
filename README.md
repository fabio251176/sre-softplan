# 🚀 Projeto SRE Softplan – Terraform, Ansible, Observabilidade e FinOps

Este repositório demonstra a aplicação prática de princípios de **Site Reliability Engineering (SRE)** em três pilares principais:

- ✅ **Deploy via Infrastructure as Code (IaC)** com Terraform e Ansible
- ✅ **Observabilidade** com SLI/SLO/SLA, coleta de logs e métricas
- ✅ **FinOps** com foco em controle de custos de infraestrutura

---

## 📁 Estrutura do Projeto

```bash
sre-softplan/
├── terraform/                   # Infraestrutura com Terraform
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── terraform.tfvars.example
│   └── modules/
│       ├── ec2/
│       ├── s3/
│       └── vpc/
├── ansible/                     # Provisionamento pós-deploy
│   ├── inventory.ini
│   └── playbook.yml             # Instala nginx via SSH
├── .github/workflows/           # CI/CD com GitHub Actions (em breve)
└── README.md                    # Este arquivo
```

---

## ⚙️ Pré-requisitos

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- Conta AWS com chaves de acesso (`aws configure`)

---

## 🚀 Deploy com Terraform

### Passos:

1. Copie o arquivo de variáveis de exemplo:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

2. Edite o arquivo `terraform.tfvars` com:
   - `ami_id`: ex. `"ami-0c55b159cbfafe1f0"`
   - `instance_type`: ex. `"t2.micro"`
   - `environment`: ex. `"dev"`

3. Inicialize e aplique:
   ```bash
   terraform init
   terraform validate
   tflint                     # (opcional, valida boas práticas)
   terraform plan
   terraform apply
   ```

---

## 🛠️ Pós-provisionamento com Ansible

Após a criação da EC2, use Ansible para instalar NGINX:

### Arquivo: `ansible/inventory.ini`
```ini
[web]
<public_ip> ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/minha-chave.pem
```

### Arquivo: `ansible/playbook.yml`
```yaml
- name: Instalação de NGINX em servidor EC2
  hosts: web
  become: true
  tasks:
    - name: Instalar NGINX
      apt:
        name: nginx
        state: present
        update_cache: true
```

### Executar:
```bash
ansible-playbook -i ansible/inventory.ini ansible/playbook.yml
```

---

## 📈 Observabilidade (SLI / SLO / SLA)

- **SLI (Indicator)**: Tempo de resposta, disponibilidade, etc.
- **SLO (Objective)**: ex. 99.9% uptime mensal
- **SLA (Agreement)**: Acordo formal com cliente
- Ferramentas sugeridas: Prometheus, Grafana, ELK, Loki, OpenTelemetry

---

## 💰 FinOps – Custos e Otimizações

- Monitoramento de uso com AWS Cost Explorer
- Evitar recursos ociosos com tagging e shutdown automatizado
- Tipos de instância otimizadas (ex: Spot Instances)
- Ferramentas: CloudHealth, Infracost, Cost Explorer, etc.

---

## 📄 Licença

Este projeto é de uso educacional para demonstração técnica em entrevistas SRE.
