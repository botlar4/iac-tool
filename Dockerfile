FROM ubuntu:22.04

# Set environment to suppress interactive prompts
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    software-properties-common \
    python3 \
    python3-pip \
    ansible \
    curl \
    sudo

# Copy Ansible playbook and roles
COPY ansible/ /opt/ansible/

# Run Ansible playbook
RUN ansible-playbook /opt/ansible/install_tools.yml

# Default command
CMD ["bash"]
