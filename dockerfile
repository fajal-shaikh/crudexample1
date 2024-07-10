FROM python:3.9-slim
ENV PYTHONUNBUFFERED 1
COPY . .
WORKDIR /app
RUN pip install Django
RUN pip install pymysql
COPY . /app/
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
