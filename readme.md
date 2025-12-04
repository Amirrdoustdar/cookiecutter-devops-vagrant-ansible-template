# Cookiecutter DevOps Template (Vagrant + Ansible)

A reusable Cookiecutter template for generating a clean backend +
infrastructure project using:

-   **Vagrant** → reproducible development VMs\
-   **Ansible** → server configuration via external roles\
-   **Makefile** → simple end-to-end automation\
-   **Modular Role Architecture** → common, docker, hardening

This template standardizes DevOps-style project structure and removes
repetitive setup work.

## 🚀 Features

-   Generates a complete project skeleton:

        {{project_slug}}/
          backend/
          infra/
            vagrant/
            ansible/
          Makefile
          README.md

-   Infrastructure workflow:

    -   Provision VM using Vagrant\
    -   Configure server using Ansible\
    -   Pull external roles via `requirements.yml`\
    -   Deterministic, reproducible, modular infra

-   Three independent roles:

    -   `common_role` → base OS setup (users, packages)
    -   `docker_role` → Docker Engine + Compose installation
    -   `hardening_role` → SSH + UFW hardening

-   Simple automation via Makefile:

    -   `make init`
    -   `make infra`
    -   `make config`
    -   `make destroy`

## 📦 Directory Structure (Generated Project)

    {{cookiecutter.project_slug}}/
    ├── backend/
    │   └── .gitkeep
    ├── infra/
    │   ├── ansible/
    │   │   ├── group_vars/
    │   │   │   └── all.yml
    │   │   ├── inventory
    │   │   ├── playbook.yml
    │   │   └── requirements.yml
    │   └── vagrant/
    │       └── Vagrantfile
    ├── Makefile
    └── README.md

## 🛠 Usage

### 1) Install Cookiecutter

``` bash
pip install cookiecutter
```

### 2) Generate a new project

``` bash
cookiecutter https://github.com/amirdoustdar/cookiecutter-devops-vagrant-ansible-template.git
```

Prompt fields:

-   `project_name`
-   `project_slug`
-   `vm_ip`
-   `vm_memory`
-   `vm_cpus`

### 3) Infrastructure lifecycle

``` bash
make init
make infra
make config
```

Destroy VM:

``` bash
make destroy
```

## 🔗 External Ansible Roles

-   https://github.com/amirdoustdar/ansible-role-common\
-   https://github.com/amirdoustdar/ansible-role-docker\
-   https://github.com/amirdoustdar/ansible-role-hardening

## 📄 License

MIT License.

## ⭐ Contributing

Pull requests welcome.
