# 🚀 Express.js App with Docker

A simple **Node.js + Express** application, containerized using Docker. This project is great for learning the basics of building and running backend APIs in a development or production environment.

---

## 📦 Features

- Basic Express server setup
- Dockerized for easy deployment
- Live reload option for development (via volume mapping)
- Clean and simple project structure

---

## 📁 Project Structure

Express-App/
├── Dockerfile # Docker image definition
├── package.json # Node dependencies and metadata
├── app.js # Main Express server
└── README.md # Project documentation


---

## 🐳 Docker: Build & Run

### 🔨 1. Build the Docker Image

```bash
docker build -t express-app .
```
▶️ 2. Run the Container
```bash
docker run -p 3000:3000 express-app
```

Your app will be running at:
http://localhost:3000

🔁 BONUS: Volume Mapping (for development)
To see code changes immediately without rebuilding the image, you can run:
```bash
docker run -p 3000:3000 -v ${PWD}:/app -v /app/node_modules express-app
```

🧠 What this does:
-v ${PWD}:/app maps your current project folder to the container's app folder.

-v /app/node_modules keeps the container's node_modules isolated so you don't pollute your local machine.

📌 Benefit: You can edit files on your host, and the changes will reflect inside the container instantly!

🧪 Try It Out
Visit: http://localhost:3000
You should see a response like:

<img width="959" alt="image" src="https://github.com/user-attachments/assets/359d1b3d-3807-4d0c-bdce-583332c5ef55" />

🧼 Cleanup
To stop and remove the container:
```bash
docker ps  # find the container ID
docker stop <container_id>
docker rm <container_id>
```

To remove the image:

```bash
docker rmi express-app
```
📄 License
This project is licensed under the MIT License.

🙋‍♂️ Author
Shreya Khanduri Bhatt


