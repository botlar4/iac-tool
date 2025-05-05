# iac-tool
Automation tools for Infrastructure as Code (IaC) workflows

## Available Tools

### Kubernetes CLI (kubectl)

An Ansible role for installing the Kubernetes command-line tool (kubectl) on target systems.

**Usage:**

```bash
# Install kubectl with default settings (latest stable version)
ansible-playbook playbooks/install_kubernetes_cli.yml

# Use the role in your own playbook
- hosts: servers
  roles:
    - role: kubernetes_cli
      kubectl_version: "v1.28.0"  # Optional: specify version
```

See [role documentation](roles/kubernetes_cli/README.md) for more details and configuration options.
