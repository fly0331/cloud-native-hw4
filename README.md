# cloud-native-hw4

這是一個針對 TSMC 2025cloud 作業設計的 Docker 專案，包含兩個以上的 container image：
- 一個基於 NGINX 的靜態網頁伺服器
- 一個 hello-world 測試容器

所有映像皆已推送至 [Docker Hub - fly0331/2025cloud](https://hub.docker.com/repository/docker/fly0331/2025cloud)，供評分與驗證使用。

---

## 📦 Container Image 一覽

| Tag 名稱         | 說明                          |
|------------------|-------------------------------|
| `nginx`          | 使用 nginx 建立的靜態網頁容器 |
| `hello-world`    | Docker 官方 hello-world 映像  |

---

## 🔨 如何 Build Docker Image

### ✅ build `nginx` 映像

1. 建立一個 `index.html`，內容如下：

    ```html
    <!-- index.html -->
    <h1>Hello from 2025cloud - NGINX!</h1>
    ```

2. 建立 Dockerfile：

    ```Dockerfile
    # Dockerfile
    FROM nginx:alpine
    COPY index.html /usr/share/nginx/html/index.html
    ```

3. 在該資料夾內執行 build 指令：

    ```bash
    docker build -t fly0331/2025cloud:nginx .
    ```

---

### ✅ build `hello-world` 映像（重新 tag）

此映像使用官方 hello-world 容器，指令如下：

```bash
docker pull hello-world
docker tag hello-world fly0331/2025cloud:hello-world
```
---

## 🚀 如何 Run Docker Container

### ▶️ 執行 fly0331/2025cloud:nginx 映像

```bash
docker run -d -p 8080:80 fly0331/2025cloud:nginx
```

### ▶️ 執行 fly0331/2025cloud:hello-world 映像


```bash
docker run fly0331/2025cloud:hello-world
```


