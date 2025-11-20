FROM python:3.12
COPY . /app
WORKDIR /app
RUN pip install -r /app/requirements.txt
ENV APP_PORT=5000
EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["app.py"]
