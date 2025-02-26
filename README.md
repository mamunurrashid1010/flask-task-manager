# Flask Task Manager App

A simple Task Manager application built with Flask and MySQL, containerized using Docker, and deployable to an AWS EC2 Ubuntu instance.

## Features

✅ Add new tasks that need to be completed.\
✅ View a list of all pending tasks to stay organized.\
✅ Mark tasks as completed when done.\
✅ Delete tasks that are no longer needed.\
✅ Uses MySQL as the database.\
✅ Containerized using Docker for easy deployment.

---

## Getting Started (Local Development)

### Prerequisites

Ensure you have the following installed on your local machine:

- Docker & Docker Compose
- Python 3.9+
- MySQL

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/mamunurrashid1010/flask-task-manager.git
   cd flask-task-manager
   ```

2. **Build and Run the Application using Docker Compose:**

   ```bash
   docker-compose up --build
   ```

   The Flask app will be accessible at `http://localhost:5000`.

---

## Deploying to AWS EC2 (Ubuntu 24.04 LTS)

### Step 1: Launch an EC2 Instance

1. Log in to AWS and launch an **EC2 instance** with:

    - Ubuntu 24.04 LTS
    - Security Group allowing **ports 22, 5000, and 3306** (for SSH, Flask, and MySQL)

2. Connect to your instance:

   ```bash
   ssh -i your-key.pem ubuntu@your-ec2-instance-ip
   ```

### Step 2: Install Dependencies

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
```

### Step 3: Clone the Project on EC2

```bash
git clone https://github.com/mamunurrashid1010/flask-task-manager.git
cd flask-task-manager
```

### Step 4: Run the Application

```bash
docker-compose up --build -d
```

### Step 5: Access the Application

Find your **public EC2 IP** from the AWS dashboard and open:

```
http://your-ec2-ip:5000
```

---

## Stopping the Application

To stop running containers:

```bash
docker-compose down
```

---


## Author

Developed by **Muhammed Mamunur Rashid**


 
