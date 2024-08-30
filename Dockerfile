FROM python:3

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# CMD ["python", "sample.py"]
CMD ["uwsgi", "app.ini"]
