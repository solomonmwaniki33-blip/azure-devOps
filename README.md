Technical Documentation: Automated Cloud Monitoring Infrastructure
Prepared by: Solomon Mwaniki
Date: April 2026
Project: Azure DevOps CI/CD Pipeline
1. Project Overview
This project establishes a Containerized Monitoring Web Application deployed to Microsoft Azure using an automated DevOps Pipeline. The system monitors cloud health and provides a real-time status dashboard.
2. Technical Stack
•	Backend: Node.js (Express Framework)
•	Containerization: Docker (WSL2 Linux Kernel)
•	Infrastructure as Code: Terraform (HCL)
•	CI/CD: GitHub Actions
•	Cloud Hosting: Azure Container Registry (ACR) & Azure Container Instances (ACI)
3. Execution Workflow
1.	Environment Setup: Configured WSL2 and Docker Desktop to allow Linux-based containers on Windows.
2.	Containerization: Built a custom Docker image from a node:18-slim base, packaging the app dependencies and monitoring logic.
3.	Infrastructure Provisioning: Used Terraform to automatically create a Resource Group, a private Registry, and a Container Group in the South Africa North region.
4.	Automation: Configured a GitHub Actions workflow to securely log into Azure, build the image on every "git push," and upload it to the ACR.
4. Key Benefits
•	Reliability: The app runs in a standardized Docker container, ensuring it works identically in any environment.
•	Security: Uses Azure Service Principals and GitHub Secrets to manage cloud credentials safely.
•	Scalability: The infrastructure is "Code-Defined," allowing it to be replicated or scaled across multiple Azure regions in minutes.

