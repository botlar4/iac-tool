# Kubernetes CLI (kubectl) Installation Role

This Ansible role installs the Kubernetes command-line tool, kubectl, on target systems.

## Requirements

- Ansible 2.9 or higher
- Target systems with internet access for downloading kubectl binary

## Role Variables

```yaml
# kubectl version to install (defaults to latest stable)
kubectl_version: "stable"

# Installation directory
kubectl_install_dir: "/usr/local/bin"

# Owner and mode for the kubectl binary
kubectl_owner: "root"
kubectl_group: "root"
kubectl_mode: "0755"

# Whether to verify the kubectl binary's GPG signature
kubectl_verify_signature: true
```

## Dependencies

None.

## Example Playbook

```yaml
- hosts: servers
  roles:
    - role: kubernetes_cli
      kubectl_version: "v1.28.0"
```

## License

MIT
