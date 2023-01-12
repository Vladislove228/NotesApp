

FROM python:3.12.0a3-slim-bullseye

WORKDIR /NotesApp

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
ENV FLASK_APP=main.py
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]