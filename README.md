# 🚀 Cloud-Native Application with AWS & Kubernetes

## 🌟 Overview
This project demonstrates how to develop, containerize, and deploy a **Cloud-Native Application** on **AWS using Kubernetes (EKS)**. The application consists of a **Flask-based backend API** and a **simple frontend**, both running on **Amazon Elastic Kubernetes Service (EKS)** with **Ingress for routing**.

---

## 📁 Project Structure
```
cloud-native-app/
│── backend/
│   ├── app.py
│   ├── Dockerfile
│   ├── requirements.txt
│── frontend/
│   ├── index.html
│   ├── app.js
│── k8s/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── ingress.yaml
│── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│── scripts/
│   ├── build_and_push.sh
│── README.md
```

---

## ⚙️ Technologies Used
- **AWS EKS (Elastic Kubernetes Service)**
- **Kubernetes**
- **Terraform** (for infrastructure provisioning)
- **Docker** (for containerization)
- **Flask** (backend API)
- **HTML + JavaScript** (frontend)

---

## 🛠️ Setup & Deployment Guide

### **1️⃣ Prerequisites**
Ensure you have the following installed:
- **AWS CLI**
- **kubectl**
- **Terraform**
- **Docker**
- **Python 3**

### **2️⃣ Build and Push Docker Images**
Run the following script to build and push images to AWS **ECR**:
```bash
cd scripts
chmod +x build_and_push.sh
./build_and_push.sh
```

### **3️⃣ Deploy EKS Cluster with Terraform**
```bash
cd terraform
terraform init
terraform apply -auto-approve
```

### **4️⃣ Deploy Application on Kubernetes**
```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/ingress.yaml
```

### **5️⃣ Get Load Balancer URL**
```bash
kubectl get services
```
Access the application via the **LoadBalancer URL**.

---

## 📸 Screenshots
![Application Screenshot](https://via.placeholder.com/800x400.png?text=Cloud-Native+App)

---

## 🎯 Features
✅ Scalable Kubernetes Deployment  
✅ AWS EKS with Load Balancer  
✅ Terraform for Infrastructure as Code  
✅ Containerized Backend & Frontend  
✅ Ingress Routing with AWS ALB  

---

## 📜 License
This project is **MIT Licensed**.

---

## 🤝 Contributing
Feel free to fork, improve, and submit pull requests. Suggestions are always welcome!

---

## 📞 Contact
📧 Email: your-email@example.com  
🌍 Website: [your-website.com](https://your-website.com)  
🐦 Twitter: [@yourhandle](https://twitter.com/yourhandle)  

