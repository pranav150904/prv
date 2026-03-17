FROM python:3.9-slim
WORKDIR /prv
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt
COPY . /app/
EXPOSE 5003
CMD ["python","app.py"]
