# Cookiecutter DevOps Template (Vagrant + Ansible)

A reusable Cookiecutter template that generates a backend + infra project with:

- `backend/` – application code
- `infra/vagrant/` – VM provisioning using Vagrant
- `infra/ansible/` – configuration using Ansible and external roles
- `Makefile` – simple end-to-end automation

## Features

- Standardized project structure for backend + infrastructure
- Vagrant VM with a fixed private IP
- Ansible integration with three external roles:
  - `common_role`
  - `docker_role`
  - `hardening_role`
- Simple `make` targets for `init`, `infra`, `config`, and `destroy`

## Usage

```bash
pip install cookiecutter

cookiecutter https://github.com/YOUR_GITHUB_USERNAME/cookiecutter-devops-vagrant-ansible-template.git
Answer the prompts:

project_name

project_slug

vm_ip

vm_memory

vm_cpus

Then:

bash
Copy code
cd <project_slug>
make init     # install Ansible roles (from requirements.yml)
make infra    # start Vagrant VM
make config   # run Ansible playbook
# make destroy  # tear down the VM
External Ansible Roles
This template expects these roles to be available via requirements.yml:

common_role – base system configuration

docker_role – Docker installation and setup

hardening_role – SSH and firewall hardening

yaml
Copy code

(بعداً لینک سه تا ریپوی role رو هم می‌تونی اضافه کنی.)

---

## 5. دستورهای Git برای push کردن

فرض می‌گیرم الان ساختار بالا رو تو یک فولدر مثل `cookiecutter-devops-vagrant-ansible-template/` ساختی.

### 5.1. داخل فولدر برو

```bash
cd /path/to/cookiecutter-devops-vagrant-ansible-template