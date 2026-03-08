FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN pip install flask redis
EXPOSE 5002
CMD ["python", "count.py"]