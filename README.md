# 🌐 Secure & Compliant AWS Infrastructure with Terraform & Ansible

---

---

## 🧱 Architecture

- **VPC Design**: Public, private, and isolated subnets  
- **Compute**: EC2 instances (web/app), RDS (Multi-AZ, encrypted)  
- **Security**: IAM roles, Security Groups, NACLs, AWS Config, GuardDuty  
- **Monitoring**: Prometheus, Grafana, ELK Stack, CloudWatch  
- **Automation**: Terraform modules + Ansible playbooks  
- **Compliance**: Encryption, access control, patching, audit logging

---

## 🚀 Technologies Used

| Tool        | Purpose                            |
|-------------|-------------------------------------|
| Terraform   | Infrastructure provisioning         |
| Ansible     | Server configuration & patching     |
| AWS         | Cloud platform                      |
| Prometheus  | Metrics collection                  |
| Grafana     | Dashboards                          |
| ELK Stack   | Centralized logging                 |
| CloudWatch  | Monitoring & alerting               |
| AWS Config  | Compliance enforcement              |

---

## 📂 Directory Structure
project/
├── infra/                  # Terraform code
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── modules/
│       ├── vpc/
│       ├── ec2/
│       ├── rds/
│       └── security/
├── ansible/                # Ansible playbooks
│   ├── inventory.ini
│   └── playbooks/
│       ├── harden.yml
│       ├── patch.yml
│       └── monitoring.yml
├── diagrams/               # Architecture diagrams
├── compliance/             # ISO/GDPR/NIS2 mapping
└── README.md

---

## 🔐 Security & Compliance Highlights

- IAM roles with least privilege and MFA  
- Encrypted S3, RDS, and EC2 volumes (KMS)  
- Hardened OS configurations (SSH keys, disabled services)  
- Automated patching via Ansible + AWS Systems Manager  
- AWS Config rules for encryption, tagging, IAM policies  
- CloudTrail + GuardDuty for audit logging and threat detection  
- GDPR-compliant data handling and retention policies  
- NIS2-aligned incident response and reporting procedures

---

## 📊 Monitoring & Observability

- Prometheus Node Exporter installed on EC2  
- Grafana dashboards for system metrics  
- ELK Stack for centralized log analysis  
- CloudWatch alarms and SNS notifications  
- Audit logs stored in encrypted S3 buckets

---

## 🛠️ How to Deploy

### 1. Clone the repository
```bash
git clone https://github.com/your-username/aws-secure-infra.git
cd aws-secure-infra
cd infra
terraform init
terraform apply

cd ../ansible
ansible-playbook -i inventory.ini playbooks/harden.yml
ansible-playbook -i inventory.ini playbooks/patch.yml
ansible-playbook -i inventory.ini playbooks/monitoring.yml

Audit Readiness
Audit Artifact	Location / Description
Patch History	Stored in /compliance/logs/ with timestamps and Ansible output
Ansible Logs	Included in /compliance/logs/ for each playbook run
Access Logs & IAM Reviews	Documented in /compliance/access/ with policy evaluations
ISO/IEC 27001 Annex A Mapping	Included in /compliance/iso27001/ with control-to-resource map
GDPR Article References & Controls	Included in /compliance/gdpr/ with encryption and access logs
NIS2 Incident Response Templates	Provided in /compliance/nis2/ with reporting and escalation plans



