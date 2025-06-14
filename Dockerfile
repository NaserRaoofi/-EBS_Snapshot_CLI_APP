# syntax=docker/dockerfile:1
FROM python:3.11-slim
WORKDIR /app
COPY dist/*.whl ./
RUN pip install --no-cache-dir ./*.whl
COPY . .
CMD ["python", "cli.py"]
