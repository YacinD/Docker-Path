# Flask Website Counter (Docker + Nginx)

## Overview

This project demonstrates a **containerised Flask application** running behind **Nginx** using **Docker Compose**.

The application tracks **how many times a page has been visited or refreshed**, using a simple Python counter. Nginx acts as a reverse proxy that forwards incoming HTTP requests to the Flask backend.

This setup demonstrates a small but realistic **web architecture using containers**.

---

## Architecture

Client → Nginx → Flask → `count.py`

| Component | Role                                        |
| --------- | ------------------------------------------- |
| Nginx     | Receives HTTP traffic and forwards requests |
| Flask     | Processes the request and serves the page   |
| count.py  | Handles the counter logic                   |

---

## Project Structure

```
project/
│
├── flask/
│   ├── app.py
│   └── count.py
│
├── nginx/
│   └── nginx.conf
│
├── docker-compose.yml
└── README.md
```

### File Explanation

| File               | Description                                      |
| ------------------ | ------------------------------------------------ |
| app.py             | Main Flask application with routes               |
| count.py           | Python script that tracks page visits            |
| nginx.conf         | Configuration for the Nginx reverse proxy        |
| docker-compose.yml | Defines and runs the multi-container environment |

---

## How It Works

When a user opens or refreshes the page:

1. The request first reaches **Nginx**
2. Nginx forwards the request to the **Flask container**
3. Flask calls **`count.py`**
4. The counter increases and returns the updated value

This demonstrates how a backend service can be **placed behind a reverse proxy inside a containerised environment**.

---

## Running the Project

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/your-repo.git
cd your-repo
```

### 2. Start the containers

```bash
docker-compose up --build
```

Docker Compose will build and start both the **Flask** and **Nginx** containers.

---

## Access the Application

Open your browser and visit:

```
http://localhost
```

Each time the page is refreshed, the **visit counter will increase**.

---

## Technologies Used

| Technology     | Purpose                       |
| -------------- | ----------------------------- |
| Python         | Backend programming language  |
| Flask          | Web framework                 |
| Nginx          | Reverse proxy                 |
| Docker         | Containerisation              |
| Docker Compose | Multi-container orchestration |

---

## Purpose of the Project

This project was built to practise:

* Building a **Flask web application**
* Using **Nginx as a reverse proxy**
* Running applications in **Docker containers**
* Managing services with **Docker Compose**

It demonstrates a simple but realistic **DevOps-style web deployment setup**.
