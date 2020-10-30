FROM python:3.7

RUN mkdir /workspace
WORKDIR /workspace
RUN pip install --upgrade pip && \
    pip install Pillow && \
    pip install Django==3.1 && \
    pip install psycopg2 && \
    pip install python-shogi==1.0.10
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
EXPOSE 8000
