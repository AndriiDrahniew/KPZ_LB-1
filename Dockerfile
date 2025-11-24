FROM --platform=linux/amd64 python:3.9.18-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt .
COPY app.py .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
