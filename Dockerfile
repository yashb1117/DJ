FROM python:3.11-slim
WORKDIR /app
COPY . /app
EXPOSE 8080
CMD ["python3", "-m", "http.server", "8080"]
