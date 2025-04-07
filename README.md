# dynamic-cloud-infra-jenkins-terraform-ansible
🚀 Project Update: Dynamic Cloud Infrastructure Provisioning with Jenkins, Terraform & Ansible 💻🌩️

Super excited to share a recent DevOps project I built from the ground up: a fully automated CI/CD pipeline that provisions cloud infrastructure dynamically on AWS, configures it using Ansible, and ties it all together with Jenkins!

🔧 Tech Stack:

Jenkins – CI/CD orchestration

Terraform – Infrastructure as Code (IaC) to provision EC2 instances

Ansible – Configuration management with static and dynamic inventories

AWS – Cloud hosting

Python, Boto3, Git, Java 17

📌 What I Built:
✅ Set up an Ansible master with two Linux worker nodes
✅ Deployed a dedicated Jenkins server for pipeline automation
✅ Integrated Terraform with Jenkins to spin up EC2 instances dynamically
✅ Implemented dynamic inventory in Ansible to auto-detect new cloud instances
✅ Used static inventory to manage known infrastructure like Jenkins and Ansible nodes
✅ Managed AWS credentials securely using Jenkins Secrets
✅ Created a Jenkins pipeline that flows like this:
📥 GitHub repo checkout → ☁️ EC2 provisioning → ⚙️ Configuration via playbooks

🤖 Why Both Static & Dynamic Inventories?
Static Inventory:
Used for known infrastructure (like Jenkins, Ansible Master, or fixed worker nodes). This makes it easy to run pre-configurations, health checks, or bootstrap operations.

Dynamic Inventory:
Ideal for cloud environments where instances are created on the fly. I used Ansible's AWS dynamic inventory script to automatically fetch newly provisioned EC2 instances and apply configurations without manual IP management. This made the system scalable and truly dynamic.

🌐 Project Outcome:
This end-to-end automation pipeline mirrors real-world DevOps practices—combining Infrastructure as Code, configuration management, and CI/CD in a secure, flexible, and production-ready setup.

🧠 A valuable hands-on journey into cloud orchestration, Ansible automation, and Jenkins CI/CD pipelines!
