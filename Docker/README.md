
# 🐳 Dockerized Flask App

This repository demonstrates how to **containerize a simple Flask application** using Docker. It's beginner-friendly and explains all the Docker components with examples and visuals.

---

## 📖 What is Docker?

**Docker** is a platform that allows you to package your application and its dependencies into a **container**. Containers ensure that your app runs the same everywhere—on your machine, on your friend's laptop, or on a server.

> _"It works on my machine" - Docker makes this a thing of the past._

---

## 🧱 Docker Components

| Component        | Description                                                                 |
|------------------|-----------------------------------------------------------------------------|
| **Dockerfile**   | Instructions for building the Docker image                                  |
| **Image**        | A snapshot of your app and its environment                                  |
| **Container**    | A running instance of an image                                              |
| **Docker Hub**   | A cloud registry where Docker images are stored (like GitHub for code)      |
| **Volume**       | Storage shared between your host and container                              |
| **Network**      | Allows containers to communicate with each other and the outside world      |

---

## 📁 Project Structure

```
flask-demo-app/
├── app.py
├── requirements.txt
└── Dockerfile
```

---

## 📜 Dockerfile Example

```
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
CMD ["python", "app.py"]
```

---

## 📦 requirements.txt

```
Flask
```

---

## 🚀 Build and Run with Docker

### 🔨 Step 1: Build the image

```bash
docker build -t yourusername/flask-demo-app .
```

### ▶️ Step 2: Run the container

```bash
docker run -p 8888:5000 yourusername/flask-demo-app
```

Then open `http://localhost:8888` in your browser.

---

## 🗂️ Push to Docker Hub

```bash
docker login
docker tag flask-demo-app yourusername/flask-demo-app
docker push yourusername/flask-demo-app
```

---

## 📊 Diagram: Docker in Action

```
+-------------------+
|   Your App Code   |
+-------------------+
          ↓
+-------------------+
|    Dockerfile     |
+-------------------+
          ↓
+-------------------+
|  Docker Image 🧊   |
+-------------------+
          ↓
+-------------------+
| Docker Container 📦|
+-------------------+
```

---

## 🧽 Clean Up

```bash
docker ps -a           # list all containers
docker rm <container>  # remove container
docker rmi <image>     # remove image
```

---

## ❤️ Author

Made by [Prensu Dangol](https://hub.docker.com/u/prensu)

---

## 📜 License

This project is licensed under the MIT License.
